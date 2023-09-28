---
author: Kartik
publisher: 
published: 
tags:
  - educational-resource/pganalyze-webinar
  - computer-science/dbms/postgresql
  - study-note
cards-deck: Default::Computer Science
created: 2023-09-04 15:48
<<<<<<< HEAD
updated: 2023-09-28 14:16
=======
updated: 2023-09-22 09:56
>>>>>>> eb0cb116bf466b813753bf1c96d7b2d13d532edc
---

# [Seminar by Robert Haas (PostgreSQL core contributor)](https://www.youtube.com/watch?v=H38NT8cHGXo&pp=ygUqcm9iZXJ0IGhhYXMgbmV4dCBnZW5lcmF0aW9uIHBhcmFsbGVsIHF1ZXJ5) 
## + Contributions since the 2021 talk from [PostgreSQL Documentation on Parallel Plans](https://www.postgresql.org/docs/15/parallel-query.html)

## Table Scans

![[Pasted image 20230806034800.png]]

Parallelization really improves the performance of OLTP queries like `SELECT * FROM ...` as you can have multiple parallel workers that operate on partitions of the data doing sequential or index scans over the heap files which will be merged in the final result.

In Bitmap Heap Scans: 
1. the index scan will be performed by one process which builds the bitmap, 
2. then all other the other processes cooperate and jointly iterate over the bitmap -> visiting the necessary heap blocks containing the CTIDs.
This works great only if the index scan is **short** and the heap scan is **long** and **not** vice-versa. One positive is that any bitmap index access method is supported (not just B Tree); BRIN in particular.

## Table Joins
### Parallelization of NLJ (works well). 
![[Pasted image 20230806035940.png]]
Parallel sequential scans across the tables to be joined (LHS and RHS of the `ON` keyword) work on a partition of the data and compare those with each other. 

### Parallel Hash Joins

![[Pasted image 20230806040120.png]]

If we're hashing a small table we can get away with each worker building a separate copy. A subset of the other table in the join table (thus partitioned) is then probed row by row...
However for 1M+ rows in table each worker has to do repeated work to construct a copy of the hash table. Thus only one side (with the partitioned table) is parallelized, however the other side involves repeated work.

#### [Thomas Munro's work on parallelizing Hash Joins since '21](https://www.enterprisedb.com/postgres-tutorials/parallel-hash-joins-postgresql-explained)

In his example he explains this dilemma. e.g the `lineitem` table will be partitioned and sequential scans will be applied in parallel via 3 CPU cores ✅ however the `orders` table requires creation of copies of hash tables ❌.

Since PostgreSQL v10 improvements were made such that for a query like:

`select count(*)  
  from lineitem  
  join orders on l_orderkey = o_orderkey  
 where o_totalprice > 5.00;`

![[Pasted image 20230807012423.png]]

![[Pasted image 20230807013247.png]]

However since '21 we're able to get a full parallel hash join algorithm:

![[Pasted image 20230807013338.png]]
that generates the following query plan:

![[Pasted image 20230807013201.png]]

> [!NOTE] A note from Thomas Munro on the shared memory Hash Table
>   
Note the dotted line that appears between the processing of the inner plan and the outer plan. That represents a [barrier](https://en.wikipedia.org/wiki/Barrier_(computer_science)).  Since they are now sharing a single hash table, all processes have to agree that the hash table is complete before it's safe for anyone to begin probing it. Note also that I show the workers completing the scan at slightly different times (exaggerated for illustration): this is because participating processes work in chunks sometimes called the 'parallel grain', which in this case come from the 8KB disk blocks into which Parallel Seq Scan chops the scan. When the end of the scan is reached, each process runs out of pages and then waits at the barrier. The waiting time is bounded and typically very short because whenever any process runs out of pages every other processes can only be at most one page away from reaching the end too. (If the parallel grain is increased, say because PostgreSQL switches to larger sequential scan grain, or if something expensive is being done with tuples in between scanning and inserting into the hash table, or if the parallel grain is not block-based but instead Parallel Append running non-partial plans, then the expected wait time might increase.)

### Parallel Merge Joins

Merge joins suffers from the same issue plaguing Hash Joins from v10 i.e. each worker needs to build one side of the join in its entirety and then joining that against a subset of the other table. 

> [!NOTE] Summary note from Thomas Munro on parallelization benefits to PostgreSQL Joins
> PostgreSQL supports three join strategies, and they benefit from parallelism as follows:
>  - **Nested Loop Join** has no parallel-aware mode, but it doesn't matter: it's OK that the inner side of a Nested Loop Join must be non-partial if it's an Index Scan. This often covers the case of a foreign key join, since there must be an index on the referenced side. The scans of a well cached index are quite similar to the probes of a shared hash table.
>
> - **Merge Join** has no parallel-aware mode. That's *bad* if a sort is required because it'll be duplicated in every process. If the inner plan is pre-sorted it's still not ideal. A solution to these problems probably involves introducing some kind of execution-time partitioning.
> 
> - **Hash Join** previously suffered from the same problem as Merge Join, but that is *solved* by Parallel Hash. You can think of Hash Join as a kind of Nested Loop Join that builds its own index up front every time, which makes it good for joins against things you don't have an index for or joins against whole tables where sequential access beats random access.

## Aggregates

![[Pasted image 20230807020622.png]]
- If a single group is produced, it's called an `Aggregate`. 
- In a `HashAggregate`, all the data is thrown into a hash aggregate, transition state for each group is accumulated in each hash table entry/key
- In a `GroupAggregate` you sort by the grouping key and then all the values in a particular group are located next to each other after which they are aggregated. 

![[Pasted image 20230807021201.png]]

PostgreSQL uses a `Partial Aggregate` for either of the 3 aggregation methods. It reads from a `Partial Plan` i.e. each worker is running it's own separate **Partial Aggregate** building separate set of groups... all of which are then fed into the parent `Gather` node which performs a finalized aggregate step
	If more than one workers created a group for the same key value, then those have to be merged together in the final result.
This approach works well when the number of groups is small as not a lot of IPC is required. If the number of groups is large then you may have a large number of duplicate groups that have to be merged... It's still faster than serial aggregation, but the performance boost is diminished. 

![[Pasted image 20230807023937.png]]

When the `Aggregate` in **not** in the top of the plan, like in the above figure it causes issues such as <u>not</u> being able to parallelize the Hash Join as we use up the workers to get the `Gather` completed after which the leader has to perform the finalized aggregate. Thus the overall hash join can't be done in parallel. The other `Hash` node might be done in parallel but *that's* parallelizing the *<u>build</u>* of the data fed into the hash join and not the join operation itself. 

#### Better possible concept of parallel aggregate (NOT implemented yet in 2021)
![[Pasted image 20230807024546.png]]
Instead of separating the `Partial Aggregate` from the finalized aggregate, it would have been better to have a parallelized aggregate that involved the parallel workers interacting with each other. All workers put the rows subset that they work on into a shared hash table. 

#### [Amdahl's law](https://en.wikipedia.org/wiki/Amdahl%27s_law) : Maximum speed-up possible if you parallelize one part of an algorithm but not another

![[Pasted image 20230807025824.png]]

![[Pasted image 20230807030022.png]]

Costing is off for parallel operators. They may not get picked vs. sequential operations. e.g. HashAggregate seems to be preferred even when parallel plans would have been better.
The number of workers needed for each parallel operation needs to be worked on e.g not choosing an excessive high number of workers.


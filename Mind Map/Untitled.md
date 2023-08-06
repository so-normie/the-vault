---
title: "Webinar recording: How to reason about indexing your Postgres database"
created: 2023-08-06 12:08
authors: [Edmund Leibert III]
tags: [educational-resource/pganalyze-webinar, computer-science/dbms/postgresql, study-note]
cards-deck: Default::Computer Science
---

# pganalyze Webinar

---

## 🔙 Previous Link(s):

---

## #1 Webinar recording: How to reason about indexing your Postgres database

Are indexes always good? #card 
No, sometimes they can be bad.
^1691349915687

Does PostgreSQL chooses its own index, or which index to use? #card 
Yes, it does.
^1691349915696

What are the four ingredients for making a good index? #card 
1. Breaking Down Queries Into Scans
2. Turning Scans Into Index Elements
3. Generating Multi-Column Index Combinations
4. Modeling I/O Overhead
^1691349915702

What is process to finding “Good Enough” indexes? #card 
To be filled.
^1691349915706

What is pganalyze Index Advisor and what does it provide? #card 
To be filled.
^1691349915711

### The Good (and Bad) of Indexes

Indexes are a per-table caching data structures

Do all index types have the same structure and search algorithms? #card
No, they are all different and unique depending on the scenario.
^1691349915716

What is the good of indexes in PostgreSQL? #card-reverse 
- Postgres automatically updates Indexes for us
- Indexes can make it faster to find relevant rows of a table
- Sometimes indexes can return the data directly from the index (Index Only Scan)
^1691349915721

What is the bad of indexes in PostgreSQL? #card-reverse 
- Indexes need to be updated as the data in the table is updated
- Too many indexes, or overly complex indexes, will slow down your writes (and use disk space)
- Adding indexes can prevent **HOT** (**H**eap-**O**nly **T**uple) updates, making writes even more expensive
^1691349915727

What are the four ways to scan a table (and/or an index)? #card 
- **Sequential Scan:** Read table sequentially, until all requested results are found (no index being used).
- **Bitmap Index/Heap Scan:** Produce a bitmap of all matching table entries (using one or more indexes), and then read the table via the bitmap.
- **Index Scan:** Find the matching data directly in one index, and go to the table to find extra columns being requested, and check MVCC visibility.
- **Index Only Scan:** Get all data directly from the index (no data lookups from the table). In some cases use table to check MVCC visibility
^1691349915732

{1:**Sequential Scan:**} {2:Read table sequentially, until all requested results are found (no index being used).}
^1691349915736

{1:**Bitmap Index/Heap Scan:**} {2:Produce a bitmap of all matching table entries (using one or more indexes), and then read the table via the bitmap.}
^1691349915740

{1:**Index Scan:**} {2:Find the matching data directly in one index, and go to the table to find extra columns being requested, and check MVCC visibility.}
^1691349915754

{1:**Index Only Scan:**} {2:Get all data directly from the index (no data lookups from the table). In some cases use table to check MVCC visibility.}
^1691349915758

### Four Ingredients for  Making A Good Index

What are the four main ingredients to making a good index? #card 
1. Breaking Down Queries Into Scans
2. Turning Scans Into Index Elements
3. Generating Multi-Column Index Combinations
4. Modeling I/O Overhead




---

## 🔜 Next Link(s):

---

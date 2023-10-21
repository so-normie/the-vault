---
title: Chapter 1. A Little Background
created: 2023-08-10 19:59
authors:
  - Edmund Leibert III
tags:
  - 🔴-academics/📚-educational-resources/name/learning-sql-3rd-edition-2020
  - 🔴-academics/📚-educational-resources/discipline/computer-science/programming-language/sql
  - study-note
cards-deck: Default::Computer Science
updated: 2023-10-21T12:38
---

# 📕 Learning SQL, 3rd Edition (2020)

---

## 🔙 Previous Note(s):
- [[the-vault/🔴 Academics/📚 Educational Resources/Learning SQL, 3rd Edition (2020)/Preface]]

---

## Chapter 1. A Little Background

In this book, where should I skip ahead if I want to just start writing queries? #card 
> [!info]+ Note
> For those readers anxious to start writing queries, feel free to skip ahead to [Chapter 3](https://learning.oreilly.com/library/view/learning-sql-3rd/9781492057604/ch03.html#query_primer), but I recommend returning later to the first two chapters in order to better understand the history and utility of the SQL language.
^1691778115438

### **Introduction to Databases**

A {1:database} is {2:nothing more than a set of related information}.
^1691778115447

What were some of the first computer applications developed?
#card 
*database systems*
^1691778115453

What are *database systems*?
#card 
Computerized data storage and retrieval mechanisms
^1691778115458

#### **Nonrelational Database Systems**

What is a *hierarchical database system*?
#card 
A representation of data as one or more tree structures.
For example…
![[the-vault/assets/images/Pasted image 20230810203231.png|650]]
^1691778115465

Is the following database system, what view/representation are they using?
![[the-vault/assets/images/Pasted image 20230810203231.png|650]]
#card 
They are using a *hierarchical database system*.
^1691778115472

What is a *single-parent hierarchy* in the context of database systems? 
#card-reverse  
- Each node of a tree may have either zero *or* one parent
- Each node of a tree may have zero, one, *or* many children
^1691778115478

Can the following database system be considered a *single-parent hierarchy*? 
![[the-vault/assets/images/Pasted image 20230810203231.png|650]]
#card 
Yes, each node has at max 1 parent and has either zero, one, or many children.
^1691778115484

What is a *network database system*?
#card-reverse 
A database system in which it exposes sets of records and sets of links that define relationships between different records.
For example…
![[the-vault/assets/images/Pasted image 20230810211121.png|650]]
^1691778115490

For the following database, how would you find the transactions posted to Sue’s money market account?
![[the-vault/assets/images/Pasted image 20230810211121.png|650]]
#card 
1. 1. Find the customer record for Sue Smith.
2. Follow the link from Sue Smith’s customer record to her list of accounts.
3. Traverse the chain of accounts until you find the money market account.
4. Follow the link from the money market record to its list of transactions.
^1691778115497

One interesting feature of {1:network database systems} is its ability to act as a {2:*multiparent hierarchy*}.
^1691778115506

Are hierarchical and networks database systems alive and well today?
#card 
Yes, but generally in the mainframe world.
- For example, hierarchical database systems have enjoyed a rebirth in the directory services realm (e.g., Microsoft’s Active Directory and the open source Apache Directory Server)
^1691778115513

#### **The Relational Model**

What did Dr. E F. Codd of IBM’s research laboratory propose in his published paper “A Relational Model of Data for Large Shared Data Banks”? 
#card 
- In this paper, it was proposed that data be represented as sets of _tables_. 
- Rather than using pointers to navigate between related entities, redundant data is used to link records in different tables. 
- For example, [Figure 1-3](https://learning.oreilly.com/library/view/learning-sql-3rd/9781492057604/ch01.html#relational_view_of_account_data) shows how George’s and Sue’s account information would appear in this context.
  ![[the-vault/assets/images/Pasted image 20230811062531.png|600]]
^1691778115519

The number of columns that a table may contain differs from server to server, but it is generally {large enough not to be an issue (Microsoft SQL Server, for example, allows up to 1,024 columns per table)}.
^1691778115527

The number of rows that a table may contain is more a matter of {1:physical limits (i.e., how much disk drive space is available)} and {1:maintainability (i.e., how large a table can get before it becomes difficult to work with)} than of {2:database server limitations}.
^1691778115535

Each table in a relational database includes {information that uniquely identifies a row in that table (known as the _primary key_)}, along with additional information needed to describe the entity completely.
^1691778115543

What does every database server provide?
#card 
> [!note]+ Note
> Every database server provides a mechanism for generating unique sets of numbers to use as primary key values, so you won’t need to worry about keeping track of what numbers have been assigned.
^1691778115550

In the following example database system…
![[the-vault/assets/images/Pasted image 20230811063221.png|650]]
Why did we not have the *primary key* simply be a combination of the `fname` and the `lname` columns?
#card 
- There could be two or more people that have the same first and last name.
- Also, people could change their first or last name (e.g., person gets married and adopts their spouses last name).
	- Remember that primary key columns should never be allowed to change once a value has been assigned.
^1691778115559

What is a *compound key*?
#card-reverse 
- A <span class="spoiler">*compound key*</span> is a *primary key* consisting of one or more columns.
- For example… consider the case of using a combination of the `fname` and `lname` columns.
^1691778115566

What is a *natural key?*
#card 
> [!Note]+ Note
> In this example, choosing `fname`/`lname` as the primary key would be referred to as a _natural key_, whereas the choice of `cust_id` would be referred to as a _surrogate key_. The decision whether to employ natural or surrogate keys is up to the database designer, but in this particular case the choice is clear, since a person’s last name may change (such as when a person adopts a spouse’s last name), and primary key columns should never be allowed to change once a value has been assigned.
^1691778115574

What is a *surrogate key*?
#card 
> [!Note]+ Note
> In this example, choosing `fname`/`lname` as the primary key would be referred to as a _natural key_, whereas the choice of `cust_id` would be referred to as a _surrogate key_. The decision whether to employ natural or surrogate keys is up to the database designer, but in this particular case the choice is clear, since a person’s last name may change (such as when a person adopts a spouse’s last name), and primary key columns should never be allowed to change once a value has been assigned.
^1691778115583

Should I choose a *surrogate key* or a *natural key*?
#card 
The decision to which is up to the database designer, but traditionally it is preferred to choose a *surrogate key*, especially is the *natural key* can change (e.g., a person’s last name).
^1691778115592

Does the relational database model include redundant data? 
#card 
Yes, consider *foreign keys*.
^1691778115600

What are *foreign keys*?
#card-reverse 
- Values that connect entities to other entities.
- Serve the same purpose as the lines that connect the entities in the hierarchical and network versions of the account information.
^1691778115608

What are some rules that the relational model makes regarding what redundant data may be stored?
#card 
- It is not proper to include the same information (unless it is a *foreign key*/*unique identifier*) in multiple places in your database.
	- This is because, for example, if a customer where to change her name, you want to make sure her name is in only one place in the database, because if it is in two places, and you only update one place, your database will be unreliable.
- It is not proper for a single column to contain multiple pieces of information.
	- For example, as a `name` column that contains both a person’s first and last names.
	- For example, an `address` column that contains street, city, state, and zip code information.
^1691778115615

Is it proper to include the same information (unless it is a *foreign key*/*unique identifier*) in multiple places in your database? 
#card 
No! This can make your database unreliable.
^1691778115623

Is it proper for a single column to contain multiple pieces of information? 
#card 
No!
^1691780777433

What is *normalization*? 
#card-reverse 
The process of refining a database design to ensure that each independent piece of information is in only one place (Except for foreign keys)
^1691778115631

#### **Some Terminology**

What is an **Entity**?
#card-reverse 
Something of interest to the database user community. Examples include customers, parts, geographic locations, etc.
^1691780777449

What is a **Column**?
#card-reverse 
An individual piece of data stored in a table.
^1691780777455

What is a **Row**?
#card-reverse 
A set of columns that together completely describe an entity or some action on an entity. Also called a record.
^1691780777461

What is a **Table**?
#card-reverse 
A set of rows, held either in memory (nonpersistent) or on permanent storage (persistent).
^1691780777466

What is a **Result set**?
#card-reverse 
Another name for a nonpersistent table, generally the result of an SQL query.
^1691780777472

What is a **Primary key**?
#card-reverse 
One or more columns that can be used as a unique identifier for each row in a table.
^1691780777477

What is a **Foreign key**?
#card-reverse 
One or more columns that can be used together to identify a single row in another table.
^1691780777483

### **What Is SQL?**


What is a quick synopsis of the evolution of SQL?
#card 
❗Need to finish.
^1691780777489

What does ANSI stand for?
#card 
**A**merican **N**ational **S**tandards **I**nstitute 
^1691780777494

Whare are some new features that have been added to the SQL language?
#card 
- object-oriented functionality
- integration of related technologies, such as extensible markup language (XML) and JavaScript object notation
^1691780777502

What is the result of an SQL query?
#card 
A table (also called, in this context, a *result set*)
^1691780777508

How can a new permanent table be created in a relational database?
#card 
Simply store the result set of a query into the database.
^1691780777514

Can a query use permanent tables as an input?
#card 
Yes.
^1691780777519

Can a query use the result sets from other queries as inputs?
#card 
Yes.
^1691780777526

Is SQL an acronym for anything?
#card 
Technically no, but many people will insist it stands for “Structured Query Language”
^1691780777532

#### **SQL Statement Classes**

What are some of the several distinct parts that make up the SQL language?
#card-reverse 
- SQL schema statements
- SQL data statements
- SQL transaction statements
^1691780777537

What is the purpose of *SQL schema statements*?
#card-reverse 
Used to define the data structures stored in the database.
^1691780777543

What is the purpose of *SQL data statements*?
#card-reverse 
Used to manipulate the data structures previously defined using SQL schema statements.
^1691780777549

What is the purpose of *SQL transaction statements*?
#card-reverse 
Used to begin, end, and roll back transactions.
^1691780777555

What does the SQL schema statement `create table` do?
#card 
Creates a new table in your database
^1691780777562

What process can the SQL data statement `insert` be a part of?
#card 
Process of populating your new table with data
^1691780777567

What is an example of a SQL schema statement?
#card 
```sql
CREATE TABLE
```
^1691780777573

What does the following code do?
```sql
CREATE TABLE corporation
 (corp_id SMALLINT,
  name VARCHAR(30),
  CONSTRAINT pk_corporation PRIMARY KEY (corp_id)
 );
```
#card 
1. Creates a table called “corporation” with two columns…
	1. First column is called “corp_id” and is data type of `SMALLINT`
	2. Second column is called “name” of a string that can contain up to 30 chars
2. Sets the `corp_id` column to be the *primary key* of the table. 
^1691780777580

In the following code, what does the line `CONSTRAINT pk_corporation PRIMARY KEY (corp_id)` do?
```sql
CREATE TABLE corporation
 (corp_id SMALLINT,
  name VARCHAR(30),
  CONSTRAINT pk_corporation PRIMARY KEY (corp_id)
 );
```
#card 
1. `CONSTRAINT`: This keyword indicates that you're defining a constraint for the table.
2. `pk_corporation`: This is the name given to the constraint. Naming constraints is optional but can be useful if you ever need to refer to the constraint later (e.g., for modification or deletion). Here, the constraint is named `pk_corporation`.
3. `PRIMARY KEY`: This keyword specifies that the constraint being defined is a primary key constraint.
4. `(corp_id)`: This specifies which column(s) the primary key constraint applies to. In this case, the primary key constraint is being applied to the `corp_id` column.
Putting it all together, the constraint ensures that:
- The `corp_id` column cannot contain `NULL` values.
- The values in the `corp_id` column are unique across all rows in the `corporation` table.
In other words, the `corp_id` column will uniquely identify each row in the `corporation` table. If you try to insert or update a row with a `corp_id` value that already exists in another row, the database will raise an error due to this constraint.
^1691780777587

In the following code, what does the keyword `CONSTRAINT` ensure?
```sql
CREATE TABLE corporation
 (corp_id SMALLINT,
  name VARCHAR(30),
  CONSTRAINT pk_corporation PRIMARY KEY (corp_id)
 );
```
- The `corp_id` column cannot contain `NULL` values.
- The values in the `corp_id` column are unique across all rows in the `corporation` table.

In the table created from the following code, could I insert or update a row with a `corp_id` that already exists in another row or is a `NULL` value?
```sql
CREATE TABLE corporation
 (corp_id SMALLINT,
  name VARCHAR(30),
  CONSTRAINT pk_corporation PRIMARY KEY (corp_id)
 );
```
#card 
No, the database will raise an error due to this constraint.
^1691780777595

Is naming constraints required?
#card 
No, it is optional but useful if you ever need to refer to the constraint later (e.g., for modification or deletion)
^1691780777602

In the following *SQL schema*, what What keyword ensures that the `corp_id` column cannot contain `NULL` values and must be unique across all rows? Is it the PRIMARY KEY keyword or the CONSTRAINT keyword?
```sql
CREATE TABLE corporation
 (corp_id SMALLINT,
  name VARCHAR(30),
  CONSTRAINT pk_corporation PRIMARY KEY (corp_id)
 );
```
#card 
- The keyword that ensures that the `corp_id` column cannot contain `NULL` values and must be unique across all rows is the `PRIMARY KEY` keyword.
- The `CONSTRAINT` keyword is used to define and optionally name a table constraint. In the provided SQL, `CONSTRAINT` is used to name the primary key constraint as `pk_corporation`, but the actual behavior (ensuring non-null and uniqueness) comes from the `PRIMARY KEY` keyword that follows it.
^1691780777609

What SQL code creates a table? 
#card 
❗To be filled.
^1691780777619

What does the following SQL code do?
```sql
INSERT INTO corporation (corp_id, name)
VALUES (27, 'Acme Paper Corporation');
```
#card 
This statement adds a row to the `corporation` table with a value of `27` for the `corp_id` column and a value of `Acme Paper Corporation` for the `name` column.
^1691781154125

What SQL statement inserts into the table `corporation` a row with a value of `27` for the `corp_id` column and a value of `Acme Paper Corporation` for the `name` column.
#card 
```sql
INSERT INTO corporation (corp_id, name)
VALUES (27, 'Acme Paper Corporation');
```
^1691781154131


What is the *result set* of the following SQL `SELECT` statement?
```sql
SELECT name
FROM corporation
WHERE corp_id = 27;
```
#card 
The following result would be…
```bash
mysql< `SELECT name`
    -> `FROM corporation`
    -> `WHERE corp_id = 27;`
+------------------------+
| name                   |
+------------------------+
| Acme Paper Corporation |
+------------------------+
```
^1691781154138


{2:All database elements created via SQL schema statements are stored in a special set of tables} called the {1:_data dictionary_}. This “data about the database” is known collectively as {1:_metadata_}.
^1691781154144

If you are asked to write a report showing the new accounts created last month, how could you go about this?
- Either hardcode the names of the columns in the `account` table that were known to you when you wrote the report.
- Or, query the data dictionary to determine the current set of columns and dynamically generate the report each time it is executed.

In general, {1:SQL schema statements} do {2:not require much discussion apart from their syntax}, whereas {1:SQL data statements}, while {2:few in number, offer numerous opportunities for detailed study}.
^1691781459768

#### **SQL: A Nonprocedural Language**

What characteristics define a *procedural language*?
#card 
> [!note] Note
> A procedural language defines both the desired results and the mechanism, or process, by which the results are generated. Nonprocedural languages also define the desired results, but the process by which the results are generated is left to an external agent.
^1691781865179


What characteristics define a *nonprocedural language*?
#card 
> [!note] Note
> A procedural language defines both the desired results and the mechanism, or process, by which the results are generated. Nonprocedural languages also define the desired results, but the process by which the results are generated is left to an external agent.
^1691781865186

In SQL, do you define the necessary inputs, outputs, and the manner in which a statement is executed?
#card 
No, the manner in which a statement is executed is left to a component of your database engine known as the *optimizer*.
^1691781865192

Can you influence database engines?
#card 
- Most database engines will allow you to influence the optimizer’s decisions by specifying _optimizer hints_, such as suggesting that a particular index be used.
- Most SQL users, however, will never get to this level of sophistication and will leave such tweaking to their database administrator or performance expert.
^1691781865198

With SQL, you will {not be able to write complete applications}.
^1691781865203


If you only need to execute SQL commands interactively, {every database vendor provides at least a simple command-line tool for submitting SQL commands to the database engine and inspecting the results}.
^1691781865209

#### **SQL Examples**

What does the following SQL statement do?
```sql
SELECT t.txn_id, t.txn_type_cd, t.txn_date, t.amount
FROM individual i
  INNER JOIN account a ON i.cust_id = a.cust_id
  INNER JOIN product p ON p.product_cd = a.product_cd
  INNER JOIN transaction t ON t.account_id = a.account_id
WHERE i.fname = 'George' AND i.lname = 'Blake'
  AND p.name = 'checking account';

+--------+-------------+---------------------+--------+
| txn_id | txn_type_cd | txn_date            | amount |
+--------+-------------+---------------------+--------+
|     11 | DBT         | 2008-01-05 00:00:00 | 100.00 |
+--------+-------------+---------------------+--------+
1 row in set (0.00 sec)
```
#card 
- Without going into too much detail at this point, this query identifies the row in the `individual` table for George Blake and the row in the `product` table for the “checking” product.
- Finds the row in the `account` table for this individual/product combination, and returns four columns from the `transaction` table for all transactions posted to this account.
^1691787160560

In the following code…
```sql
SELECT t.txn_id, t.txn_type_cd, t.txn_date, t.amount
FROM individual i
  INNER JOIN account a ON i.cust_id = a.cust_id
  INNER JOIN product p ON p.product_cd = a.product_cd
  INNER JOIN transaction t ON t.account_id = a.account_id
WHERE i.fname = 'George' AND i.lname = 'Blake'
  AND p.name = 'checking account';
```
Is the alias `t` for the `transaction` table created in the line `INNER JOIN transcation t`? How is this valid?
#card 
Yes, you're correct. The alias `t` for the `transaction` table is created in the line:
```sql
INNER JOIN transaction t ON t.account_id = a.account_id
```
- When the `transaction` table is being joined, it is given the alias `t`. The alias is introduced right there in the join clause, and from that point forward in the query, you can use `t` as a shorthand reference to the `transaction` table.
- So, by the time `t.txn_id` appears in the `SELECT` portion of the query, the alias `t` is already established as referring to the `transaction` table.
^1691787160577

In the following code…
```sql
SELECT t.txn_id, t.txn_type_cd, t.txn_date, t.amount
FROM individual i
  INNER JOIN account a ON i.cust_id = a.cust_id
  INNER JOIN product p ON p.product_cd = a.product_cd
  INNER JOIN transaction t ON t.account_id = a.account_id
WHERE i.fname = 'George' AND i.lname = 'Blake'
  AND p.name = 'checking account';
```
Explain line by line what is going on.
#card 
```sql
SELECT t.txn_id, t.txn_type_cd, t.txn_date, t.amount
```
- This line specifies the columns that you want to retrieve from the database. The columns belong to the `transaction` table (aliased as `t`). You're selecting the `txn_id`, `txn_type_cd`, `txn_date`, and `amount` columns.
```sql
FROM individual i
```
- This line specifies the base table for the query, which is the `individual` table. An alias `i` is given to this table for shorthand reference in the subsequent parts of the query.
```sql
INNER JOIN account a ON i.cust_id = a.cust_id
```
- Here, the `account` table is being joined to the previously mentioned `individual` table. The join is based on a condition where the `cust_id` column of the `individual` table (aliased as `i`) matches the `cust_id` column of the `account` table. An alias `a` is given to the `account` table.
```sql
INNER JOIN product p ON p.product_cd = a.product_cd
```
- This line is joining the `product` table to the already-joined `individual` and `account` tables. The join condition is based on the `product_cd` column. The `product` table gets the alias `p`.
```sql
INNER JOIN transaction t ON t.account_id = a.account_id
```
- This line is joining the `transaction` table (given the alias `t`) based on the `account_id` column with the `account` table (aliased as `a`). So, this is linking transactions to the specific accounts they belong to.
```sql
WHERE i.fname = 'George' AND i.lname = 'Blake'
```
- This line is a filter condition that narrows down the result set. Only rows where the individual has a first name (`fname`) of 'George' and a last name (`lname`) of 'Blake' will be included.
```sql
AND p.name = 'checking account';
```
- This is an additional filter condition. It ensures that only rows related to products with the name 'checking account' are included in the result set.
In summary… The query retrieves transactions (`txn_id`, `txn_type_cd`, `txn_date`, `amount`) for an individual named George Blake who has a checking account. It achieves this by joining multiple related tables (`individual`, `account`, `product`, and `transaction`) based on their respective keys and filtering based on the given conditions.
^1691787160583

In the following code…
```sql
SELECT t.txn_id, t.txn_type_cd, t.txn_date, t.amount
FROM individual i
  INNER JOIN account a ON i.cust_id = a.cust_id
  INNER JOIN product p ON p.product_cd = a.product_cd
  INNER JOIN transaction t ON t.account_id = a.account_id
WHERE i.fname = 'George' AND i.lname = 'Blake'
  AND p.name = 'checking account';
```
Explain line by line the resulting set at that time.
#card 
```sql
FROM individual i
```
- **Resulting Set:** At this stage, you have the entire `individual` table, which contains all individuals. Every row from the `individual` table is available. The table is referred to by the alias `i`.
```sql
INNER JOIN account a ON i.cust_id = a.cust_id
```
- **Resulting Set:** Now, you have a combined set of rows from both the `individual` table and the `account` table. The joining condition matches customers from the `individual` table with their respective accounts based on the `cust_id`. If an individual doesn't have an account or an account doesn't have a corresponding individual, those rows won't appear in the resulting set.
```sql
INNER JOIN product p ON p.product_cd = a.product_cd
```
- **Resulting Set:** You now have a set of rows that represent the combination of individuals, their accounts, and the products associated with those accounts. The join is based on the product code (`product_cd`). Any accounts without matching products in the `product` table won't be included in this resulting set, and likewise, any products that don't match with accounts won't be included.
```sql
INNER JOIN transaction t ON t.account_id = a.account_id
```
- **Resulting Set:** The current set now represents a combination of individuals, their accounts, the products of those accounts, and the transactions associated with those accounts. The joining is based on `account_id`. This means you'll only see transactions that are associated with accounts from the previous resulting set.
```sql
WHERE i.fname = 'George' AND i.lname = 'Blake'
```
- **Resulting Set:** The set is now filtered to only include rows where the individual's first name (`fname`) is 'George' and last name (`lname`) is 'Blake'. This significantly narrows down the dataset to only include transactions, accounts, and products related to George Blake.
```sql
AND p.name = 'checking account';
```
- **Resulting Set:** Finally, the set is further refined to include only those rows where the product name is 'checking account'. This means you'll get only the transactions of George Blake that are associated with checking accounts.
When you reach the `SELECT` statement at the top:
```sql
SELECT t.txn_id, t.txn_type_cd, t.txn_date, t.amount
```
- **Resulting Set:** This line determines what the output will look like. Instead of all the columns from the joined tables, you'll only see the transaction ID (`txn_id`), transaction type code (`txn_type_cd`), transaction date (`txn_date`), and transaction amount (`amount`) of George Blake's checking account transactions.
^1691787551865

In most line by line breakdowns, why do we start (conceptually) from the `FROM` statement? 
#card 
- When reading and understanding SQL, it's generally best to start with the `FROM` clause because it sets the foundation of the query by defining the main table(s) you're working with. From there, the `JOIN` clauses extend the data sources, and the `WHERE` clauses filter the results. Finally, the `SELECT` clause specifies which columns to display in the final output.
- However, when the database engine actually executes the query, the logical processing order (not necessarily the physical execution order) is a bit different. The typical logical order is:
	1. **FROM**: Specifies the primary table.
	2. **JOIN**: Adds additional tables.
	3. **WHERE**: Filters rows.
	4. **GROUP BY**: Aggregates data.
	5. **HAVING**: Filters on aggregated data.
	6. **SELECT**: Specifies columns to display.
	7. **ORDER BY**: Sorts the results.
	8. **LIMIT**: Limits the result set.
- That said, the physical order in which a database processes these steps can vary based on the database's optimizer, which will try to execute the query in the most efficient way possible.
- In terms of understanding and writing SQL, starting with the `FROM` clause and then adding `JOIN`s, followed by the `WHERE` conditions, is a natural way to think about constructing the dataset. After you've constructed the basic dataset, you can then decide which columns to display (`SELECT`), how to aggregate (`GROUP BY`), how to sort (`ORDER BY`), etc. This approach helps in conceptualizing the "building blocks" of your final dataset.
^1691787551875

Typically, in SQL breakdowns, what is logical order?
#card 
The typical logical order is:
1. **FROM**: Specifies the primary table.
2. **JOIN**: Adds additional tables.
3. **WHERE**: Filters rows.
4. **GROUP BY**: Aggregates data.
5. **HAVING**: Filters on aggregated data.
6. **SELECT**: Specifies columns to display.
7. **ORDER BY**: Sorts the results.
8. **LIMIT**: Limits the result set.
^1691787551882

To clarify, when doing an `INNER JOIN`, does the _resulting set_ drop/remove rows that don’t match?
#card 
- Yes, you're correct. An `INNER JOIN` returns only the rows where there is a match in both the left (or first) and the right (or second) tables based on the specified join condition. 
- Rows in the left table that do not have matching rows in the right table (and vice versa) will not appear in the resulting set. They are effectively "dropped" or "excluded" from the result.
**For example:**
Consider two tables, `A` and `B`.
Table `A`:
```
ID | Name
---------
1  | Alex
2  | Brian
3  | Charlie
```
Table `B`:
```
ID | Score
---------
1  | 90
3  | 85
4  | 88
```
If you execute an `INNER JOIN` of these two tables based on `ID`:
```sql
SELECT A.ID, A.Name, B.Score
FROM A
INNER JOIN B ON A.ID = B.ID;
```
You would get:
```
ID | Name    | Score
---------------------
1  | Alex    | 90
3  | Charlie | 85
```
Notice how the row with Name `Brian` from table `A` and the row with ID `4` from table `B` are excluded because they don't have matching rows in the opposite table based on the `ID`.
^1691787551890

Consider the following code…
```sql
SELECT t.txn_id, t.txn_type_cd, t.txn_date, t.amount
FROM individual i
  INNER JOIN account a ON i.cust_id = a.cust_id
  INNER JOIN product p ON p.product_cd = a.product_cd
  INNER JOIN transaction t ON t.account_id = a.account_id
WHERE i.fname = 'George' AND i.lname = 'Blake'
  AND p.name = 'checking account';
```
Lets say that we actually knew that George Blake’s customer ID is 8 and that checking accounts are designated by the code `'CHK'`, how could we make a more efficient and concise query?
#card 
```sql
SELECT t.txn_id, t.txn_type_cd, t.txn_date, t.amount
FROM account a
  INNER JOIN transaction t ON t.account_id = a.account_id
WHERE a.cust_id = 8 AND a.product_cd = 'CHK';
```
^1691787745002

The previous queries contain three different {1:_clauses_}: {2:`SELECT`}, {2:`FROM`}, and {2:`WHERE`}.
^1691787745009

For the following clauses…
- `SELECT`
- `FROM`
- `WHERE`
What is the role of each of these?
#card 
```sql
SELECT /* one or more things */ ...
FROM /* one or more places */ ...
WHERE /* one or more conditions apply */ ...
```
^1691788741696

What is one way to create comments in SQL?
#card 
> [!note]+ NOTE
> Most SQL implementations treat any text between the `/*` and `*/` tags as comments.
^1691788741707

When constructing your query, generally what are your tasks to do so?
#card 
1. First task is generally to determine which table or tables will be needed and then add them to your `from` clause. 
2. Next, you will need to add conditions to your `where` clause to filter out the data from these tables that you aren’t interested in.
3. Finally, you will decide which columns from the different tables need to be retrieved and add them to your `select` clause.
^1691788741713

What does the following code do?
```sql
SELECT cust_id, fname
FROM individual
WHERE lname = 'Smith';
```
#card 
This query searches the `individual` table for all rows whose `lname` column matches the string `'Smith'` and returns the `cust_id` and `fname` columns from those rows.
^1691788741722

What does the following code do?
```sql
INSERT INTO product (product_cd, name)
VALUES ('CD', 'Certificate of Depysit')
```
#card 
Insert a new row into the `product` table where the values of the row are `'CD'` and `'Certificate of Depysit'` for the columns `product_cd` and `name`.
^1691788741728

How can you fix a misspelling in a table? For example, how could I fix the mistake after running this…
```sql
INSERT INTO product (product_cd, name)
VALUES ('CD', 'Certificate of Depysit')
```
#card 
You can clean that up with an `update` statement:
```sql
UPDATE product
SET name = 'Certificate of Deposit'
WHERE product_cd = 'CD';
```
- Notice that the `update` statement also contains a `where` clause, just like the `select` statement. 
	- This is because an `update` statement must identify the rows to be modified; in this case, you are specifying that only those rows whose `product_cd` column matches the string `'CD'` should be modified. 
	- Since the `product_cd` column is the primary key for the `product` table, you should expect your `update` statement to modify exactly one row (or zero, if the value doesn’t exist in the table).
^1691788741734

Whenever you execute an SQL data statement, you will receive what type of feedback from the database engine?
#card
- You will receive feedback regarding how many rows were affected by your statement. If you are using an interactive tool such as the `mysql` command-line tool mentioned earlier, then you will receive feedback concerning how many rows were either:
	- Returned by your `select` statement
	- Created by your `insert` statement
	- Modified by your `update` statement
	- Removed by your `delete` statement
- In general, it’s a good idea to check this info to make sure your statement didn’t do something unexpected (like when you forget to put a `where` clause on your `delete` statement and delete every row in the table!).
^1691788741740

### **What Is MySQL?**

Most, if not all, databases do a pretty good job of {complying} with the latest ANSI SQL standard.
^1691788741746

As of 2023, what are two very popular database systems?
#card 
- MySQL
- PostgreSQL
^1691794483761

Is this book about MySQL’s SQL implementation?
#card 
_This is not a book about MySQL’s SQL implementation._
Rather, this book is designed to teach you how to craft SQL statements that will run on MySQL with no modifications, and will run on recent releases of Oracle Database, DB2, and SQL Server with few or no modifications.
^1691794483780

Since organizations frequently store data using multiple technologies, there is a need to unplug SQL from a particular database server and provide a service that can span multiple databases. For example, a report may need to bring together data stored in Oracle, Hadoop, JSON files, CSV files, and Unix log files. A new generation of tools have been built to meet this type of challenge, and one of the most promising is {Apache Drill, which is an open source query engine that allows users to write queries that can access data stored in most any database or filesystem}.
^1691796230961

#### **What’s in Store**



---

## 🔜 Next Note(s):
- [[the-vault/🔴 Academics/📚 Educational Resources/Learning SQL, 3rd Edition (2020)/Chapter 2. Creating and Populating a Database]]

---

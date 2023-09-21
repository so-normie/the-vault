---
title: 🗒️ SQL
authors:
  - Edmund Leibert III
created: 2023-09-03 08:46
updated: 2023-09-19 19:39
tags:
  - 🔴-academics/📚-educational-resources/name/🗒️-sql
  - 🔴-academics/📚-educational-resources/source-format/miscellaneous
  - 🔴-academics/📚-educational-resources/discipline/computer-science/programming-language/sql
  - 🔴-academics/📚-educational-resources/name/🗒️-sql/🔖-bookmark/🗒️-sql
  - study-note
cards-deck: 🔴 Academics::📚 Educational Resources::🗒️ SQL
---

#  🗒️ SQL

---

## 🕸️ All Mention(s): 

---

## 🔙 Previous Note(s):

---

## 🗒️ SQL

﹇<br>
What is `INNER JOIN` in SQL Server?

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

`JOIN` (or explicitly `INNER JOIN`) returns rows that have matching values in both tables.

```sql
SELECT city.name, country. name
FROM City
INNER JOIN country
ON city.country_id
= country.id;
```

![[assets/images/Pasted image 20230815100228.png|500]]

⌂
<br>﹈<br>^1695177559930





﹇<br>
What type of join is being done for the following?

![[assets/images/Pasted image 20230815100228.png|500]]

#card 

`INNER JOIN`

⌂
<br>﹈<br>^1695177559935




﹇<br>
What is `LEFT (OUTER) JOIN` in SQL Server?

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server

`LEFT JOIN` (or, in SQL Server, can be explicitly written as `LEFT OUTER JOIN`) returns all rows from the left table with corresponding rows from the right table. If there's no matching row, `NULL`s are returned as values from the second 
table.

```sql
SELECT city. name, country. name
FROM city
LEFT JOIN country
ON city.country_id = country.id;
```

![[assets/images/Pasted image 20230815100423.png|500]]

⌂
<br>﹈<br>^1695177559940




﹇<br>
What type of join is being done for the following?

![[assets/images/Pasted image 20230815100423.png|500]]

#card 

`LEFT JOIN`

⌂
<br>﹈<br>^1695177559944




﹇<br>
What is `RIGHT (OUTER) JOIN` in SQL Server?

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server

`RIGHT JOIN` (or, in SQL Server, can be written explicitly  written as `RIGHT OUTER JOIN`) returns all rows from the right table with corresponding rows from the left table. If there's no matching row, `NULL`s are returned as values from the left table.

```sql
SELECT city.name, country.name
FROM city
RIGHT JOIN country
	ON city.country_id = country.id
```

![[assets/images/Pasted image 20230815101015.png|500]]

⌂
<br>﹈<br>



﹇<br>
What type of join is being done for the following?

![[assets/images/Pasted image 20230815101015.png|500]]

#card 

`RIGHT JOIN`

⌂
<br>﹈<br>^1695177559953




﹇<br>
What is `FULL JOIN` in SQL Server?

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server

`FULL JOIN` (or explicitly `FULL OUTER JOIN`) returns all rows from both tables — if there's no matching row in the second
table, `NULL`s are returned.

```sql
FROM city
FULL OUTER JOIN country
	ON city.country_id = country.id;
```

![[assets/images/Pasted image 20230815101746.png|500]]

⌂
<br>﹈<br>^1695177559957




﹇<br>
What type of join is being done for the following?

![[assets/images/Pasted image 20230815101746.png|500]]

#card 

`FULL JOIN`

⌂
<br>﹈<br>^1695177559961




﹇<br>
What is `CROSS JOIN` in SQL Server?

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server

`CROSS JOIN` returns all possible combinations of rows from both tables. There are two syntaxes available.

```sql
/* First way */
SELECT city.name, country.name
FROM city
CROSS JOIN country;
/* Second way */
SELECT city.name, country.name
FROM city, country;
```

![[assets/images/Pasted image 20230815102057.png|500]]

⌂
<br>﹈<br>^1695177559964




﹇<br>
What type of join is being done for the following?

![[assets/images/Pasted image 20230815102057.png|500]]

#card 

`CROSS JOIN`

⌂
<br>﹈<br>^1695177559967





﹇<br>
What is `NATURAL JOIN` in SQL Server?

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

`NATURAL JOIN` will join tables by all columns with the same name.

```sql
SELECT city.name, country.name
FROM city
NATURAL JOIN country
```

![[assets/images/Pasted image 20230815102520.png|500]]

⌂
<br>﹈<br>^1695177559971




﹇<br>
What type of join is being done for the following?

![[assets/images/Pasted image 20230815102520.png|500]]

#card 

`NATURAL JOIN`

⌂
<br>﹈<br>^1695177559974




﹇<br>
Is `NATURAL JOIN` used often?

#card 

No, it is rarely used in practice and some database systems don’t even support it. (e.g., SQL Server)

⌂
<br>﹈<br>^1695177559978





﹇<br>
Does SQL Server support `NATURAL JOIN`?

#card 

No, it does **not** support `NATURAL JOIN`.

⌂
<br>﹈<br>^1695177559981




﹇<br>
Is the following code valid?

```sql
/* Write your T-SQL query statement below */
SELECT firstName, lastName, city, state
FROM Person p
LEFT OUTER JOIN Address a
ON p.personId = p.personId
```

#card 

While the following code is valid, and will compile, it is **not** logically correct.
- There seems to be a mistake in the join condition: `ON p.personId = p.personId`. This condition will always evaluate to true, and will result in a cross join between the two tables. To fix this, you should change the join condition to `ON p.personId = a.personId`, so that it correctly matches rows from the two tables based on their `personId` values.

⌂
<br>﹈<br>^1695177559985




﹇<br>
When having a table `LEFT JOIN` with itself, what should you **always** do? (Think in the context of `AS`)

#card 

Should _always_ make sure to have the table have _separate_ aliases

⌂
<br>﹈<br>^1695177559988




﹇<br>
Is the _resulting set_ only created once the `SELECT` statement is finally called?

#card 

Yes, that’s correct! The resulting set of a query is created when the `SELECT` statement is executed. 
- The `SELECT` statement specifies the columns that should be returned in the result set, and it can also include expressions, functions, and other operations that are applied to the data before it is returned. 
- The `FROM` clause, on the other hand, specifies the tables or views from which data should be retrieved, and it can include joins, subqueries, and other operations that combine data from multiple sources. The `WHERE` clause is used to filter the rows that are returned in the result set based on one or more conditions.

In summary, the `SELECT` statement is used to define the structure and content of the resulting set, while the `FROM` and `WHERE` clauses are used to specify where the data should come from and how it should be filtered. Once all of these clauses have been processed, the resulting set is created and returned to the user.

⌂
<br>﹈<br>^1695177559992



﹇<br>
Is the following code valid?
```sql
SELECT e1.name AS Employee 
FROM
( 
FROM Employee e1 
LEFT OUTER JOIN Employee e2 
ON e1.id = e2.id 
WHERE e1.salary > e2.salary 
)
```

#card 

There are a few issues with the code you provided. Here is an explanation of the issues and how to fix them:

1. The subquery in the `FROM` clause is not correctly written. The `FROM` keyword should not be repeated inside the subquery. Instead, you should remove the inner `FROM` keyword and start the subquery directly with the `Employee` table.
2. The join condition in the `ON` clause is incorrect. You are joining on `e1.id = e2.id`, which will result in a self join where each row is joined with itself. This is not what you want to achieve if you are trying to find employees who earn more than their managers. Instead, you should join on `e1.managerId = e2.id`, so that you can compare the salary of each employee with the salary of their manager.
3. The `WHERE` clause should not be inside the subquery. Instead, it should be placed after the subquery, so that it can filter the rows returned by the subquery.

Here is an example of how you can write a correct query to solve this problem:
```sql
SELECT e1.name AS Employee
FROM Employee e1
LEFT OUTER JOIN Employee e2
ON e1.managerId = e2.id
WHERE e1.salary > e2.salary;
```

This query performs a `LEFT OUTER JOIN` between the `Employee` table (aliased as `e1`) and itself (aliased as `e2`) on the condition that the `managerId` column in `e1` matches the `id` column in `e2`. This allows you to compare the salary of each employee with the salary of their manager. Finally, it selects only the rows where the employee’s salary is greater than their manager’s salary, and returns the names of those employees.

⌂
<br>﹈<br>^1695177559995




﹇<br>
If I was to put parentheses around the resulting set in the code , where should I put them?

#card 

If you want to put parentheses around the resulting set of a query in SQL, you can do so by enclosing the entire `SELECT` statement in parentheses and giving it an alias. Here’s an example:

```sql
SELECT *
FROM
(
  SELECT e1.name AS Employee
  FROM Employee e1
  LEFT OUTER JOIN Employee e2
  ON e1.managerId = e2.id
  WHERE e1.salary > e2.salary
) AS ResultingSet;
```

In this example, the entire `SELECT` statement that finds employees who earn more than their managers is enclosed in parentheses and given the alias `ResultingSet`. This allows you to treat the resulting set as a table and perform further operations on it, such as selecting specific columns or applying additional filters.

⌂
<br>﹈<br>^1695177559998




﹇<br>
How can I change the name of the column `e1.name`, of my _resulting set_, to be “Employee” instead?
```sql
SELECT e1.name
FROM Employee e1 
LEFT OUTER JOIN Employee e2
ON e1.managerId = e2.id
WHERE e1.salary > e2.salary
```

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

Like so…
```sql
SELECT e1.name AS Employee
FROM Employee e1 
LEFT OUTER JOIN Employee e2
ON e1.managerId = e2.id
WHERE e1.salary > e2.salary
```

⌂
<br>﹈<br>^1695177560002





﹇<br>
Lets say I have a table of the following schema…

```
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+
```

How can I return all emails that are present in the `email` more than once?

#card 

1. First use `GROUP BY` to group all the emails together
2. Then use `HAVING` to determine which groups are greater than 1

⌂
<br>﹈<br>^1695177560006




﹇<br>
Is the following code valid?

```sql
/* Write your T-SQL query statement below */
SELECT p.email as Email
FROM Person p
GROUP BY p.email
HAVING (*) > 1
```

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

No, the above code will **not** compile
- You have an incorrect syntax near '*'
- If you wish to count the number of rows in each of _all_ the groups that were made using the `GROUP BY` clause, you must do it by using the `COUNT(*)` function

⌂
<br>﹈<br>^1695177560010




﹇<br>
Is `GROUP BY` a clause or function?

#card 

`GROUP BY` is a clause

⌂
<br>﹈<br>^1695177560014




﹇<br>
Is `COUNT(*)` a clause or a function?

#card 

`COUNT(*)` is a function

⌂
<br>﹈<br>^1695177560018




﹇<br>
When using the `GROUP BY` clause, can you use `WHERE` instead of `HAVING`?

#card 

No, you cannot use the `WHERE` clause instead of the `HAVING` clause when using the `GROUP BY` clause in a query. The `WHERE` and `HAVING` clauses serve different purposes and are used at different stages of query processing.

The `WHERE` clause is used to filter rows before they are grouped and aggregated. It is evaluated before the `GROUP BY` clause and can only reference columns that are not part of an aggregate function. For example, you can use the `WHERE` clause to filter rows based on a specific condition, such as `WHERE salary > 50000`.

The `HAVING` clause, on the other hand, is used to filter groups after they have been created by the `GROUP BY` clause. It is evaluated after the `GROUP BY` clause and can reference columns that are part of an aggregate function. For example, you can use the `HAVING` clause to filter groups based on a specific condition, such as `HAVING COUNT(*) > 1`.

In summary, you cannot use the `WHERE` clause instead of the `HAVING` clause when using the `GROUP BY` clause in a query. The `WHERE` clause is used to filter rows before grouping, while the `HAVING` clause is used to filter groups after grouping.

⌂
<br>﹈<br>^1695177560023





The {1:`WHERE`} clause is used to filter rows before grouping, while the {1:`HAVING`} clause is used to filter groups after grouping.
^1695177560027




﹇<br>
Is the following code valid?

```sql
/* Write your T-SQL query statement below */
SELECT name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.id = NULL
```

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

There is a small issue with the code you provided. The `WHERE` clause is checking if the `id` column from the `Orders` table is `NULL`, but it is using the equality operator (`=`) instead of the `IS` keyword. 

In SQL, you cannot use the equality operator to check for `NULL` values. Instead, you should use the `IS` keyword, like this: `WHERE o.id IS NULL`.

Here is the corrected version of the code:

```sql
SELECT name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.id IS NULL;
```

- This query performs a `LEFT JOIN` between the `Customers` table (aliased as `c`) and the `Orders` table (aliased as `o`) on the condition that the values in the `id` column of `Customers` match the values in the `customerId` column of `Orders`. 
	- The `LEFT JOIN` returns all rows from the `Customers` table, along with any matching rows from the `Orders` table. 
	- If there is no matching row in the `Orders` table for a given row in the `Customers` table, the columns from the `Orders` table will be filled with `NULL` values in the result set. 
- We then use the `WHERE` clause to filter the rows where the value of the `id` column from the `Orders` table is `NULL`, which means that there was no matching row in the `Orders` table.
- Finally, we select the `name` column from the filtered rows and return it as the result.

⌂
<br>﹈<br>^1695177560031




﹇<br>
In SQL, can you use the equality operator to check for `NULL` values?

#card 

No, you can not. You have to use the `IS` operator.

⌂
<br>﹈<br>^1695177560034




﹇<br>
Is the following code valid?
```sql
SELECT bike_number, end_time DESC 
FROM Bikes b 
GROUP BY bike_number
```

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

1. The `SELECT` clause is not correctly written. You are trying to select the `bike_number` and `end_time` columns, but you have included the `DESC` keyword after `end_time`. The `DESC` keyword is used to specify the sort order of a column in an `ORDER BY` clause, and it cannot be used in the `SELECT` clause. To fix this, you should remove the `DESC` keyword from the `SELECT` clause.
2. The `GROUP BY` clause is not being used correctly. You are grouping the rows by the `bike_number` column, but you are not using any aggregate functions in the `SELECT` clause. When using a `GROUP BY` clause, you must use an aggregate function (such as `COUNT`, `SUM`, `AVG`, etc.) to calculate a value for each group. If you want to select non-aggregated columns, you must include them in the `GROUP BY` clause.

Here is an example of how you can write a correct query to solve this problem:

```sql
SELECT bike_number, MAX(end_time) AS LatestEndTime
FROM Bikes b
GROUP BY bike_number
ORDER BY LatestEndTime DESC;
```

This query groups the rows in the `Bikes` table by the `bike_number` column and then calculates the maximum value of the `end_time` column for each group using the `MAX()` function. The result is aliased as `LatestEndTime`. Finally, the query selects the `bike_number` and `LatestEndTime` columns from each group and orders the result set by the `LatestEndTime` column in descending order.

⌂
<br>﹈<br>^1695177560038




﹇<br>
Is it true, that after using the `GROUP BY` clause, you are essentially reducing the fidelity of the your table, so when calling `SELECT` for specifying the columns of your _resulting set_, you need to specify exactly what row values you want to use from the group with each `bike_number`?

#card 

Yes, that’s correct! When you use the `GROUP BY` clause on the `bike_number` column, you are grouping the rows in the `Bikes` table by their `bike_number` values. This means that all rows with the same `bike_number` value will be grouped together into a single group. After grouping, you can use aggregate functions (such as `COUNT`, `SUM`, `AVG`, `MAX`, etc.) to calculate a value for each group based on the values of one or more columns in the group.

When building the resulting set with the `SELECT` clause, you need to specify which columns and values you want to include in the result. If you want to include non-aggregated columns (such as `bike_number`), you must include them in both the `SELECT` and `GROUP BY` clauses. If you want to include aggregated columns (such as the maximum value of the `end_time` column), you must use an aggregate function in the `SELECT` clause to calculate the value for each group.

⌂
<br>﹈<br>^1695177560041




﹇<br>
Is my following code valid?
```
/* Write your T-SQL query statement below */ 
SELECT artist, COUNT(artist) AS occurrences 
FROM Spotify s 
GROUP BY artist 
ORDER BY artist ASC AND occurrences DESC
```

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

There is a small issue with the syntax of the `ORDER BY` clause in your code. The `ORDER BY` clause is used to sort the rows in the result set based on one or more columns. You can specify multiple columns to sort by, separated by commas, and you can specify the sort order for each column using the `ASC` (ascending) or `DESC` (descending) keyword. However, you cannot use the `AND` keyword to combine multiple sort conditions.
Here is the corrected version of your code:

```sql
SELECT artist, COUNT(artist) AS occurrences
FROM Spotify s
GROUP BY artist
ORDER BY artist ASC, occurrences DESC;
```

In this example, we use the `GROUP BY` clause to group the rows in the `Spotify` table by the `artist` column, and then we use the `COUNT()` function to count the number of occurrences of each artist. The result is aliased as `occurrences`. We then use the `ORDER BY` clause to sort the result set first by the `artist` column in ascending order, and then by the `occurrences` column in descending order. This will return a list of artists and their number of occurrences, sorted alphabetically by artist name and then by the number of occurrences in descending order.

⌂
<br>﹈<br>^1695177560045




﹇<br>
What is the significance of the semicolon at the end of this query?
```sql
SELECT artist, COUNT(artist) AS occurrences
FROM Spotify s
GROUP BY artist
ORDER BY artist ASC, occurrences DESC;
```

#card 

The semicolon (`;`) is used in SQL as a statement terminator. It indicates the end of one SQL statement and the beginning of another. In many database systems, including SQL Server, the semicolon is not required for most statements. [However, there are some situations where it must be used, such as before a Common Table Expression (CTE) or before some Service Broker statements](https://stackoverflow.com/questions/710683/when-should-i-use-semicolons-in-sql-server)[1](https://stackoverflow.com/questions/710683/when-should-i-use-semicolons-in-sql-server).

[According to Microsoft documentation, not terminating T-SQL statements with a semicolon is a deprecated feature, and the long-term goal is to enforce the use of the semicolon in a future version of the product](https://www.mssqltips.com/sqlservertip/6593/sql-semicolon-required-usage/)[2](https://www.mssqltips.com/sqlservertip/6593/sql-semicolon-required-usage/). However, it is still possible to write T-SQL code without using semicolons, and many developers continue to do so.

In summary, the semicolon is used in SQL to separate statements and to indicate the end of one statement and the beginning of another. [While it is not always required, it is considered good practice to use it consistently to improve code readability and to prepare for future changes in the language](https://www.mssqltips.com/sqlservertip/6593/sql-semicolon-required-usage/)[2](https://www.mssqltips.com/sqlservertip/6593/sql-semicolon-required-usage/).

⌂
<br>﹈<br>^1695177560050





﹇<br>
Is the following code valid?
```sql
/* Write your T-SQL query statement below */
SELECT emp_id, MAX(firstname), MAX(lastname), MAX(salary), MAX(department_id)
FROM Salary s
GROUP BY s.emp_id
ORDER BY emp_id ASC
```

#card 

While the following code is valid and will compile, it is **not** logically correct.
- When grouping, remember that we not only lost fidelity and have to use aggregate functions when selecting columns, but we _also_ need to specify an **alias** for the column name of our table.
- If we do not specify an alias for the column name, our _resulting set_ will have the column names be blank where we used aggregate functions.

Here is the code corrected…

```sql
/* Write your T-SQL query statement below */
SELECT emp_id, MAX(firstname) AS firstname, MAX(lastname) AS lastname, MAX(salary) AS salary, MAX(department_id) AS department_id
FROM Salary s
GROUP BY s.emp_id
ORDER BY emp_id ASC
```

⌂
<br>﹈<br>^1695177560056




﹇<br>
Is the following code valid?
```sql
SELECT p.person_id, CONCAT( name, '(', LEFT(p.profession,1), ')') AS name
FROM Person p
ORDER BY p.person_id DESC;
```

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

Yes, the following code is valid and logically correct.

⌂
<br>﹈<br>^1695177560060




﹇<br>
What does `LEFT` do in SQL Server? What is the difference between `LEFT` and `SUBSTRING`?

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

[The `LEFT` function in SQL returns the left part of a character string with the specified number of characters](https://database.guide/left-vs-substring-in-sql-server-whats-the-difference/)[1](https://database.guide/left-vs-substring-in-sql-server-whats-the-difference/). For example, `LEFT('SQL Tutorial', 3)` returns `'SQL'`.

[On the other hand, the `SUBSTRING` function returns part of a character, binary, text, or image expression](https://database.guide/left-vs-substring-in-sql-server-whats-the-difference/)[1](https://database.guide/left-vs-substring-in-sql-server-whats-the-difference/). It takes three arguments: the expression, the starting position, and the number of characters to return from that starting position. For example, `SUBSTRING('SQL Tutorial', 1, 3)` also returns `'SQL'`.

The main difference between the two functions is that `LEFT` only returns the left part of the string, while `SUBSTRING` can return any part of the expression. [Another difference is that `LEFT` only requires two arguments (the expression and the number of characters to return), while `SUBSTRING` requires three arguments (the expression, the starting position, and the number of characters to return from that starting position)](https://database.guide/left-vs-substring-in-sql-server-whats-the-difference/)[1](https://database.guide/left-vs-substring-in-sql-server-whats-the-difference/).

⌂
<br>﹈<br>^1695177560064





﹇<br>
Is the following code valid?

```SQL
SELECT e1.symbol AS metal, e2.symbol AS nonmetal
FROM Elements e1
CROSS JOIN Elements e2
WHERE 
  (e1.type = 'Metal' AND e2.type = 'Nonmetal')
  OR
  (e1.type = 'Nonmetal' AND e2.type = 'Metal')
```

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

While the following code is valid (i.e., will compile), it is **not** logically correct.
- The resulting set will include **all** possible combinations. For example, it will include both `AB` and `BA` combinations which are both the same.
- If you just want to print out the combinations _once_ you should just include all rows... 

```sql
WHERE
	(e1.type = 'Metal' AND e2.type = 'Nonmetal')
```

Also, there is **more** efficient way to do this. 
- Instead of getting all possible combinations in any order, better to just use `INNER JOIN` and do it `ON e1.type = 'Metal' AND e2.type = 'Nonmetal'`

⌂
<br>﹈<br>^1695177560068




﹇<br>
Does SQL Server allow quotation marks `""` for strings?

#card 

No, use single quotes `''`.

﹇<br>
Is the following code valid?
```sql
-- Write your T-SQL query statement below
SELECT *
FROM Olympic o
ORDER BY
	o.gold_medals DESC,
	o.silver_medals DESC,
	o.bronze_medals DESC,
	o.country ASC
```

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

Yes, it will compile and be logically corrected.

⌂
<br>﹈<br>^1695177560072




﹇<br>
If I want to sort values form a column with respect to A-Z, should I used `ASC` or `DESC`?

#card 

Should use `ASC`, recall that A has a value less than Z.

⌂
<br>﹈<br>^1695177560075




﹇<br>
Is the following code valid?

```sql
/* Write your T-SQL query statement below */
SELECT t1.team_name AS home_team, t2.team_name AS away_team
FROM Teams t1
LEFT JOIN Teams t2
  ON t1.team_name != t2.team_name
```

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server

While the following code is valid, it is **not** logically correct.
- We are not considering the edge where there is just _one_ team. In that case, we should not return _any_ matches.

Here is the corrected code…
```sql
/* Write your T-SQL query statement below */
SELECT t1.team_name AS home_team, t2.team_name AS away_team
FROM Teams t1
LEFT JOIN Teams t2
  ON t1.team_name != t2.team_name
WHERE t2.team_name IS NOT NULL
```

⌂
<br>﹈<br>^1695177560079




﹇<br>
Is my following code valid?

```sql
CREATE PROCEDURE getUserIDs(@startDate DATE, @endDate DATE, @minAmount INT) AS
BEGIN
	/* Write your T-SQL query statement below. */
	SELECT DISTINCT p.user_id AS user_id
	FROM Purchases p
	WHERE
		p.time_stamp > startDate AND p.time_stamp < endDate AND p.amount > minAmount
	ORDER BY p.user_id ASC
END
```

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

No, the code is not valid and will not compile.
- If you are trying to reference an argument you must prepend it with the `@` sign. (reason for compile error)
- Also, when working with dates, if our bounds are inclusive need to make sure that we are using these operators `>=`, `<=`, not `>`, `<`.
	- Should also first choose to prefer using `BETWEEN`  for determining if something lies between dates, values, etc.

⌂
<br>﹈<br>^1695177560082




﹇<br>
When checking a value against a bounds, is it sufficient to just use the `>=` and `<=` operators?

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

No, should use the logical operator `BETWEEN` which is inclusive of both ends.

⌂
<br>﹈<br>^1695177560085




﹇<br>
In SQL Server, can you compare a `DATE` value with a `DATE TIME` value?

#card 

Yes, in SQL Server, you can compare a `DATE` value with a `DATETIME` value. [When you compare a `DATE` value with a `DATETIME` value, the `DATE` value is implicitly cast to a `DATETIME` value with the time portion set to midnight (00:00:00)](https://stackoverflow.com/questions/25564482/how-to-compare-datetime-with-only-date-in-sql-server)[1](https://stackoverflow.com/questions/25564482/how-to-compare-datetime-with-only-date-in-sql-server). 
- For example, if you compare the `DATE` value ‘2023-06-28’ with the `DATETIME` value ‘2023-06-28 12:30:47.220’, the `DATE` value is first cast to the `DATETIME` value ‘2023-06-28 00:00:00.000’ before the comparison is performed.
- 
It’s important to note that when comparing a `DATE` value with a `DATETIME` value, the time portion of the `DATETIME` value is taken into account. [This means that if you want to check if a `DATETIME` value falls on a specific date, you need to use a range comparison instead of an equality comparison](https://stackoverflow.com/questions/25564482/how-to-compare-datetime-with-only-date-in-sql-server)[1](https://stackoverflow.com/questions/25564482/how-to-compare-datetime-with-only-date-in-sql-server). 
- For example, to check if the `DATETIME` value ‘2023-06-28 12:30:47.220’ falls on the date ‘2023-06-28’, you can use the following comparison:
```sql
SELECT *
FROM MyTable
WHERE MyDateTimeColumn >= '2023-06-28'
AND MyDateTimeColumn < DATEADD(day, 1, '2023-06-28')
```

⌂
<br>﹈<br>^1695177560088




﹇<br>
What is a Common Table Expression (CTE) in the context of SQL?

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

A Common Table Expression (CTE) is a named temporary result set that you can reference within a `SELECT`, `INSERT`, `UPDATE`, or `DELETE` statement. CTEs are defined using the `WITH` clause and can be used to simplify complex queries by breaking them down into smaller, more manageable pieces. CTEs can also be used to recursively reference themselves, which can be useful for solving problems that require recursive logic, such as traversing hierarchical data.

Here is an example that shows how to use a CTE in a `SELECT` statement:

```SQL
WITH CTE_Name AS (
    SELECT column1, column2
    FROM MyTable
    WHERE condition
)
SELECT *
FROM CTE_Name
WHERE condition;
```

In this example, the `WITH` clause defines a CTE named `CTE_Name` that contains the result of the `SELECT` statement within the parentheses. The main query then references the CTE by its name and uses it as if it were a regular table.

CTEs are similar to derived tables in that they allow you to define a temporary result set that can be used in the main query, but they have several advantages over derived tables. One advantage of using CTEs is that they can improve the readability and maintainability of your code by allowing you to break complex queries into smaller, more manageable pieces. Another advantage is that CTEs can be referenced multiple times in the same query, whereas derived tables must be redefined each time they are used.

⌂
<br>﹈<br>^1695177560092




﹇<br>
Without using window functions, how can I get all rows where the `temperature` of that row is greater than the previous row?

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

```sql
/* Write your T-SQL query statement below */
SELECT
	wCurr.id AS 'Id'
FROM 
	weather wCurr
INNER JOIN 
	weather wPrev 
	ON 
		DATEADD(day, -1, wCurr.recordDate) = wPrev.recordDate AND wCurr.Temperature > wPrev.Temperature
```

⌂
<br>﹈<br>^1695177560095




﹇<br>
Using window functions, how can I get all rows where the `temperature` of that row is greater than the previous day (yesterday)?

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

Windows functions won’t work because we can not account for date jumps. If that is not a concern, then we can proceed as follows…

Using the `LAG` window function…

```sql
SELECT id
FROM (
    SELECT id, temperature, LAG(temperature) OVER (ORDER BY recordDate) AS prev_temperature
    FROM Weather
) t
WHERE temperature > prev_temperature;
```

Using `LAG` and specifying the `ROWS` specification…

```sql
WITH cte AS (
    SELECT id, temperature, LAG(temperature, 1) OVER (ORDER BY recordDate ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS prev_temperature
    FROM Weather
)
SELECT id
FROM cte
WHERE temperature > prev_temperature;
```

⌂
<br>﹈<br>^1695177560098




﹇<br>
Does SQL Server, consider `NULL` to be less than 1000?

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

In SQL Server, `NULL` is not considered to be less than, greater than, or equal to any value, including 1000. `NULL` represents missing or unknown data, and any comparison between `NULL` and another value will return `UNKNOWN`, which is treated as `FALSE` in a `WHERE` or `HAVING` clause.
For example, consider the following query that attempts to filter rows where a column `col` is less than 1000:

```sql
SELECT *
FROM mytable
WHERE col < 1000;
```

If the `col` column contains any `NULL` values, those rows will not be included in the result set because the comparison `col < 1000` will return `UNKNOWN` for those rows.

If you want to include rows with `NULL` values in the result set, you can use the `IS NULL` or `IS NOT NULL` predicates to explicitly test for `NULL` values. For example, to include rows where `col` is either less than 1000 or `NULL`, you could use the following query:

```sql
SELECT *
FROM mytable
WHERE col < 1000 OR col IS NULL;
```

⌂
<br>﹈<br>^1695177560102




﹇<br>
If doing `column != 2` in a SQL expression in SQL Server, will that still capture records that contain `NULL` for their value in `column`?

#card 

No, remember that `NULL` must be specified as if you wish to include it. You can not use comparing operators with it.

⌂
<br>﹈<br>^1695177560105





﹇<br>
Is the following SQL code valid?

```sql
/* Write your T-SQL query statement below */
SELECT c.customer_number
FROM Orders c
RIGHT JOIN
  (
  SELECT MAX(o.order_number) AS max_order_number
  FROM Orders o
  ) om 
ON c.order_number = om.max_order_number
WHERE customer_number IS NOT NULL
```

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

Yes, but it is not efficient. It is adaptable though to deal with a case where your input table as multiple max `order_number`s.
- Nonetheless, for the purposes of just finding the max `order_number` when you are **explicitly** told that only _one_ customer can have the classification of max orders done, then you can use the `GROUP BY` and `LIMIT` approach.

More efficient solution…

```sql
```

❗Need to fix

⌂
<br>﹈<br>^1695177560108





﹇<br>
What is the optimal way to solve this?

Table: `Orders`

```
+-----------------+----------+
| Column Name     | Type     |
+-----------------+----------+
| order_number    | int      |
| customer_number | int      |
+-----------------+----------+
order_number is the primary key (column with unique values) for this table.
This table contains information about the order ID and the customer ID.
```

Write a solution to find the `customer_number` for the customer who has placed **the largest number of orders**.

The test cases are generated so that **exactly one customer** will have placed more orders than any other customer.

The result format is in the following example.

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

```sql
SELECT TOP 1 customer_number
FROM Orders o
GROUP BY o.customer_number
ORDER BY COUNT(*) DESC
```

⌂
<br>﹈<br>^1695177560112



﹇<br>
What is the issue with the following SQL Server query and how can it be corrected?

```sql
SELECT c.class
FROM COURSES c
GROUP BY c.class
HAVING c.class >= 5
```

#card #🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server 

The query has a syntax issue because the `HAVING` clause is supposed to filter the grouped result set based on some aggregate function (e.g., COUNT, AVG, SUM, MIN, MAX, etc.). In this query, the `HAVING` clause is being used directly with a column `c.class` without an aggregate function, which will throw an error in SQL Server.

To correct the issue, you can move the condition to the `WHERE` clause like this:

```sql
SELECT c.class
FROM COURSES c
WHERE c.class >= 5
GROUP BY c.class;
```

In this corrected version, the `WHERE` clause filters the rows before they are grouped by the `GROUP BY` clause.

⌂
<br>﹈<br>^1695177560115





﹇<br>
Is there an issue with the following SQL Server query and, if so, how can it be corrected?

```sql
SELECT c.class
FROM COURSES c
GROUP BY c.class
HAVING c.class >= 5
```

#card

The query has a syntax issue because the `HAVING` clause is supposed to filter the grouped result set based on some aggregate function (e.g., COUNT, AVG, SUM, MIN, MAX, etc.). In this query, the `HAVING` clause is being used directly with a column `c.class` without an aggregate function, which will throw an error in SQL Server.

To correct the issue, you can move the condition to the `WHERE` clause like this:

```sql
SELECT c.class
FROM COURSES c
WHERE c.class >= 5
GROUP BY c.class;
```

In this corrected version, the `WHERE` clause filters the rows before they are grouped by the `GROUP BY` clause.

⌂
<br>﹈<br>^1695177560119



---


## 🔜 Next Note(s):

---

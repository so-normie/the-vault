---
tags:
  - 🔴-academic/📚-educational-resource/name/advanced-sql
  - 🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/sql
  - study-note
cards-deck: Default::Computer Science
created: 2023-10-07 15:19
updated: 2023-11-18T02:44
---

# Advanced SQL

## Advanced SQL — Chapter #05 — Video #29 — Window functions, frame specifications (ROWS∕RANGE∕GROUPS)

In brief, what exactly are window functions in the context of advanced SQL? #card 
- Window functions are a type of function in SQL that allow you to perform calculations across a set of rows, while still returning multiple rows in the result. They are similar to aggregate functions, which also perform calculations across a set of rows, but aggregate functions return a single output row, while window functions return multiple rows¹.
- Window functions are used with the `OVER` clause, which defines the set of rows (or "window") that the function operates on. The `OVER` clause can include `PARTITION BY`, which divides the rows into partitions or groups, and `ORDER BY`, which specifies the order of rows within each partition².
- Some common window functions include `ROW_NUMBER()`, `RANK()`, and `SUM()`. For example, you could use the `SUM()` function as a window function to calculate a running total of sales for each month, while still returning a row for each individual sale¹. Window functions can be very powerful and useful for solving complex query challenges in an easy way. Is there anything else you would like to know? 😊
- Source: Conversation with Bing, 7/31/2023
  (1) SQL Window Functions - SQL Tutorial. https://www.sqltutorial.org/sql-window-functions/.
  (2) Window functions in SQL - GeeksforGeeks. https://www.geeksforgeeks.org/window-functions-in-sql/.
  (3) Window function (SQL) - Wikipedia. https://en.wikipedia.org/wiki/Window_function_%28SQL%29.
  (4) SQL Server Window Functions - javatpoint. https://www.javatpoint.com/sql-server-window-functions.
  (5) SQL Window Functions: The Ultimate Guide - Database Star. https://www.databasestar.com/sql-window-functions/.
^1690846552995

What does the following **sql** code do? 
```sql
SELECT
    date,
    sales,
    SUM(sales) OVER (ORDER BY date) AS running_total
FROM sales_table;
```
#card 
- In this example, we use the `SUM()` function as a window function to calculate the running total of sales. The `OVER` clause specifies that the function should operate on the rows in the order specified by the `ORDER BY` clause. This means that for each row, the `SUM()` function will calculate the sum of sales for all rows up to and including the current row, in the order specified by the `date` column.
- The result of this query would be a table with three columns: `date`, `sales`, and `running_total`. The `running_total` column would show the running total of sales for each record, calculated using the window function. 
^1690846553007

Lets say that for the following sql, we wished to expand it so that we were calculating the running total for each month, not just for each day. How would we go about that.
```sql
SELECT
    date,
    sales,
    SUM(sales) OVER (ORDER BY date) AS running_total
FROM sales_table;
```
#card 
- In the current example, the `running_total` column would show the running total of sales for all rows up to and including the current row, in the order specified by the `date` column. So, if the `sales_table` contains records for September, October, and November, then the records in October would account for sales in September as well.
- If you want to calculate the running total of sales for each month separately, you can use the `PARTITION BY` clause in the `OVER` clause to divide the rows into partitions based on the month. Here’s an example of how you could do that:
```sql
SELECT
    date,
    sales,
    SUM(sales) OVER (PARTITION BY EXTRACT(MONTH FROM date) ORDER BY date) AS running_total
FROM sales_table;
```
- In this example, we use the `EXTRACT(MONTH FROM date)` function to extract the month from the `date` column, and we use this value to partition the rows into groups based on the month. Then, within each partition, we calculate the running total of sales using the `SUM()` function as a window function. This way, the `running_total` column would show the running total of sales for each month separately.
^1690846553014

In sql, what are some common mode of computations? #card 

|SQL Feature|Mode of Computation|
|---|---|
|function|row → row|
|table-generating|row → table of rows|
|aggregate|group of rows → row|
|window function|row vicinity → row (one per row)|
^1690846553022

Window functions… are {1:row-based}: {2:each individual input row `r` is mapped to one result row},
^1690846826482

Window functions… use the {1:vicinity} around {2:`r` to compute this result row}.
^1690846826498

What do window semantics depend on? #card 
They depend on a defined **row ordering**.
^1690847485909

Row vicinity (**window**, frame) is based on either… 
![[the-vault/assets/images/row-vicinity-window-frames.png|200]]
#card 
1. row **position** (ROWS windows)
2. row values $v_{i}$ (RANGE windows),
3. row **peers** (GROUPS windows)
^1690847485916

If the row ordering is absent then the {vicinity will be random and non-deterministic}.
^1690847485923

Refer to the following slide…
![[the-vault/assets/images/Pasted image 20230731165752.png|700]]
What are the following…
- $\mathcal{Q_{1}, \_ ,Q_{4} }:$ ?
- $\mathcal{Q_{3}, \_ ,Q_{6} }:$ ?
- $\mathcal{Q_{4}, \_ ,Q_{7} }:$ ?
 #card
- $\mathcal{Q_{1}, \_ ,Q_{4} }:$ `BETWEEN UNBOUNDED AND CURRENT ROW`
- $\mathcal{Q_{3}, \_ ,Q_{6} }:$ `BETWEEN PRECEDING 1 AND FOLLOWING 2`
- $\mathcal{Q_{4}, \_ ,Q_{7} }:$ `BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING`
^1690848167939

Refer to the following slide…
![[the-vault/assets/images/Pasted image 20230731165752.png|700]]
When developing a `<frame>`, what is the general format? #card 
`BETWEEN ... AND ...`
^1690848948806

Refer to the following slide…
![[the-vault/assets/images/Pasted image 20230731165752.png|700]]
How can I specify in my `<frame>`, I want the previous 2 rows, from my current row? #card 
Use the `PRECEDING` keyword.
^1690848948812

Refer to the following slide…
![[the-vault/assets/images/Pasted image 20230731165752.png|700]]
How can I specify in my `<frame>`, I want the following 2 rows, from my current row? #card 
Use the `FOLLOWING` keyword.
^1690848948819


Refer to the following slide…
![[the-vault/assets/images/Pasted image 20230731165752.png|700]]
How can I specify in my `<frame>`, I want *all* the rows after my current row? #card 
Use the `UNBOUNDED` keyword. For example, `UNBOUNDED FOLLOWING`
^1690848948825

When using the `RANGE` specification, what must we always do with it? #card 
We must specify a **single** column.
![[the-vault/assets/images/Pasted image 20230731171410.png|400]]
…for more context…
![[the-vault/assets/images/Pasted image 20230731171524.png|600]]
^1690848948832









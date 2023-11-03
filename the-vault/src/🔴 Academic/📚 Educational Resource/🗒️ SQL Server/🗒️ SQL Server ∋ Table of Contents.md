---
title: 🗒️ SQL Server
authors:
  - Edmund Leibert III
created: 2023-09-03 08:46
23-09-28 14:16

updated: 2023-09-22 09:56

tags:
  - 🔴-academics/📚-educational-resources/name/🗒️-sql-server
  - 🔴-academics/📚-educational-resources/source-format/miscellaneous
  - 🔴-academics/📚-educational-resources/discipline/computer-science/dbms/sql-server
  - 🔴-academics/📚-educational-resources/name/🗒️-sql-server/🔖-bookmark/🗒️-sql-server
  - study-note
cards-deck: 🔴 Academics::📚 Educational Resources::🗒️ SQL Server
---

# 🗒️ SQL Server

---

## 🕸️ All Mention(s): 

---

## 🔙 Previous Note(s):

---

## 🗒️ SQL Server

﹇<br>
What is a _stored procedure_ in SQL Server?

#card 

[A stored procedure in SQL Server is a prepared SQL code that you can save, so the code can be reused over and over again](https://www.w3schools.com/SQL/sql_stored_procedures.asp)[1](https://www.w3schools.com/SQL/sql_stored_procedures.asp). [If you have an SQL query that you write repeatedly, you can save it as a stored procedure and then just call it to execute it](https://www.w3schools.com/SQL/sql_stored_procedures.asp)[1](https://www.w3schools.com/SQL/sql_stored_procedures.asp). [You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed](https://www.w3schools.com/SQL/sql_stored_procedures.asp)[1](https://www.w3schools.com/SQL/sql_stored_procedures.asp).

Here’s an example of how to create a stored procedure:

```sql
CREATE PROCEDURE procedure_name
AS
sql_statement
GO;
```

And this is how you execute a stored procedure:

```sql
EXEC procedure_name;
```

For example, if you have a table named `Customers` and you want to select all records from this table, you can create a stored procedure named `SelectAllCustomers` like this:

```sql
CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM Customers
GO;
```

And then execute it like this:

```sql
EXEC SelectAllCustomers;
```

You can also create a stored procedure with parameters. For example, if you want to select customers from a particular city, you can do it like this:

```sql
CREATE PROCEDURE SelectAllCustomers @City nvarchar(30)
AS
SELECT * FROM Customers WHERE City = @City
GO;
```

And execute it like this:

```sql
EXEC SelectAllCustomers @City = 'London';
```

[Stored procedures are very useful for centralizing data access logic into a single place that is then easy for DBA’s to optimize](https://stackoverflow.com/questions/459457/what-is-a-stored-procedure)[2](https://stackoverflow.com/questions/459457/what-is-a-stored-procedure). [They also have a security benefit in that you can grant execute rights to a stored procedure but the user will not need to have read/write permissions on the underlying tables](about:blank#)[2](https://stackoverflow.com/questions/459457/what-is-a-stored-procedure). [This is a good first step against SQL injection](about:blank#)[2](https://stackoverflow.com/questions/459457/what-is-a-stored-procedure).

⌂
<br>﹈<br>^1694513592993



﹇<br>
How do you check, via the terminal that Microsoft’s SQL Server is installed?

#card 

Run the following command…
```cmd
sqlcmd -L
```

⌂
<br>﹈<br>^1694501455694



﹇<br>
What does the following command do?

```cmd
sqlcmd -L
```

#card-reverse 

List all the available SQL Server instances on the current machine.

⌂
<br>﹈<br>^1694501455701



﹇<br>
What is the difference between the Express and the Developer versions of SQL Server?

#card 

SQL Server Express and SQL Server Developer are two different editions of Microsoft SQL Server. Both editions are free, but they have some key differences in terms of features and usage.
- [SQL Server Express is an entry-level database that is ideal for learning and building data-driven desktop and small server applications](https://tipsfolder.com/difference-between-sql-server-developer-express-edition-431738195a02415ae897a5ab4393ae0d/)[1](https://tipsfolder.com/difference-between-sql-server-developer-express-edition-431738195a02415ae897a5ab4393ae0d/). [It has a limited set of features and is designed to be easy to use, with a low total cost of ownership](https://learn.microsoft.com/en-us/sql/sql-server/editions-and-components-of-sql-server-2022?view=sql-server-ver16)[2](https://learn.microsoft.com/en-us/sql/sql-server/editions-and-components-of-sql-server-2022?view=sql-server-ver16).
- [On the other hand, SQL Server Developer edition lets developers build any kind of application on top of SQL Server](https://learn.microsoft.com/en-us/sql/sql-server/editions-and-components-of-sql-server-2022?view=sql-server-ver16)[2](https://learn.microsoft.com/en-us/sql/sql-server/editions-and-components-of-sql-server-2022?view=sql-server-ver16). [It includes all the functionality of the Enterprise edition, but is licensed for use as a development and test system, not as a production server](https://learn.microsoft.com/en-us/sql/sql-server/editions-and-components-of-sql-server-2022?view=sql-server-ver16)[2](https://learn.microsoft.com/en-us/sql/sql-server/editions-and-components-of-sql-server-2022?view=sql-server-ver16). [SQL Server Developer is an ideal choice for people who build and test applications](about:blank#)[1](https://tipsfolder.com/difference-between-sql-server-developer-express-edition-431738195a02415ae897a5ab4393ae0d/).

In summary, if you are a developer building and testing applications, SQL Server Developer edition would be the better choice as it provides access to all the features of SQL Server. If you are learning about databases or building small data-driven applications, SQL Server Express might be a good fit for you. 

⌂
<br>﹈<br>^1694501455705


---

## 🔜 Next Note(s):

---




/*
1. --How to retrieve the FIRST 5 rows?--

(MySQL)
SELECT top5* FROM tableName

(SQL Server)
SELECT rownum5* FROM tableName

2. --How to retrieve UNIQUE identifier?--

SELECT distinct columnName1, columnNameN
FROM tableName

3. --How to get ALL COLUMNS name?--

(MySQL)
SELECT* FROM tableName

(SQL Server)
SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'table_name'

4. --How to RENAME the column name?

SELECT columnName as "newColumnName"
FROM tableName

addition example: 

SELECT*
FROM tableName t 
WHERE t.object_id = {{autoID}};

5. --UNIT columns in one common (but string with string and int with int)

SELECT columnName1 + ' is a ' + columnName2
FROM tableName

6. The text started from 17 number and will cover 10 numbers of letters 

SELECT substring (columnName,17,10)
FROM tableName

7. To change int to float for getting the result with data after point

SELECT ColumnName1, cast(columnName as float)/8 as “New columnName”
From Table

8. Filtering the DATA using one tag 

SELECT*
FROM tableName
WHERE columnName = 'designer engineer' 

9. Filtering DATE yyyymmdd

Select ColumnName
From Table
Where ColumnName > ‘20090114’

additional example:

SELECT a.columnName1, a.columnName2, a.columnName(n)
FROM tableName a
WHERE 
a.dateColumn1 >= TO_DATE ('2022-01-01','yyyy-mm-dd')
AND
a.dateColumn1 <= TO_DATE ('2022-01-11','yyyy-mm-dd')

10. Using two options for filtering, where enough at least one will be true 'OR-Keyword'

SELECT columnName1, columnName2, columnName3
FROM tableName
WHERE columnName1 = 'E'
OR columnName2 = 5 
OR columnName = Audi

11. Enough for getting the result if at least one will be 'true'. Keyword 'IN' & 'NOT IN'
the same like Keyword 'OR' but using for one columnName

SELECT* 
FROM tableName
WHERE columnName IN ('Poland', 'Germany', 'Ukraine')

will select all information that are NOT located in "Germany", "France" or "UK"

SELECT* 
FROM tableName
WHERE columnName NOT IN ('Poland', 'Germany', 'Ukraine')

12. Keyword 'AND' - all options must be true for getting not empty result.
It is compatible  with Keyword 'OR', but options with 'AND' will be checked in the first order. 

SELECT columnName1, columnName2
FROM tableName
WHERE columnName1 = 'D'
AND
columnName2 = '2009-01-14'

SELECT columnName1,…
FROM Table
WHERE columnName1 > 3 and columnName2 = 'z' or columnName='valueN'

13. Keyword 'BETWEEN'

SELECT*
FROM tableName
WHERE columnName BETWEEN 40 and 60

14. Keyword 'LIKE' - only for string

- Start with this symbol, for example A: 

SELECT*
FROM tableName
WHERE columnName LIKE 'A%'

- Next letter should be ''

SELECT*
FROM tableName
WHERE ColumnName LIKE '_o%'

- Select all words which started from B to E 

SELECT*
FROM tableName
WHERE columnName LIKE '[B-E]%'

- Select all words which started from D, then from E, then from F

SELECT*
FROM tableName
WHERE columnName LIKE '[DEF]%'

15. Keyword is null/is not null. Some columns have those status and we want or not see them.

SELECT*
FROM tableName
WHERE ColumnName is null;  (or is not null)


*/


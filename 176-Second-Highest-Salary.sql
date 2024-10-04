# Write your MySQL query statement below
SELECT
    (SELECT DISTINCT salary 
     FROM Employee 
     ORDER BY salary DESC 
     LIMIT 1 OFFSET 1
) AS SecondHighestSalary; 

/*

The LIMIT 1 OFFSET 1 clause in SQL means:

LIMIT 1: This part limits the number of rows returned by the query to just one row.
OFFSET 1: This part skips the first row in the result set and starts returning rows from the second one onward.
*/

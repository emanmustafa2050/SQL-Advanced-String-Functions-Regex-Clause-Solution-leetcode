# Write your MySQL query statement below
/*   using limit 
SELECT
    (SELECT DISTINCT salary 
     FROM Employee 
     ORDER BY salary DESC 
     LIMIT 1 OFFSET 1
) AS SecondHighestSalary; 
*/
SELECT COALESCE(( 
    SELECT distinct salary
    FROM (
        SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
        FROM Employee
    ) ranked_salaries
    WHERE salary_rank = 2
), NULL) AS SecondHighestSalary;


/*

The LIMIT 1 OFFSET 1 clause in SQL means:

LIMIT 1: This part limits the number of rows returned by the query to just one row.
OFFSET 1: This part skips the first row in the result set and starts returning rows from the second one onward.
*/

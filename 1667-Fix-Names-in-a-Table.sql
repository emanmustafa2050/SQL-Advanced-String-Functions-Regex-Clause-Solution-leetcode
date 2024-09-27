# Write your MySQL query statement below
/*
SELECT user_id,  CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2))) as name
FROM Users
order by user_id
*/

SELECT user_id,  CONCAT(UPPER(LEFT(name, 1)), LOWER(RIGHT(name, LENGTH(name) - 1)) ) as name
FROM Users
order by user_id
/*
1) LEFT(name, 1) gets the first character.
The first argument (name) is the string (or column) you want to work with.
The second argument (1) is the number of characters to extract starting from the left (beginning) of the string.


UPPER() makes that first character uppercase.
SUBSTRING(name, 2) (or RIGHT(name, LENGTH(name) - 1)) gets the rest of the string starting from the second character.
LOWER() makes the rest of the characters lowercase.
CONCAT() combines both parts into the final formatted string.
*/
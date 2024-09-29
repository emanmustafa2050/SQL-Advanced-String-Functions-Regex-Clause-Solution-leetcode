# Write your MySQL query statement below
/*
here we can use RE to solve this case 
^ [A-Za-z] -> means start with any char upper or lower

[A-Za-z0-9._-] -> after this coming  any char upper or lower or spacial char(. _-)
* -> star means 0 or more
@leetcode -> static 
\\. -> means write . itself
com -> static
$ -> the end of RE
*/
SELECT  user_id , name , mail
FROM Users
WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9._-]*@leetcode\\.com$'
order by user_id
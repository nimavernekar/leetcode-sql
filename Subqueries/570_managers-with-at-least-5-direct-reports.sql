-- Problem: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- Concept: subquery
-- Difficulty: Medium
-- Solution by: Nimisha Vernekar

select name from 
Employee 
where id in (
select managerId
from Employee
where managerId is not null
group by managerId
having count(1) >= 5 
)
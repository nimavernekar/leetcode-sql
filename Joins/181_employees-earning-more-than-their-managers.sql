-- Problem: https://leetcode.com/problems/employees-earning-more-than-their-managers/
-- Concept: LEFT JOIN
-- Difficulty: Easy
-- Solution by: Nimisha Vernekar

select e.name as Employee
from Employee e
join Employee m 
ON 
m.id = e.managerId
where e.salary > m.salary
-- Problem: https://leetcode.com/problems/consecutive-numbers/
-- Concept: subquery, window functions
-- Difficulty: Medium
-- Solution by: Nimisha Vernekar

# Write your MySQL query statement below
select distinct num  as ConsecutiveNums from (
select num,
Lead(num,1) over(order by id) as prev1,
Lag(num, 1)  over(order by id) as prev2
from Logs) as t
where num=prev1 and prev1 = prev2


-- Problem: https://leetcode.com/problems/biggest-single-number/
-- Concept: Subquery
-- Difficulty: Easy
-- Solution by: Nimisha Vernekar

select max(num) as num from 
(select num from MyNumbers
group by num
having count(*)=1)
as t
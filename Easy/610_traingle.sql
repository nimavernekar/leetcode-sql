-- Problem: https://leetcode.com/problems/triangle-judgement/
-- Concept: 
-- Difficulty: Easy
-- Solution by: Nimisha Vernekar

select x, y, z, 
case when x+y > z then 'Yes' else 'No' end as triangle 
from Triangle
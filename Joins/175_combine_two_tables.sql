-- Problem: https://leetcode.com/problems/combine-two-tables/
-- Concept: LEFT JOIN
-- Difficulty: Easy
-- Solution by: Nimisha Vernekar


select p.firstName, p.lastName, a.city,a.state
from Person p
left join Address a
ON p.personId = a.personId
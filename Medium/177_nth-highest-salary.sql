-- Problem: https://leetcode.com/problems/nth-highest-salary/
-- Concept: subquery
-- Difficulty: Medium
-- Solution by: Nimisha Vernekar

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
    select salary from 
    (select salary, dense_rank() over (order by salary desc) as ranks
    from Employee) r
    where ranks = N
  );
END
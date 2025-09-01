-- Problem: https://leetcode.com/problems/second-degree-follower/
-- Concept: Join
-- Difficulty: Medium
-- Solution by: Nimisha Vernekar

SELECT a.follower, 
       COUNT(DISTINCT b.follower) AS num
FROM Follow a
JOIN Follow b
  ON a.follower = b.followee
WHERE a.follower != b.follower
GROUP BY a.follower
ORDER BY a.follower;
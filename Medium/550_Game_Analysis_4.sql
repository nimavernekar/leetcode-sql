
-- Problem: https://leetcode.com/problems/game-play-analysis-iv/
-- Concept: Join
-- Difficulty: Medium
-- Solution by: Nimisha Vernekar

SELECT 
ROUND(count(a1.player_id)/
(SELECT COUNT(DISTINCT A3.player_id) FROM Activity A3),2) as fraction
FROM Activity a1
JOIN Activity a2
  ON a1.player_id = a2.player_id
 AND DATEDIFF(a2.event_date, a1.event_date) = 1;

-- Problem: https://leetcode.com/problems/average-time-of-process-per-machine/
-- Concept: Aggregation
-- Difficulty: Easy
-- Solution by: Nimisha Vernekar

select machine_id,  
round(SUM(CASE WHEN activity_type='start' THEN timestamp*-1 ELSE timestamp END)*1.0/
(SELECT COUNT(DISTINCT process_id)),3
) as processing_time
from Activity
group by machine_id
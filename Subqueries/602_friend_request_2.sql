-- Problem: https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/
-- Concept: window
-- Difficulty: Medium, subqueries
-- Solution by: Nimisha Vernekar

with all_ids as
(select requester_id as id
 FROM RequestAccepted
 union all
 select accepter_id as id
  FROM RequestAccepted)
  
SELECT id, num
FROM 
   (
   SELECT id, 
      COUNT(id) AS num, 
      RANK () OVER(ORDER BY COUNT(id) DESC) AS rnk
   FROM all_ids
   GROUP BY id
   )t0
WHERE rnk=1

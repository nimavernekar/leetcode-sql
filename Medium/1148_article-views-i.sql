-- Problem: https://leetcode.com/problems/https://leetcode.com/problems/article-views-i/description/
-- Concept: subquery
-- Difficulty: Medium
-- Solution by: Nimisha Vernekar

select distinct author_id  as id
from Views
where author_id = viewer_id 
order by id
-- Problem:https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?code_type=5
-- Concept: subquery, join
-- Difficulty: Easy
-- Solution by: Nimisha Vernekar

select t.worker_title AS best_paid_title
from worker w
join title t on t.worker_ref_id = w.worker_id
where w.salary in (SELECT MAX(w.salary)
    FROM worker w
    JOIN title t ON w.worker_id = t.worker_ref_id)
    order by best_paid_title
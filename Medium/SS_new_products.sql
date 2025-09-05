
-- Problem: https://platform.stratascratch.com/coding/10318-new-products?code_type=3
-- Concept: CASE
-- Difficulty: Medium
-- Solution by: Nimisha Vernekar


select  company_name,
count(
case when year =2020 then 1 end) - count(case when year =2019 then 1 end) as total_launch
from car_launches
group by company_name
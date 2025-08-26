
-- Problem: https://leetcode.com/problems/recyclable-and-low-fat-products/description/
-- Concept: --
-- Difficulty: Easy
-- Solution by: Nimisha Vernekar



select product_id
from Products
where low_fats='Y' and recyclable = 'Y'
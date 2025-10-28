/*
🗃 Day 6 – SQL Problem Set
🧩 1️⃣ Find Top 3 Products per Category by Revenue
Tables:
Products(product_id, name, category)
Sales(sale_id, product_id, revenue)
Task:
For each category, list the top 3 products ranked by total revenue.
Show: category, product_name, total_revenue, rank
🧠
*/

select category,
name as product_name,
sum(revenue) as total_revenue,
rank() over (partition by category order by sum(revenue) desc) as rank
from Products p
join Sales s
on p.product_id = s.product_id
group by category, name
having rank()<=3
order by category, rank;
/*
🧩 3️⃣ Running Total of Revenue by Month
Tables: Sales(sale_id, sale_date, revenue)
Task:
For each month, compute both:
the total monthly revenue, and
the running cumulative total up to that month.
*/

select month(sale_date) as sale_month,
Sum(revenue) as monthly_revenue,
sum(revenue) over( order by month(sale_date) 
                   rows between unbounded preceding and current row) as running_total_revenue
from Sales
group by month(sale_date)
order by sale_month;
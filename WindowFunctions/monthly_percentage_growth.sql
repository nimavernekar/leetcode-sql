/*
🧩 5️⃣ Month-Over-Month Growth Rate
Table: Revenue(month, total_revenue)
Task:
Calculate the month-over-month percentage change in revenue.
*/

SELECT month,
       total_revenue,
       LAG(total_revenue) OVER (ORDER BY month) AS prev_rev,
       ROUND(((total_revenue - LAG(total_revenue) OVER (ORDER BY month))
              / LAG(total_revenue) OVER (ORDER BY month)) * 100, 2) AS pct_change
FROM Revenue;

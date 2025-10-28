/*
🧩 2️⃣ Find Customers Who Purchased Every Month in 2024
Tables:
Orders(order_id, customer_id, order_date)
Task:
Find customers who placed at least one order in every month of 2024.

*/
select customer_id
from Orders
where extract(year from order_date) = 2024
group by customer_id
having count(distinct extract(month from order_date)) = 12;
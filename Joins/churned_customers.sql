/*
🧩 4️⃣ Identify Churned Customers
Tables:
Customers(customer_id, name)
Orders(order_id, customer_id, order_date)
Task:
Find all customers who haven’t placed an order in the last 90 days.
🧠 Hint: Use MAX(order_date) and a date filter with CURRENT_DATE.
*/

select c.customer_id, c.name
from Customers c
join Orders o on c.customer_id = o.customer_id
group by c.customer_id, c.name
having MAX(o.order_date)< CURRENT_DATE - INTERVAL '90 days'
or max(o.order_date) is null;
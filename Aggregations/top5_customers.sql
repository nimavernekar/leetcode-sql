/*
🧩 1️⃣ Top 5 Customers by Total Order Value
Tables: Orders(order_id, customer_id, order_date, total_amount)
Task:
Find the top 5 customers who have spent the most overall.
Show: customer_id, total_spent
*/

select customer_id, 
        sum(total_amount) as total_spent
        from Orders
        group by customer_id
        order by total_spent desc   
        limit 5;
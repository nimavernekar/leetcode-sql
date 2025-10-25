/*
✅ Pr:
Orders(order_id, customer_id, order_date, amount)
Task:

Return each customer’s second most recent order date.
*/

select customer_id, 
       order_date as second_most_recent_order_date
from (
    select customer_id, 
           order_date,
           row_number() over (partition by customer_id order by order_date desc) as order_rank
    from Orders
) ranked_orders
where order_rank = 2;
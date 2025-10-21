SELECT 
    p.name,
    SUM(o.quantity * o.price) AS total_revenue
FROM Order_Items o
JOIN Products p 
    ON o.product_id = p.id
GROUP BY p.name
ORDER BY total_revenue DESC
LIMIT 3;

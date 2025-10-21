SELECT c.name
FROM Customers c
LEFT JOIN Orders o 
    ON c.id = o.customer_id 
    AND YEAR(o.order_date) = 2024
WHERE o.order_id IS NULL;

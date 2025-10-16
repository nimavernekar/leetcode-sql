SELECT p.id, p.name
FROM Products p
LEFT JOIN Order_Items o
    ON p.id = o.product_id
WHERE o.order_id IS NULL;

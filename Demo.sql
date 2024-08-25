CREATE VIEW customer_orders_2023 AS
SELECT c.customer_id, c.name, SUM(o.amount) AS total_order_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_date BETWEEN '2023-01-01' AND '2023-12-31' AND c.location = 'New York'
GROUP BY c.customer_id, c.name;


/*Where clause going to execute as early as possible*/
CREATE VIEW customer_orders_2023 AS
SELECT c.customer_id, c.name, SUM(filtered_orders.amount) AS total_order_amount
FROM customers c
JOIN (
    SELECT o.customer_id, o.amount
    FROM orders o
    WHERE o.order_date BETWEEN '2023-01-01' AND '2023-12-31'
) AS filtered_orders ON c.customer_id = filtered_orders.customer_id
WHERE c.location = 'New York'
GROUP BY c.customer_id, c.name;

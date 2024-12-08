
-- How many orders are delivered on time vs orders delivered with a delay?
SELECT 
    CASE 
        WHEN DATEDIFF(order_estimated_delivery_date, order_delivered_customer_date) > 0 THEN 'Delayed' 
        ELSE 'On time'
    END AS delivery_status, 
COUNT(DISTINCT order_id) AS orders_count
FROM orders 
WHERE order_status = 'delivered'
AND order_estimated_delivery_date IS NOT NULL
AND order_delivered_customer_date IS NOT NULL
GROUP BY delivery_status;
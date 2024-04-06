SELECT *
FROM order_details
WHERE order_id IN (SELECT order_id FROM orders WHERE shipper_id=3);
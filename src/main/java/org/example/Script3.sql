select product_name from ORDERS
JOIN CUSTOMERS in ORDERS.customer_id = CUSTOMERS.id
where LOWER(CUSTOMERS.name) = LOWER(CUSTOMERS.name);
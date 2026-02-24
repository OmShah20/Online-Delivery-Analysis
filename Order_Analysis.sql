create database delivery_analyse;

use delivery_analyse;

CREATE TABLE order_delivery_data (
    order_id INT,
    user_id VARCHAR(20),
    restaurant_id INT,
    driver_id INT,
    item_name VARCHAR(100),
    quantity INT,
    total_price DECIMAL(10,2),
    order_time DATETIME,
    delivery_time DATETIME,
    delivery_duration_minutes INT,
    city VARCHAR(100),
    payment_method VARCHAR(50),
    order_status VARCHAR(50),
    driver_vehicle VARCHAR(50),
    restaurant_lat DECIMAL(10,6),
    restaurant_lon DECIMAL(10,6),
    customer_lat DECIMAL(10,6),
    customer_lon DECIMAL(10,6),
    driver_lat DECIMAL(10,6),
    driver_lon DECIMAL(10,6),
    delivery_distance_km DECIMAL(10,4),
    traffic_level VARCHAR(20),
    driver_availability VARCHAR(20)
);

select * from order_delivery_data;

-- 1. Data Exploration

SELECT distinct order_id FROM order_delivery_data;

SELECT *
FROM order_delivery_data
WHERE total_price IS NULL 
   OR delivery_time IS NULL;

select count(restaurant_id) from order_delivery_data;
SELECT DISTINCT city 
FROM order_delivery_data;

SELECT SUM(total_price) AS total_revenue 
FROM order_delivery_data;

SELECT city, COUNT(*) AS total_orders
FROM order_delivery_data
GROUP BY city
ORDER BY total_orders DESC;

SELECT city, SUM(total_price) AS revenue
FROM order_delivery_data
GROUP BY city
ORDER BY revenue DESC;
-- E-Commerce Customer Behavior Analysis

-- 1. Total Customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM ecommerce_customer_behavior_dataset;

-- 2. Total Revenue
SELECT SUM(total_amount) AS total_revenue
FROM ecommerce_customer_behavior_dataset;

-- 3. Revenue by Product Category
SELECT product_category, SUM(total_amount) AS revenue
FROM ecommerce_customer_behavior_dataset
GROUP BY product_category
ORDER BY revenue DESC;

-- 4. Customer Type Distribution (Returning vs New)
SELECT is_returning_customer, COUNT(*) AS customer_count
FROM ecommerce_customer_behavior_dataset
GROUP BY is_returning_customer;

-- 5. Revenue by Customer Type
SELECT is_returning_customer, SUM(total_amount) AS revenue
FROM ecommerce_customer_behavior_dataset
GROUP BY is_returning_customer;

-- 6. Average Spending by Device
SELECT device_type, AVG(total_amount) AS avg_spend
FROM ecommerce_customer_behavior_dataset
GROUP BY device_type
ORDER BY avg_spend DESC;

-- 7. Delivery Time vs Customer Rating
SELECT delivery_time_days, AVG(customer_rating) AS avg_rating
FROM ecommerce_customer_behavior_dataset
GROUP BY delivery_time_days
ORDER BY delivery_time_days;

-- 8. Revenue by City
SELECT city, SUM(total_amount) AS revenue
FROM ecommerce_customer_behavior_dataset
GROUP BY city
ORDER BY revenue DESC;

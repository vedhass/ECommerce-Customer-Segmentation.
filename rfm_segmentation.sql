CREATE TABLE ecom_sales (
    customer_id INT,
    customer_name VARCHAR(50),
    days_since_last_purchase INT,
    total_orders INT,
    total_spent_inr INT
);

INSERT INTO ecom_sales (customer_id, customer_name, days_since_last_purchase, total_orders, total_spent_inr) VALUES
(501, 'Aarav Sharma', 5, 12, 45000),
(502, 'Diya Patel', 120, 1, 1200),
(503, 'Aanya Iyer', 14, 8, 32000),
(504, 'Vihaan Gupta', 90, 2, 4500),
(505, 'Ananya Rao', 3, 15, 85000),
(506, 'Kabir Singh', 150, 1, 800),
(507, 'Ishaan Reddy', 20, 6, 22000),
(508, 'Meera Nair', 85, 3, 6000),
(509, 'Sai Verma', 8, 10, 51000),
(510, 'Riya Joshi', 200, 2, 3100);
SELECT 
    customer_name,
    days_since_last_purchase AS Recency,
    total_orders AS Frequency,
    total_spent_inr AS Monetary_Value,
    CASE 
        WHEN days_since_last_purchase <= 15 AND total_spent_inr >= 30000 THEN 'VIP Champion'
        WHEN days_since_last_purchase > 60 AND total_orders <= 3 THEN 'At-Risk Customer'
        ELSE 'Regular Value'
    END AS Customer_Segment
FROM ecom_sales
ORDER BY total_spent_inr DESC;

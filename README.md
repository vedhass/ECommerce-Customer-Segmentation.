# Advanced Customer Lifetime Value & RFM Segmentation Study (SQL)

## 1. ASK (Project Objective)
- **Business Task:** Classify consumer purchasing habits using a Recency, Frequency, and Monetary (RFM) behavioral model to optimize marketing campaign spend allocations.
- **Stakeholders:** E-commerce Growth Marketing Team, Operations Director.

## 2. PREPARE & PROCESS
- **Data Source:** Simulated first-party transactional records tracking purchase latency windows (days), frequency counters, and net monetary spend value (INR).
- **Data Integrity:** Built explicit relational schema layouts inside SQLite to handle complex conditional array testing without format failure.

## 3. ANALYZE (Advanced Logic SQL Script Deployed)
The complete analytical database build file is hosted in the `rfm_segmentation.sql` script inside this repo.

### Segment Grouping Logic Executed:
```sql
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
```

### Strategic Business Segment Counts Identified:
- **VIP Champions:** 4 high-yield profiles retaining massive immediate lifetime value (e.g., Ananya Rao, Sai Verma).
- **At-Risk Accounts:** 5 fading consumer layers requiring immediate re-engagement initiatives due to long purchasing gaps.

## 4. ACT (Strategic Interventions)
1. **VIP Protection:** Establish priority reward tiers and early product drop access for 'VIP Champions' to insulate core revenue margins.
2. **Win-Back Triggers:** Launch automated email discount funnels targeting the 'At-Risk' segment to lower customer attrition rates.

## Tools Used
- **SQLite Engine:** Multi-conditional logic processing and tabular segment indexing.
- **GitHub Core:** Digital portfolio hosting and markdown version documentation.

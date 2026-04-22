CREATE TABLE customers_raw (
    customerID TEXT,
    gender TEXT,
    SeniorCitizen TEXT,
    Partner TEXT,
    Dependents TEXT,
    tenure TEXT,
    PhoneService TEXT,
    MultipleLines TEXT,
    InternetService TEXT,
    OnlineSecurity TEXT,
    OnlineBackup TEXT,
    DeviceProtection TEXT,
    TechSupport TEXT,
    StreamingTV TEXT,
    StreamingMovies TEXT,
    Contract TEXT,
    PaperlessBilling TEXT,
    PaymentMethod TEXT,
    MonthlyCharges TEXT,
    TotalCharges TEXT,
    Churn TEXT
);

SELECT 
    Churn,
    COUNT(*) AS total_customers
FROM customers
GROUP BY Churn;

SELECT 
    Churn,
    SUM(MonthlyCharges) AS total_revenue
FROM customers
GROUP BY Churn;

SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = '1' THEN 1 ELSE 0 END) AS churned,
    ROUND(
        SUM(CASE WHEN Churn = '1' THEN 1 ELSE 0 END)::numeric / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY Contract
ORDER BY churn_rate DESC;

SELECT 
    CASE 
        WHEN tenure < 12 THEN '0-12 meses'
        WHEN tenure < 24 THEN '12-24 meses'
        WHEN tenure < 48 THEN '24-48 meses'
        ELSE '48+ meses'
    END AS tenure_group,
    
    COUNT(*) AS total,
    
    SUM(CASE WHEN Churn = '1' THEN 1 ELSE 0 END) AS churned,
    
    ROUND(
        SUM(CASE WHEN Churn = '1' THEN 1 ELSE 0 END)::numeric / COUNT(*),
        2
    ) AS churn_rate

FROM customers
GROUP BY tenure_group
ORDER BY tenure_group;

SELECT 
    Contract,
    SUM(CASE WHEN Churn = '1' THEN MonthlyCharges ELSE 0 END) AS lost_revenue
FROM customers
GROUP BY Contract
ORDER BY lost_revenue DESC;


SELECT 
    SUM(CASE WHEN Churn = '1' THEN MonthlyCharges ELSE 0 END) AS lost_revenue,
    SUM(MonthlyCharges) AS total_revenue,
    ROUND(
        SUM(CASE WHEN Churn = '1' THEN MonthlyCharges ELSE 0 END)::numeric 
        / SUM(MonthlyCharges),
        2
    ) AS lost_percentage
FROM customers;

SELECT 
    Contract,
    AVG(MonthlyCharges) AS avg_monthly,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = '1' THEN 1 ELSE 0 END) AS churned
FROM customers
GROUP BY Contract
ORDER BY churned DESC;


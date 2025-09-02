📊 HR Analytics SQL Project
📌 Overview

This project explores an HR dataset using SQL to uncover insights about employees, attrition, job satisfaction, and workforce demographics.
The goal is to analyze HR data with SQL queries and prepare insights for building an interactive Power BI Dashboard in the future.

🗂️ Dataset

File: hrdata.csv

Columns include:

EmployeeID, Age, Age_Band, Department, Job_Role,

Education, Marital_Status, Business_Travel,

Job_Satisfaction, Attrition

🛠️ Tools Used

SQL (PostgreSQL / MySQL / any RDBMS)

Power BI (Optional) for visualization

GitHub for version control & portfolio showcase

🔎 SQL Analysis
1️⃣ Employee Overview

Count employees per department

SELECT department, COUNT(*) AS employee_count
FROM hrdata
GROUP BY department;


📌 Insight: Shows department size distribution.

Average age per department

SELECT department, ROUND(AVG(age), 1) AS average_age
FROM hrdata
GROUP BY department;


📌 Insight: Helps compare workforce maturity across departments.

2️⃣ Job Satisfaction Analysis

Average job satisfaction by education level

SELECT education, ROUND(AVG(job_satisfaction), 2) AS average_satisfaction
FROM hrdata
GROUP BY education;


📌 Insight: Shows if education level impacts satisfaction.

Departments with highest & lowest satisfaction

SELECT department, ROUND(AVG(job_satisfaction), 2) AS average_satisfaction
FROM hrdata
GROUP BY department
ORDER BY average_satisfaction DESC
LIMIT 1;   -- Highest

SELECT department, ROUND(AVG(job_satisfaction), 2) AS average_satisfaction
FROM hrdata
GROUP BY department
ORDER BY average_satisfaction ASC
LIMIT 1;   -- Lowest


📌 Insight: Identifies best and worst departments by satisfaction.

3️⃣ Attrition Analysis

Attrition rate by age band

SELECT age_band, 
       ROUND(100.0 * SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hrdata
GROUP BY age_band
ORDER BY attrition_rate DESC;


📌 Insight: Younger age bands often have higher attrition.

Attrition by education & age band

SELECT education, age_band, 
       ROUND(100.0 * SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hrdata
GROUP BY education, age_band
ORDER BY attrition_rate DESC
LIMIT 5;

4️⃣ Demographic Insights

Satisfaction among frequent travelers

SELECT education, ROUND(AVG(job_satisfaction), 2) AS average_satisfaction
FROM hrdata
WHERE business_travel = 'Travel_Frequently'
GROUP BY education
ORDER BY average_satisfaction DESC
LIMIT 3;


Satisfaction among married employees

SELECT age_band, ROUND(AVG(job_satisfaction), 2) AS average_satisfaction
FROM hrdata
WHERE marital_status = 'Married'
GROUP BY age_band
ORDER BY average_satisfaction DESC
LIMIT 1;

✅ Key Insights

Marketing department shows the highest attrition.

Senior employees (40+) report higher satisfaction compared to younger employees.

Frequent business travelers tend to have lower job satisfaction.

Married employees aged 30–40 show the highest job satisfaction.
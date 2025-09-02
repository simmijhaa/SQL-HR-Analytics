USE hr_data;

-- ============================
-- 📊 Employee Overview
-- ============================

-- 1. Count employees in each department
SELECT department, COUNT(*) AS employee_count
FROM hrdata
GROUP BY department;

-- 2. Average age per department
SELECT department, ROUND(AVG(age), 1) AS average_age
FROM hrdata
GROUP BY department;

-- 3. Most common job roles in each department
SELECT department, job_role, COUNT(*) AS role_count
FROM hrdata
GROUP BY department, job_role
ORDER BY department, role_count DESC;


-- ============================
-- 😀 Job Satisfaction Analysis
-- ============================

-- 4. Average job satisfaction by education level
SELECT education, ROUND(AVG(job_satisfaction), 2) AS average_satisfaction
FROM hrdata
GROUP BY education;

-- 5. Average age by job satisfaction level
SELECT job_satisfaction, ROUND(AVG(age), 1) AS average_age
FROM hrdata
GROUP BY job_satisfaction;

-- 6. Departments with highest & lowest average job satisfaction
SELECT department, ROUND(AVG(job_satisfaction), 2) AS average_satisfaction
FROM hrdata
GROUP BY department
ORDER BY average_satisfaction DESC
LIMIT 1;   -- highest

SELECT department, ROUND(AVG(job_satisfaction), 2) AS average_satisfaction
FROM hrdata
GROUP BY department
ORDER BY average_satisfaction ASC
LIMIT 1;   -- lowest


-- ============================
-- 📉 Attrition Analysis
-- ============================

-- 7. Attrition rate by age band
SELECT age_band, 
       ROUND(100.0 * SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hrdata
GROUP BY age_band
ORDER BY attrition_rate DESC;

-- 8. Attrition rate by education & age band
SELECT education, age_band, 
       ROUND(100.0 * SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hrdata
GROUP BY education, age_band
ORDER BY attrition_rate DESC
LIMIT 5;

-- ============================
-- 👨‍👩‍👧 Demographic Insights
-- ============================

-- 9. Education level with highest satisfaction among frequent travelers
SELECT education, ROUND(AVG(job_satisfaction), 2) AS average_satisfaction
FROM hrdata
WHERE business_travel = 'Travel_Frequently'
GROUP BY education
ORDER BY average_satisfaction DESC
LIMIT 3;

-- 10. Age band with highest satisfaction among married employees
SELECT age_band, ROUND(AVG(job_satisfaction), 2) AS average_satisfaction
FROM hrdata
WHERE marital_status = 'Married'
GROUP BY age_band
ORDER BY average_satisfaction DESC
LIMIT 1;

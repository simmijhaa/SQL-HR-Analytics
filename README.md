📊 SQL HR Analytics Project
🔎 Overview

Employee attrition and workforce management are major challenges faced by HR teams. This project leverages SQL to analyze HR datasets and uncover actionable insights into attrition, workforce demographics, and departmental performance.

The goal of this project is to:

Identify factors influencing employee turnover

Provide data-driven HR insights using SQL queries

Demonstrate SQL skills for real-world business analytics

📂 Repository Structure
SQL-HR-Analytics/  
│── data/            # Dataset (hr_dataset.csv)  
│── queries.sql      # SQL queries for analysis  
│── outputs/         # Query results / visual exports  
│── README.md        # Project documentation  

🛠 Tools & Technologies

Database: MySQL / PostgreSQL

SQL Client: MySQL Workbench / pgAdmin

Version Control: Git & GitHub

Optional Visualization: Power BI / Tableau

📑 Dataset Overview

The dataset contains employee-level HR information including:

Demographics: Age, Gender, Marital Status

Job Details: Department, Job Role, Years of Service

Compensation: Salary, Education, Business Travel, Overtime

Attrition Flag: Whether an employee left (Yes/No)

Job Satisfaction & Performance metrics

📊 Size: ~1,470 rows | 35+ columns

🔑 Key SQL Queries & Insights
1️⃣ Employee Distribution by Department
SELECT department, COUNT(*) AS employee_count 
FROM hrdata 
GROUP BY department;


👉 Helps HR identify department-wise workforce size.

2️⃣ Average Age by Department
SELECT department, AVG(age) AS average_age 
FROM hrdata 
GROUP BY department;


👉 Reveals age diversity across departments.

3️⃣ Attrition Rate by Age Band
SELECT age_band, 
       SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*) AS attrition_rate
FROM hrdata 
GROUP BY age_band;


👉 Highlights vulnerable age groups with high attrition risk.

4️⃣ Top Job Roles with Highest Attrition
SELECT job_role, COUNT(*) AS attrition_count 
FROM hrdata 
WHERE attrition = 'Yes' 
GROUP BY job_role 
ORDER BY attrition_count DESC;


👉 Helps HR target retention strategies for critical job roles.

5️⃣ Impact of Business Travel on Attrition
SELECT business_travel, 
       SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*) AS attrition_rate
FROM hrdata 
GROUP BY business_travel;


👉 Uncovers how frequent travel influences employee turnover.

📌 Insights Derived

✔ Departments with highest & lowest job satisfaction
✔ Attrition rate across age bands & job roles
✔ Impact of business travel on employee turnover
✔ Career progression patterns (years of service vs attrition)
✔ Education, promotions & attrition relationship

🚀 Future Enhancements

🔹 Build a Power BI dashboard for visualization
🔹 Automate SQL queries for real-time HR reporting
🔹 Extend to predictive analytics (attrition prediction using ML)
🔹 Use advanced SQL (CTEs, Window Functions) for deeper insights

🎯 Learning Outcomes

Through this project, I:

Strengthened SQL query writing & database management skills

Gained hands-on experience in HR data analytics

Learned how to translate data into business insights

Created a portfolio-ready SQL analytics project

👩‍💻 Author

Simmi Jha – Data Analytics Enthusiast
🔗 Skills: SQL | Power BI | Python

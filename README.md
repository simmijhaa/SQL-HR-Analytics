📊 SQL HR Analytics
📌 Project Overview

The SQL HR Analytics project focuses on analyzing employee data to uncover workforce insights using SQL.
The objective is to help organizations understand trends in employee attrition, job satisfaction, demographics, and departmental performance, which can directly influence HR policies and decision-making.

This project demonstrates my ability to:

Work with relational databases

Write optimized SQL queries

Perform exploratory data analysis (EDA) using SQL

Generate actionable HR insights

🗂 Repository Structure
SQL-HR-Analytics/
│── data/
│   └── hr_dataset.csv           # Dataset used for analysis
│
│── sql/
│   └── queries.sql              # SQL queries written for insights
│
│── outputs/
│   └── analysis_summary.txt     # Final insights from SQL queries
│
│── README.md                    # Project documentation

⚙️ Tools & Technologies

Database: MySQL / PostgreSQL

SQL Client: pgAdmin / MySQL Workbench

Version Control: Git & GitHub

Optional Visualization: Power BI / Tableau

📌 Key SQL Queries & Use Cases

Employee Distribution by Department

SELECT department, COUNT(*) AS employee_count
FROM hrdata
GROUP BY department;


Average Age by Department

SELECT department, AVG(age) AS average_age
FROM hrdata
GROUP BY department;


Attrition Rate by Age Band

SELECT age_band, 
       SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100 AS attrition_rate
FROM hrdata
GROUP BY age_band;


Top Job Roles with Highest Attrition

SELECT job_role, COUNT(*) AS attrition_count
FROM hrdata
WHERE attrition = 'Yes'
GROUP BY job_role
ORDER BY attrition_count DESC;


Impact of Business Travel on Attrition

SELECT business_travel, 
       SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_cases
FROM hrdata
GROUP BY business_travel;

📈 Insights Derived

✔️ Departments with the highest and lowest job satisfaction
✔️ Attrition rate across age groups, education levels, and job roles
✔️ Impact of business travel & job role on employee turnover
✔️ Common workforce demographics & career progression
✔️ Patterns in education and promotions

📊 Future Enhancements

🔹 Build a Power BI dashboard to visualize attrition & demographics

🔹 Automate SQL queries for real-time HR reporting

🔹 Extend to predictive analytics (e.g., attrition prediction using Python ML models)

🔹 Incorporate advanced SQL techniques (CTEs, Window Functions) for deeper insights

🎯 Learning Outcomes

Through this project, I:

Strengthened my SQL query writing & database management skills

Gained hands-on experience in HR data analytics

Learned how to present data-driven insights for business impact

Created a portfolio-ready project showcasing SQL for real-world analytics

👩‍💻 Author

Simmi Jha
📌 Data Analytics Enthusiast | SQL | Power BI | Python

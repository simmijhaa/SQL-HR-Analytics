📊 SQL HR Analytics Project
📌 Project Overview

Employee attrition and workforce trends are among the top challenges faced by HR departments. This project leverages SQL to analyze HR data and uncover insights into attrition, demographics, and departmental performance.

The objective is to:

Identify factors influencing employee turnover

Provide actionable HR insights using SQL queries

Demonstrate SQL for real-world business analytics

📂 Repository Structure
SQL-HR-Analytics/
│── data/                # Dataset (hr_dataset.csv)  
│── queries.sql          # SQL queries for analysis  
│── outputs/             # Summary reports / visual exports  
│── README.md            # Project documentation  

🛠 Tools & Technologies

Database: MySQL / PostgreSQL

SQL Client: MySQL Workbench / pgAdmin

Version Control: Git & GitHub

Optional Visualization: Power BI / Tableau

📊 Dataset Overview

The dataset contains employee-level HR information such as:

Age, Gender, Marital Status

Department & Job Role

Salary, Education, Years of Service

Attrition (Yes/No)

Business Travel, Overtime, Job Satisfaction

📈 Rows: ~1,470
📊 Columns: 35+

🔑 Key SQL Queries & Use Cases

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
       SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS attrition_rate
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
       SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS attrition_rate
FROM hrdata
GROUP BY business_travel;

📌 Insights Derived

✔ Departments with highest & lowest job satisfaction
✔ Attrition rate across age bands and job roles
✔ Business travel impact on employee turnover
✔ Common career progression trends
✔ Patterns in education, promotions, and attrition

🚀 Future Enhancements

Build a Power BI dashboard to visualize attrition & demographics

Automate SQL queries for real-time HR reporting

Extend to predictive analytics (attrition prediction using ML models)

Incorporate advanced SQL techniques (CTEs, Window Functions) for deeper insights

🎯 Learning Outcomes

Through this project, I:

Strengthened SQL query writing & database management skills

Gained hands-on experience in HR data analytics

Learned how to present data-driven insights for business impact

Created a portfolio-ready project showcasing SQL for HR analytics

👩‍💻 Author

Simmi Jha
Data Analytics Enthusiast | SQL | Power BI | Python

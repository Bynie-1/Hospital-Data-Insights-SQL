⛨ Hospital Data Insights with SQL
☁︎ Project Overview

✦ This project analyzes hospital data using SQL to answer 10 real-world problem statements. It covers patient counts, doctor availability, department performance, medical expenses, and hospital stay durations.

☁︎ The repository contains:
✦ A raw dataset (hospital_data.csv)
✦ A SQL file (hospital_data_analysis.sql) with questions + solutions
✦ A certificate of completion from the 30 Days of SQL micro-course
✦ This project demonstrates how SQL can be used to extract actionable insights from healthcare data.

☁︎ Dataset

✦ The dataset (hospital_data.csv) includes the following fields:
✦ Hospital_Name – name of the hospital
✦ Location – city where the hospital is located
✦ Department – department in the hospital
✦ Patients_Count – number of patients treated
✦ Doctors_Count – number of doctors available
✦ Admission_Date – patient admission date
✦ Discharge_Date – patient discharge date
✦ Medical_Expenses – cost incurred per patient
✦ You can import this CSV into any SQL database (MySQL, PostgreSQL, SQLite, etc.) as a table called Hospital_data.

☁︎ Problem Statements Solved

⟡ The project answers the following questions using SQL queries:
⟡ Total number of patients across all hospitals
⟡ Average number of doctors per hospital
⟡ Top 3 departments with the highest number of patients
⟡ Hospital with the maximum medical expenses
⟡ Daily average medical expenses per hospital
⟡ Longest hospital stay duration
⟡ Total patients treated per city
⟡ Average length of stay per department
⟡ Department with the lowest number of patients
⟡ Monthly medical expenses report

📂 Repository Structure
📁 Hospital-Data-Insights-SQL
│
├── 📁 certificate/                  # Course completion certificate
│
├── hospital_data.csv                # Raw dataset
├── hospital_data_analysis.sql       # SQL file with 10 questions & queries
├── README.md                        # Project documentation

☁︎ How to Use
⟡ Clone the repository:
⟡ git clone https://github.com/your-username/Hospital-Data-Insights-SQL.git
cd Hospital-Data-Insights-SQL

⟡ Import the dataset into your SQL environment:

CREATE TABLE Hospital_data (
    Hospital_Name VARCHAR(100),
    Location VARCHAR(100),
    Department VARCHAR(100),
    Patients_Count INT,
    Doctors_Count INT,
    Admission_Date DATE,
    Discharge_Date DATE,
    Medical_Expenses DECIMAL(10,2)
);

⟡ -- Load the data from CSV (syntax depends on your SQL database)


⟡ Open hospital_data_analysis.sql
⟡ Each question is written as a comment (-- Question)
⟡ The solution query follows immediately
⟡ Run the queries on the Hospital_data table.

☁︎ Certificate

This project was completed as part of the 30 Days of SQL Micro-Course, and a certificate is included in the repository.

☁︎ Key Learnings

Writing SQL queries in a Q&A problem-solving format
Data aggregation with SUM(), AVG(), COUNT()
Ranking with ORDER BY and LIMIT
Using date functions for calculating stay durations and monthly reports
Presenting SQL work in a structured, portfolio-ready way

☁︎ Example Query
Q3: Top 3 departments with the highest number of patients

SELECT department, patients_count
FROM Hospital_data
ORDER BY patients_count DESC
LIMIT 3;

☁︎ Author
Aditya kumar rana

LinkedIn - https://www.linkedin.com/in/aditya-kumar-rana-4aa06b293/


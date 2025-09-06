-- 30 Days of SQL Micro course Answer PDF

SELECT * FROM Hospital_data;

-- 1. Total Number of Patients
-- o Write an SQL query to find the total number of patients across all hospitals.

Answer:- 

SELECT SUM(patients_count) AS Total_patients 
FROM Hospital_data;


-- 2. Average Number of Doctors per Hospital 
-- o Retrieve the average count of doctors available in each hospital.

Answer:- 

SELECT AVG(doctors_count) AS Doctors_per_hospital 
FROM Hospital_data;


-- 3. Top 3 Departments with the Highest Number of Patients 
-- o Find the top 3 hospital departments that have the highest number of patients.

Answer:- 

SELECT department, patients_count 
FROM Hospital_data 
ORDER BY patients_count DESC 
LIMIT 3;


-- 4. Hospital with the Maximum Medical Expenses 
-- o Identify the hospital that recorded the highest medical expenses.

Answer:- 

SELECT hospital_name, medical_expenses 
FROM Hospital_data 
ORDER BY medical_expenses DESC 
LIMIT 1;

-- 5. Daily Average Medical Expenses 
-- o Calculate the average medical expenses per day for each hospital. 

Answer:- 

SELECT hospital_name, 
discharge_date - admission_date AS Total_days, 
medical_expenses AS Total_medical_expenses,
medical_expenses/(discharge_date - admission_date) AS Daily_average_medial_expenses
FROM Hospital_data; 


-- 6. Longest Hospital Stay 
-- o Find the patient with the longest stay by calculating the difference between Discharge Date and Admission Date.

Answer:- 

SELECT discharge_date - admission_date AS Longest_stay 
FROM Hospital_data 
ORDER BY discharge_date - admission_date DESC 
LIMIT 1;


-- 7. Total Patients Treated Per City 
-- o Count the total number of patients treated in each city.

Answer:- 

SELECT Location, SUM(patients_count) AS Total_patients_In_Each_City 
FROM Hospital_data
GROUP BY Location;


8. Average Length of Stay Per Department 
o Calculate the average number of days patients spend in each department.

Answer:- 

SELECT Department, SUM(discharge_date - admission_date) AS Stay_per_department 
FROM Hospital_data
GROUP BY department;

-- 9. Identify the Department with the Lowest Number of Patients 
-- o Find the department with the least number of patients.

Answer:- 

SELECT department, patients_count FROM Hospital_data ORDER BY patients_count LIMIT 1;


-- 10. Monthly Medical Expenses Report 
-- • Group the data by month and calculate the total medical expenses for each month.

Answer:- 

SELECT EXTRACT(MONTH FROM admission_date) AS Total_months, SUM(medical_expenses) AS total_medical_expenses_per_month 
FROM Hospital_data
GROUP BY Total_months
ORDER BY Total_months;
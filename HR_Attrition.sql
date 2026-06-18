CREATE DATABASE PROJECT
USE PROJECT

CREATE TABLE Employees (
    Employee_ID INT,
    Age INT,
    Attrition CHAR(3),
    Business_Travel VARCHAR(20),
    Department VARCHAR(30),
    Distance_From_Home INT,
    Education VARCHAR(15),
    Environment_Satisfaction INT,
    Gender VARCHAR(10),
    Salary FLOAT,
    Job_Involvement INT,
    Job_Level INT,
    Job_Role VARCHAR(20),
    Job_Satisfaction INT,
    Marital_Status VARCHAR(30),
    Number_of_Companies_Worked_previously INT,
    Overtime CHAR(5),
    Salary_Hike_in_percent INT,
    Total_working_years_experience INT,
    Work_life_balance INT,
    No_of_years_worked_at_current_company INT,
    No_of_years_in_current_role INT,
    Years_since_last_promotion INT
);

---- From 'File Path + \FileName + .ext'
BULK INSERT EMPLOYEES 
FROM 'D:\HR_Attrition_Project_SQL_BI\HR_Attrition_dataset.csv'
    WITH (
        FIRSTROW =2,            -- OUR DATA START from 2nd Rows, 1st id HEADER
        FIELDTERMINATOR=',',
        ROWTERMINATOR='\n'      -- Start from 2nd line= '\n'
        );

Select * from Employees 

-- Updating the table

INSERT INTO Employees
(
    Employee_ID,Age,Attrition,Business_Travel,Department,Distance_From_Home,Education,Environment_Satisfaction,Gender,
    Salary,Job_Involvement,Job_Level,Job_Role,Job_Satisfaction,Marital_Status,Number_of_Companies_Worked_previously,
    Overtime,Salary_Hike_in_percent,Total_working_years_experience,Work_life_balance,No_of_years_worked_at_current_company,
    No_of_years_in_current_role,Years_since_last_promotion)
VALUES
-- Employee 10001
(10001, 29, 'No', 'Travel Rarely', 'Sales', 8, 'Graduation', 3, 'Male', 55000, 3, 1, 'HR', 4, 'Single', 1, 'No', 12, 5, 3, 2, 2, 1),

-- Employee 10002
(10002, 41, 'Yes', 'Travel Frequently', 'IT', 15, 'Postgraduate', 2, 'Female', 73000, 2, 2, 'IT', 3, 'Married', 3, 'Yes', 20, 12, 2, 7, 5, 3),

-- Employee 10003
(10003, 34, 'No', 'Non-Travel', 'Finance', 5, 'Doctorate', 4, 'Male', 91000, 4, 3, 'Manager', 4, 'Divorced', 4, 'No', 15, 9, 4, 6, 4, 2),

-- Employee 10004
(10004, 27, 'No', 'Travel Rarely', 'HR', 3, 'Graduation', 3, 'Female', 48000, 3, 1, 'Executive', 3, 'Single', 2, 'No', 11, 4, 3, 2, 1, 0),

-- Employee 10005
(10005, 45, 'Yes', 'Travel Frequently', 'Sales', 20, 'Postgraduate', 1, 'Male', 85000, 2, 3, 'Manager', 2, 'Married', 5, 'Yes', 18, 18, 2, 10, 6, 4);


Select COUNT(*) FROM Employees





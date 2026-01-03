USE hr_analysis;

-- View all employee records
SELECT *
FROM employee_records;

-- TOTAL EMPLOYEES PER DEPARTMENT
SELECT
    department,
    COUNT(DISTINCT `EMPLOYEE ID`) AS total_employees
FROM employee_records
GROUP BY department
ORDER BY total_employees ASC;

-- AVERAGE LENGTH OF SERVICE BY DEPARTMENT
SELECT
    department,
    AVG(`LENGTH OF SERVICE`) AS avg_length_of_service
FROM employee_records
GROUP BY department
ORDER BY avg_length_of_service DESC;


-- ACTIVE VS TERMINATED EMPLOYEES
SELECT
    status,
    COUNT(DISTINCT `EMPLOYEE ID` ) AS employee_count
FROM employee_records
GROUP BY status;

-- TERMINATIONS PER YEAR
SELECT
    `STATUS YEAR`,
    COUNT(DISTINCT `EMPLOYEE ID`) AS terminations
FROM employee_records
WHERE status = 'TERMINATED'
GROUP BY `STATUS YEAR`
ORDER BY `STATUS YEAR`;

-- TERMINATIONS BY GENDER
SELECT
    GENDER,
    COUNT(DISTINCT `EMPLOYEE ID`) AS terminated_employees
FROM employee_records
WHERE status = 'TERMINATED'
GROUP BY GENDER;

-- TOP CITIES WITH HIGHEST EMPLOYEES TURNOVER
SELECT
    CITY,
    COUNT(DISTINCT `EMPLOYEE ID` ) AS termination_count
FROM employee_records
WHERE status = 'TERMINATED'
GROUP BY CITY
ORDER BY termination_count DESC;








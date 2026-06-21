# Groupby Function in SQL

use employees;

SELECT 
    *
FROM
    employee_details;

# groupby()
SELECT 
    department, COUNT(*) AS total_employees
FROM
    employee_details
GROUP BY department;

# using groupby() with multiple columns
SELECT 
    department, position, COUNT(*)
FROM
    employee_details
GROUP BY department , position;

# using groupby with having function we can not use where while using groupby have to use having

SELECT 
    department, COUNT(*) AS total
FROM
    employee_details
GROUP BY department
HAVING total > 3;

# use of where and having together.

SELECT 
    department, ROUND(AVG(salary), 2) AS avg_salary
FROM
    employee_details
WHERE
    status = 'Active'
GROUP BY department
HAVING avg_salary > 60000;
 
# using with rollup in mysql
SELECT 
    department, ROUND(AVG(salary), 2) AS avg_salary
FROM
    employee_details
WHERE
    status = 'Active'
GROUP BY department WITH ROLLUP
HAVING avg_salary > 50000;

# Views in MySQL

use employees;

# normal query
SELECT 
    emp_id,
    employee_personal_details.first_name,
    employee_personal_details.last_name,
    department,
    position
FROM
    employee_details
        JOIN
    employee_personal_details ON emp_id = employee_id;
 
 
# view query
CREATE VIEW employee_public_details AS
SELECT 
    emp_id,
    employee_personal_details.first_name,
    employee_personal_details.last_name,
    department,
    position
FROM
    employee_details
        JOIN
    employee_personal_details ON emp_id = employee_id;
    
select * from employee_public_details;

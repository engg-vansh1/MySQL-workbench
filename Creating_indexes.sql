use employees;

select * from employee_public_details;

# ordering the existing view and adding the salary details of employees
CREATE OR REPLACE VIEW employee_public_details AS
    SELECT 
        emp_id, first_name, last_name, department, position, salary
    FROM
        employee_details
            JOIN
        employee_personal_details ON employee_details.emp_id = employee_personal_details.employee_id;

SELECT 
    *
FROM
    employee_public_details;
    
# Index in SQL
# Creating Indexes

SELECT 
    *
FROM
    employee_details
WHERE
    position = 'Analyst';

create index idx on employee_details(position);

SELECT 
    *
FROM
    employee_details
WHERE
    position = 'Analyst';

SELECT 
    *
FROM
    employee_details
WHERE
    position = 'Analyst'
        AND department = 'Finance';

# droping indexes

drop index idx on employee_details;

# multiple indexes creation
create index idx on employee_details(department, position);

SELECT 
    *
FROM
    employee_details
WHERE
    position = 'Analyst'
        AND department = 'Finance';

# Showing the indexes
show index from employee_details;

drop index idx on employee_details;


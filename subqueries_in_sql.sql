# creating subqueries 

select * from employees_north;

select first_name, last_name, round(salary,0) from employees_north
where salary > (select avg(salary)  from employees_north);

# reference based subquery

SELECT 
    first_name,
    last_name,
    ROUND(salary, 0),
    department AS emp_salary
FROM
    employees_north en
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employees_north
        WHERE
            department = en.department);
            

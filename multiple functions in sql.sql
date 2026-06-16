# Functions in SQL

use employees;


# Concat
select concat(first_name, ' ', last_name) as name from employee_personal_details;

# now() #datediff(), current_date(), round(,2) 

SELECT 
    ROUND(DATEDIFF(now(), hire_date) / 365,
            2) as working_years
FROM
    employee_details;
    

# length()
select first_name, length(first_name) as len from employee_personal_details
 order by len desc limit 6 ;
 
# upper()
select last_name, upper(last_name) as upper_case from employee_personal_details;

#lower()
select first_name , lower(first_name) as lower_case from employee_personal_details;

# replace()
select replace('abc','b','c'); # output: acc

#trim()

select '   hello   ',trim('    hello    ') as trimmed_version;

# current date only
select current_date();

#current time only
select current_time();

# both date and time()
select current_timestamp(); # same as now()

# date() provide exact date
select date(now());

# monthname, year, day
select monthname(now());
select year(now());
select day(now());

# avg() for average
 select round( avg(salary), 0) from employees_north;
 
# rand() for random number between 0 and 1
 select rand() as random_number;

# min() for finding minimum value.
select round( min(salary),0) from employees_south;
 
# max() for finding maximum values
select round(max(salary),0) from employees_north;

# count() for getting the count of a character, number, values

select department, count(emp_id) as total_employees from employee_details group by department;

# sum() for getting total of values
select round( sum(salary))  as total_salary from employees_south;

# IFNULL()	Replace NULL with a default value

select IFNULL(NULL, 'N/A') as not_null ;
select null;

# mod() to get remaining values

select mod(50,3) as remainder;

# floor() to round down to nearest whole number
select floor(5.6) as whole_number;

# ceil() to round up to nearest whole number
select ceil(5.1) as whole_number;

# abs() to get absolute values
select abs(-56) as absolute_value;


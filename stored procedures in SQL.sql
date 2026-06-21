# Stored Procedures in MySQL

use employees;

delimiter //

create procedure get_employee_details(in p_emp_id int)

begin 
select * from employee_details where emp_id = p_emp_id ;

end//

delimiter ;

# calling the procedure or self created function
call get_employee_details(3);

# deleting the procedure 

drop procedure if exists get_employee_details;


use vansh;
# not null constraint

create table employees (
	id int primary key not null,
    name varchar(50) not null
);

select * from employees;

# unique constraint

create table users(
	username varchar(100) unique,
    email varchar(100) unique
);

describe users;

# default constraint

create table products (
	product_name varchar(100),
    status varchar(50) default 'In Stock'
);
select* from products;

# check constraint

create table accounts (
	id int,
    balance decimal(10,2) check (balance >=0)
);
insert into accounts values (33,3800);
# insert into accounts values (3,-2200); # will raise an error due to negative balance

# naming constraints

create table college_students (
	roll_no int primary key,
    age int constraint age_check check (age >= 18),
    email varchar(100) unique
);

insert into college_students values(23,34,'vansh26io065@satiengg.in');

# raise an error and in cmd prompt provide the constraint name where the error occurs
# insert into college_students values(12,17,'ajeet26io02@satiengg.in');

select * from college_students;
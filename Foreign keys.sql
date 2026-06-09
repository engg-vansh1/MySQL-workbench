# Foreign keys

-- create database school;
-- use school;

create table classes(
	class_id int auto_increment primary key,
    class_name varchar(50) not null
);

create table students (
	student_id int auto_increment primary key,
    student_name varchar(100) not null default 'Unknown',
    student_class_id int ,
    FOREIGN KEY (student_class_id) REFERENCES classes(class_id)
    ON UPDATE CASCADE
    # ON UPDATE DELETE SET NULL
);

select * from classes;
select * from students;

insert into classes (class_name) 
values ('Maths'), ('Science'), ('History');

insert into students (student_name, student_class_id) 
values ('Ajeet',1), ('Kanishk',2), ('Vansh',1), ('Deepanshu',3);

select * from classes;
select * from students;

# To view the relationships

show create table classes;
show create table students;

# To see all foreign keys in the current database

SELECT table_name, column_name, constraint_name, 
referenced_table_name, referenced_column_name
FROM information_schema.key_column_usage

WHERE referenced_table_name IS NOT NULL AND table_schema = 'school';

# ON UPDATE CASCADE	

UPDATE classes SET class_id = 10 WHERE class_id = 1;
select * from classes;
select * from students;

# ON DELETE SET NULL

DELETE FROM classes WHERE class_id = 3;

# Alternatives
# ON DELETE CASCADE
# ON DELETE RESTRICT
# ON DELTE NO ACTION
# ON DELETE SET DEFAULT - not works in MySQL, use in PostgreSQL

# ON UPDATE CASCADE -is useful when the primary key 
# of the parent table might change (rare but possible).

# ON DELETE SET NULL -is helpful when you want to preserve child 
# records but indicate that the relationship has been broken.

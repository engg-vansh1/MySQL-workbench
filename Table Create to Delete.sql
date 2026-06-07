create table students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(10),
    date_of_birth DATE
);

RENAME TABLE students TO student;

INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (1, 'Ayesha Khan', 16, '10th', '2007-05-15');
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (2, 'Ravi Sharma', 17, '11th', '2006-03-22'); 
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (3, 'Meena Joshi', 15, '9th', NULL);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (4, 'Arjun Verma', 18, '12th', NULL);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (5, 'Sara Ali', 16, '10th', NULL);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (6, 'Karan Mehta', 17, '11th', NULL);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (7, 'Tanya Roy', 15, '9th', NULL);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (8, 'Vikram Singh', 18, '12th', NULL);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (9, 'Anjali Desai', 16, '10th', NULL);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (10, 'Farhan Zaidi', 17, '11th', NULL);

select * from student;

UPDATE student SET grade = '10th' WHERE grade = "X";

select * from student;

UPDATE student SET date_of_birth = "2005-02-19" WHERE id= 3;

SELECT * FROM student;

UPDATE student SET age = 16, grade= "10th" WHERE id=6;
select * from student;

UPDATE student SET age = age+ 1;
select * from student;

UPDATE student SET grade = NULL WHERE grade ="9th";
select * from student;

UPDATE student SET grade = "Unknown" WHERE grade is NULL;
SELECT * FROM student;

UPDATE student SET age = age +1 WHERE age < 18;
select * from student;

delete from student where grade="Unknown";
select * from student;

delete from student where name="Farhan Zaidi";
select * from student;

delete from student where age>=19;
select * from student;

delete from student where date_of_birth is null;
select * from student;

delete from student;
select * from student;

drop table student;
select * from student;
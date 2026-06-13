# JOIN Functions in SQL

use school;

show tables;

create table student_details (
	id int primary key not null,
    student_name varchar(100) 
);

create table student_marks (
	student_id int not null,
    subject_name varchar(50) not null,
    marks int
);

INSERT INTO student_details (id, student_name) VALUES
(1, 'Aarav Sharma'),
(2, 'Vivaan Verma'),
(3, 'Aditya Singh'),
(4, 'Krishna Patel'),
(5, 'Aryan Gupta'),
(6, 'Rohan Mehta'),
(7, 'Kunal Jain'),
(8, 'Yash Agarwal'),
(9, 'Harsh Tiwari'),
(10, 'Ankit Mishra'),
(11, 'Priya Sharma'),
(12, 'Ananya Gupta'),
(13, 'Sneha Verma'),
(14, 'Kavya Singh'),
(15, 'Neha Patel'),
(16, 'Ishita Jain'),
(17, 'Ritika Mehta'),
(18, 'Pooja Agarwal'),
(19, 'Muskan Tiwari'),
(20, 'Aditi Mishra'),
(21, 'Rahul Sharma'),
(22, 'Siddharth Verma'),
(23, 'Manav Singh'),
(24, 'Dev Patel'),
(25, 'Akash Gupta'),
(26, 'Nitin Jain'),
(27, 'Varun Mehta'),
(28, 'Deepak Agarwal'),
(29, 'Shubham Tiwari'),
(30, 'Mohit Mishra');

select * from student_details;

INSERT INTO student_marks (student_id, subject_name, marks) VALUES
(1, 'Mathematics', 85),
(1, 'Science', 78),
(1, 'English', 92),

(2, 'Mathematics', null),
(2, 'Science', 88),
(2, 'English', 81),

(3, 'Mathematics', 91),
(3, 'Science', 84),
(3, 'English', null),

(4, 'Mathematics', 67),
(4, 'Science', 72),
(4, 'English', 80),

(5, 'Mathematics', 95),
(5, 'Science', null),
(5, 'English', 93),

(6, 'Mathematics', 74),
(6, 'Science', 69),
(6, 'English', 82),

(7, 'Mathematics', 88),
(7, 'Science', 91),
(7, 'English', null),

(8, 'Mathematics', 79),
(8, 'Science', null),
(8, 'English', 77),

(9, 'Mathematics', 62),
(9, 'Science', 71),
(9, 'English', 68),

(10, 'Mathematics', 84),
(10, 'Science', 87),
(10, 'English', 90),

(11, 'Mathematics', 93),
(11, 'Science', 89),
(11, 'English', null),

(12, 'Mathematics', null),
(12, 'Science', 81),
(12, 'English', 79),

(13, 'Mathematics', 69),
(13, 'Science', 75),
(13, 'English', 72),

(14, 'Mathematics', 87),
(14, 'Science', null),
(14, 'English', 88),

(15, 'Mathematics', 91),
(15, 'Science', 85),
(15, 'English', 94),

(16, 'Mathematics', 73),
(16, 'Science', 78),
(16, 'English', 80),

(17, 'Mathematics', null),
(17, 'Science', 84),
(17, 'English', 86),

(18, 'Mathematics', 77),
(18, 'Science', 73),
(18, 'English', 81),

(19, 'Mathematics', 96),
(19, 'Science', 94),
(19, 'English', 97),

(20, 'Mathematics', 68),
(20, 'Science', 74),
(20, 'English', 70),

(21, 'Mathematics', null),
(21, 'Science', 86),
(21, 'English', 91),

(22, 'Mathematics', 71),
(22, 'Science', null),
(22, 'English', 78),

(23, 'Mathematics', 85),
(23, 'Science', 88),
(23, 'English', 84),

(24, 'Mathematics', 80),
(24, 'Science', 82),
(24, 'English', 79),

(25, 'Mathematics', null),
(25, 'Science', 95),
(25, 'English', null),

(26, 'Mathematics', 65),
(26, 'Science', 70),
(26, 'English', 67),

(27, 'Mathematics', 90),
(27, 'Science', 87),
(27, 'English', 92),

(28, 'Mathematics', 83),
(28, 'Science', null),
(28, 'English', 85),

(29, 'Mathematics', 72),
(29, 'Science', 76),
(29, 'English', 74),

(30, 'Mathematics', null),
(30, 'Science', 90),
(30, 'English', 87);

select * from student_marks;

# Inner Join

select * from student_details inner join student_marks
 on student_details.id = student_marks.student_id; 
 
 # LEFT join
 
 select id, student_name, marks from student_details left join student_marks 
 on student_details.id  = student_marks.student_id;
 
 # RIGHT join
 
 select * from student_details right join student_marks 
 on student_details.id = student_marks.student_id;
 
 # CROSS
 select student_id, student_name, marks from student_details cross join student_marks 
 on student_details.id = student_marks.student_id;
 
 
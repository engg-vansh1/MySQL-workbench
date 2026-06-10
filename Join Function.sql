# Join Function in SQL

use school;

show tables;

create table student_details (
	student_id int primary key,
    student_name varchar(100) not null
);

create table student_marks (
	std_id int not null,
	subject_name varchar(50),
    marks int
);

insert into student_details (student_id, student_name) 
values (1001, 'Aarav Sharma'),
(1002, 'Vivaan Verma'),
(1003, 'Aditya Singh'),
(1004, 'Arjun Patel'),
(1005, 'Reyansh Gupta'),
(1006, 'Krishna Mehta'),
(1007, 'Ishaan Kumar'),
(1008, 'Sai Reddy'),
(1009, 'Dhruv Joshi'),
(1010, 'Kabir Malhotra'),
(1011, 'Ananya Sharma'),
(1012, 'Diya Verma'),
(1013, 'Aadhya Singh'),
(1014, 'Myra Patel'),
(1015, 'Pari Gupta'),
(1016, 'Saanvi Mehta'),
(1017, 'Kiara Kumar'),
(1018, 'Anika Reddy'),
(1019, 'Riya Joshi'),
(1020, 'Kavya Malhotra'),
(1021, 'Yash Sharma'),
(1022, 'Harsh Verma'),
(1023, 'Neha Singh'),
(1024, 'Pooja Patel'),
(1025, 'Rohit Gupta'),
(1026, 'Sneha Mehta'),
(1027, 'Karan Kumar'),
(1028, 'Meera Reddy'),
(1029, 'Rahul Joshi'),
(1030, 'Nisha Malhotra');


insert into student_marks (std_id, subject_name, marks)
values (1001, 'Mathematics', 82),
(1001, 'Science', 69),
(1001, 'Biology', 76),

(1002, 'Mathematics', 91),
(1002, 'Science', 88),
(1002, 'Biology', NULL),

(1003, 'Mathematics', 75),
(1003, 'Science', 80),
(1003, 'Biology', 72),

(1004, 'Mathematics', NULL),
(1004, 'Science', 67),
(1004, 'Biology', 70),

(1005, 'Mathematics', 89),
(1005, 'Science', 92),
(1005, 'Biology', 85),

(1006, 'Mathematics', 64),
(1006, 'Science', NULL),
(1006, 'Biology', 71),

(1007, 'Mathematics', 78),
(1007, 'Science', 74),
(1007, 'Biology', 80),

(1008, 'Mathematics', 95),
(1008, 'Science', 90),
(1008, 'Biology', 93),

(1009, 'Mathematics', 56),
(1009, 'Science', 61),
(1009, 'Biology', NULL),

(1010, 'Mathematics', 84),
(1010, 'Science', 79),
(1010, 'Biology', 88),

(1011, 'Mathematics', 90),
(1011, 'Science', 87),
(1011, 'Biology', 91),

(1012, 'Mathematics', 72),
(1012, 'Science', NULL),
(1012, 'Biology', 68),

(1013, 'Mathematics', 81),
(1013, 'Science', 85),
(1013, 'Biology', 79),

(1014, 'Mathematics', 66),
(1014, 'Science', 70),
(1014, 'Biology', 73),

(1015, 'Mathematics', NULL),
(1015, 'Science', 94),
(1015, 'Biology', 89),

(1016, 'Mathematics', 77),
(1016, 'Science', 82),
(1016, 'Biology', 75),

(1017, 'Mathematics', 88),
(1017, 'Science', 84),
(1017, 'Biology', NULL),

(1018, 'Mathematics', 69),
(1018, 'Science', 73),
(1018, 'Biology', 78),

(1019, 'Mathematics', 93),
(1019, 'Science', 96),
(1019, 'Biology', 90),

(1020, 'Mathematics', 58),
(1020, 'Science', NULL),
(1020, 'Biology', 65),

(1021, 'Mathematics', 80),
(1021, 'Science', 77),
(1021, 'Biology', 82),

(1022, 'Mathematics', 87),
(1022, 'Science', 83),
(1022, 'Biology', 85),

(1023, 'Mathematics', NULL),
(1023, 'Science', 72),
(1023, 'Biology', 74),

(1024, 'Mathematics', 71),
(1024, 'Science', 69),
(1024, 'Biology', 67),

(1025, 'Mathematics', 94),
(1025, 'Science', 91),
(1025, 'Biology', 95),

(1026, 'Mathematics', 63),
(1026, 'Science', 66),
(1026, 'Biology', NULL),

(1027, 'Mathematics', 86),
(1027, 'Science', 89),
(1027, 'Biology', 84),

(1028, 'Mathematics', 74),
(1028, 'Science', NULL),
(1028, 'Biology', 77),

(1029, 'Mathematics', 79),
(1029, 'Science', 81),
(1029, 'Biology', 83),

(1030, 'Mathematics', 92),
(1030, 'Science', 88),
(1030, 'Biology', NULL);


select * from student_details;
select * from student_marks;

# Applying Joining Function

select student_id, student_name, marks from student_details 
inner join student_marks on student_details.student_id = student_marks.std_id;


use school;

show tables;

select * from classes;

create table classes_1 (
	class_id1 int auto_increment primary key not null,
    class_name1 varchar(50) not null
);


alter table classes_1 drop column class_id1;

alter table classes_1 add column class_id1 
int auto_increment primary key;

create table students1 (
	student_id1 int auto_increment primary key,
    sutdent_name varchar(50) not null,
    student_class_id int,
    foreign key (student_class_id) references classes_1(class_id1)
    on delete set null
    on update cascade
);

insert into classes_1 (class_name1) values
('Mathematics'), ('Science'), ('Biology'), ('Zoology');

insert into students1 (sutdent_name,student_class_id) values
('Ajeet Singh',1), ('Kanishk',3), ('Deepanshu',2),
('Vansh',2), ('Mohit',4);

alter table students1 rename column sutdent_name to student_name;

alter table classes_1 modify column class_name1 varchar(50) after class_id1;
select * from classes_1;

select * from students1;

delete from classes_1 where class_id1 = 4;
select * from classes_1;
select * from students1;


insert into classes_1 (class_id1, class_name1) values (4,'Zoology');


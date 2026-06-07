start transaction;
create table personal (
	id int primary key not null,
    name varchar(100) not null default 'Unknown',
    age int(2) not null,
    email varchar(100) not null
);
commit;

set @@autocommit = 0;

start transaction;
insert into personal(id,name,age,email) 
values(65,'Vansh', 20,'engg.vansh1@gmail.com'),
(2,'Ajeet', 23,'singh.ajeet@gmail.com');
commit;

start transaction;
update personal set age = age + 1 where id = 65 ;
update personal set age = age-1 where id = 2;
commit;
-- rollback;
select * from personal;

set @@autocommit = 1;
commit;
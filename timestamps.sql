select current_date(); # to get current date 
select current_time(); # to get current time
select current_timestamp();  # to get current date and time 

ALTER TABLE personal ADD COLUMN joining_date DATETIME default (now()); # now() is an alternative of timestamp...
select * from personal;

# returns the local date and time of the MySQL server, not the client's time zone.
select localtime();
select localtimestamp();

create table logs (
	event varchar(100),
    created_at datetime
);

insert into logs(event, created_at) 
values('data import', now());

select * from logs;

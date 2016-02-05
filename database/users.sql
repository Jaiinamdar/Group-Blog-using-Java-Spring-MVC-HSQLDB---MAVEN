DROP TABLE IF EXISTS users
create table users(username varchar(30), first_name varchar(30), last_name varchar(30), email_id varchar(30), password varchar(30),primary key( username)  );
insert into users values('mihir','Mihir','Thuse','mihir.thuse@gmail.com','mihir');
insert into users values('jaee','Jaee','Inamdar','jai661@gmail.com','jaee');
insert into users values('yash','Yashodhan','Apte','yashodhanapte@gmail.com','yash');
commit;

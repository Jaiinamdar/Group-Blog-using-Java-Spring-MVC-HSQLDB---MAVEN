DROP TABLE IF EXISTS blog;
Create table blog( blogid int, username varchar(40), title varchar(100), description varchar(1000), date varchar(50));
insert into blog values(1,'Mihir','Graduate Assistant at the ATC, Pollak Library 237?','Helps faculty with their mobile device issues. Also a graduate student studying Masters in Computer Science','Mon Dec 14 09:37:07 PDT 2015');
insert into blog values(2,'Jaee','Graduate Student doing Masters in Computer Science','Worked at Carls Jr, CSUF','Mon Dec 14 09:37:07 PDT 2015');
insert into blog values(3,'Yashodhan','Student Assistant at OET, Pollak Library Basement','Assisting with faculty video recording. Also a Grad student pursuing Masters in Computer Science','Mon Dec 14 09:37:07 PDT 2015');
commit;

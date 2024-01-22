create database task;
use task;
create table Programmer(Ename varchar(20),Dob date,Doj date,Sex varchar(10),Prof1 varchar(8),Prof2 varchar(8),Salary numeric(4));  

insert into Programmer values('saikumar','1985-08-20','2010-05-10','male','C','basic',4000);
insert into Programmer values('Fayaz','1980-04-05','2002-04-10','male','cobol','pascal',5000);
insert into Programmer values('abdul','1986-03-19','2015-08-07','female','cliper','C++',4000);
insert into Programmer values('anil','1964-01-02','2022-06-06','male','cobol','java',3500);
insert into Programmer values('balaji','1965-09-14','2010-09-10','male','cliper','pascal',4500); 
insert into Programmer values('Gowtham','1970-07-25','1992-09-05','female','Oracle','Mongodb',5200); 
insert into Programmer values('selwin','1963-01-28','1987-02-21','female','cobol','C',2510); 
insert into Programmer values('golla','1987-10-23','2005-12-30','male','pascal','django',5600); 
insert into Programmer values('sai','2024-01-21','2022-09-21','male','C#','python',5000);
insert into Programmer values('kumar','2001-02-03','2022-09-21','male','C#','python',5000);


create table Software( Ename varchar(20),title varchar(20),dev_in varchar(10),scost decimal(10,2),dcost numeric(05),sold numeric(3));

insert into Software values('saikumar','parachute','C',566.20,800,43), 
('sai','saloon','basic',588.50,5200,23), 
('golla','news website','pascal',986.02,2500,22), 
('selwin','live location','cobol',230.20,5200,56), 
('surya','helicopter booking','dbase',450.21,5621,45),
('bibin','movie booking','cobol',980.30,4500,25), 
('kruba','course booking','cliper',541.23,6523,56), 
('gokul','marriage agent','pascal',450.23,8900,85), 
('shiny','EV mart','basic',100.20,9000,21), 
('bunny','food management','C',560.23,5621,10);

create table Studies (Ename varchar(20),splace varchar(9),course varchar(10),ccost varchar(5)); 

insert into Studies values('ajith','sabhari','dcs',23000), 
('sai','sabhari','pgdca',56000), 
('selwin','pragathi','dcs',57000), 
('isaac','pragathi','pgdca',60000), 
('rasool','pragathi','ejs',23000), 
('Kruba','bdpa','html',37500), 
('pravin','bdpa','react',12000), 
('benny','polonium','react',65400), 
('harshith','keelpakam','basic',12050), 
('praj','chennai','R',56000);
select * from Studies;
select * from Software;
select * from Programmer;



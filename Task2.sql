
Query1

select avg(scost) from Software where dev_in = 'pascal'; 

 Query2 

SELECT Ename, FORMAT(DATEDIFF(YEAR, Dob, GETDATE()), 'yy') AS age
FROM Programmer;

 Query3 

SELECT P.Ename, FORMAT(DATEDIFF(YEAR, P.Dob, GETDATE()), 'yy') AS age
FROM Programmer P
WHERE P.Ename IN (SELECT S.Ename FROM Studies S WHERE S.course = 'dcs');

 Query4 

select max(sold) from Software; 

 Query5 

select Ename, Dob from Programmer where month(Dob)=03; 

SELECT Ename, Dob
FROM Programmer
WHERE MONTH(Dob) = 1;


 Query6  

select min(ccost) from Studies; 

 Query7 

select count(Ename) from Studies where course='pgdca'; 

 Query8 

select sum((scost+dcost)*sold) as revenue from Software where dev_in='C'; 

 Query9 

select * from Software where Ename='saikumar'; 

 Query10 

select count(splace) from Studies where splace='Sabhari'; 

 Query11 

select * from Software where (scost*sold)>20000; 

 Query12 

SELECT Ename, ROUND(Sold - (((Dcost + Scost) * Sold) - (Dcost * Sold)) / (Dcost + Scost), 0) AS copies
FROM Software
WHERE (Scost * Sold) < Dcost;

 Query13 

select max(scost) as costliest from Software where dev_in='basic'; 

 Query14 

select * from Software where (scost*sold)<(dcost*sold); 

 Query15 

select title from Software where dev_in='dbase'; 

 Query16 

select count(splace) as programmers from Studies where splace='pragathi'; 

 Query17 

select count(Ename) as programmers from Studies where ccost between 5000 and 10000; 

 Query18 

select avg(ccost) from Studies; 

 Query19 

select * from Programmer where Prof1='C' or Prof2='C'; 

 Query20 

select * from Programmer where Prof1 in ('pascal','cobol') or Prof2 in('pascal','cobol'); 

 Query21 

select * from Programmer where Prof1 not in ('pascal','C') and Prof2 not in('pascal','C'); 

Query22 

SELECT MAX(FORMAT(DATEDIFF(YEAR, Dob, GETDATE()), 'yy')) AS oldest
FROM Programmer
WHERE Sex = 'female';

 Query23 

SELECT AVG(CAST(FORMAT(DATEDIFF(YEAR, Dob, GETDATE()), 'yy') AS FLOAT)) AS female_age
FROM Programmer
WHERE Sex = 'male';

 Query24 

SELECT Ename, FORMAT(DATEDIFF(YEAR, Doj, GETDATE()), 'yy') AS experience
FROM Programmer
ORDER BY experience DESC;

 Query25 

SELECT *
FROM Programmer
WHERE MONTH(Dob) = MONTH(GETDATE());

 Query26 

select count(Ename) as female from Programmer where Sex='female'; 

 Query27 

select distinct Prof1 from Programmer where Sex='male' union select distinct Prof2 from Programmer where Sex='male'; 

 Query28 

select avg(salary) from Programmer; 
 Query29 

select count(Ename) from Programmer where salary between 2000 and 5000; 

 Query30 

select * from Programmer where Prof1 not in ('cliper','cobol','pascal') and Prof2 not in ('cliper','cobol','pascal'); 

 Query31 
SELECT COUNT(Ename) AS female_programmers_count
FROM Programmer
WHERE (Prof1 = 'C' OR Prof2 = 'C')
      AND DATEDIFF(YEAR, Dob, GETDATE()) > 24
      AND Sex = 'female';

Query32 
SELECT Ename
FROM Programmer
WHERE DATEPART(WEEK, Dob) = DATEPART(WEEK, GETDATE());

 Query33 
SELECT *
FROM Programmer
WHERE DATEDIFF(YEAR, Doj, GETDATE()) < 1;

Query34 
SELECT *
FROM Programmer
WHERE DATEDIFF(YEAR, Doj, GETDATE()) > 2;

 Query35 
 select (((scost+dcost)*sold)-(dcost*sold)) as recoverd from Software where (scost*sold)>(dcost*sold); 

 Query36 
select * from Software where sold=0; 

Query37 
select scost from Software where Ename='mary'; 

Query38 
select distinct splace from Studies; 

Query39 
select distinct course from Studies; 

Query40 
SELECT Ename
FROM Programmer
WHERE Ename LIKE '%a%a%';

Query41 
SELECT Ename
FROM Programmer
WHERE Ename LIKE '_';

Query42 
SELECT COUNT(Ename) AS Programmer
FROM Programmer
WHERE Sex = 'female'
      AND (Prof1 = 'cobol' OR Prof2 = 'cobol')
      AND DATEDIFF(YEAR, doj, GETDATE()) > 2;

Query43 
SELECT MIN(LEN(Ename)) AS length
FROM Programmer;

Query44 
select avg(dcost) From Software where dev_in='cobol'; 

Query45 
SELECT
    Ename,
    Sex,
    CONCAT(SUBSTRING(Dob, 6, 2), '-', SUBSTRING(Dob, 9, 2), '-', SUBSTRING(Dob, 3, 2)) AS Dob_format,
    CONCAT(SUBSTRING(Doj, 6, 2), '-', SUBSTRING(Doj, 9, 2), '-', SUBSTRING(Doj, 3, 2)) AS Doj_format
FROM Programmer;

 Query46 
SELECT *
FROM Programmer
WHERE DAY(Dob) = DAY(EOMONTH(Dob));

 Query47 
select salary from Programmer where Sex='male' and (Prof1 not in ('cobol') and Prof2 not in ('cobol')); 

Query48 
select scost,dcost,title,(dcost-scost) as difference  from Software order by difference desc; 

Query49 
select Ename,Dob,Doj from Programmer where month(Dob)=month(Doj); 

Query50 
SELECT Ename
FROM Programmer
WHERE Ename LIKE '% %';

-- QUERY II 
Query51 
select dev_in,count(title) from Software group by dev_in; 

Query 52 
select Ename,count(title) from Software group by Ename; 

Query 53 
select sex,count(Ename) as count from Programmer group by sex; 

Query54 
select max((scost+dcost)*sold) as costliest,max(sold) as copies from Software group by dev_in; 

 Query55 
select count(Ename) as born from Programmer group by year(Dob); 

 56 
select count(Ename) as Doj from Programmer group by year(Doj); 

 57 
select count(Ename) as mon from Programmer group by month(Dob); 

58 
select count(Ename) as mon from Programmer group by month(Doj); 

59 
select count(prof1)as lang from Programmer group by prof1; 

60 
select count(prof2)as lang from Programmer group by prof2; 

61 
select count(salary) as count from Programmer group by salary; 

62 
select count(splace) as count from Studies group by splace; 

63 
select count(course) as count from Studies group by course; 

 64 
SELECT dev_in, SUM(dcost * sold) AS cost
FROM Software
GROUP BY dev_in;

65 

SELECT dev_in, scost AS cost
FROM Software
GROUP BY dev_in;

66 
SELECT Ename, SUM((dcost + scost) * sold) AS total_cost
FROM Software
GROUP BY Ename;

  67 
SELECT Ename, AVG((dcost + scost) * sold)  AS sale
FROM Software
GROUP BY Ename;

 
68 
select count(title) from Software group by Ename; 

69 

SELECT dev_in, MAX(scost) AS scost
FROM Software
GROUP BY dev_in;

 70 

SELECT Ename,
       MAX((dcost + scost) * sold) AS costliest,
       MIN((dcost + scost) * sold) AS lowest
FROM Software
WHERE Ename IN (SELECT Ename FROM Programmer GROUP BY Sex)
GROUP BY Ename;

 71 

SELECT
    dev_in,
    AVG(dcost) AS avgdcost,
    AVG((scost + dcost) * sold) AS totalcost,
    AVG(scost) AS avgscost,
    AVG(((scost + dcost) * sold) / sold) AS averageprice
FROM Software
GROUP BY dev_in;

 72 

SELECT
    splace,
    COUNT(course) AS course_count,
    AVG(ccost) AS avg_ccost
FROM Studies
GROUP BY splace;

 73 

select count(Ename) from Studies group by splace; 

 74 

select Ename,Sex from Programmer order by Sex; 

 75 

select Ename,title from Software; 

 76 

select count(title) from Software group by dev_in; 

  77 

select count(title) from Software  where dcost<1000 group by dev_in; 

  78 

select avg(scost+dcost) from Software group by dev_in; 

 79 

select sum(dcost),sum(scost),sum(dcost-(sold*scost)) from Software group by Ename having sum(dcost)>sum(sold*scost); 

 80 

select max(salary),min(salary),avg(salary) from Programmer where salary>2000; 

  III 
 81  

select Ename from Programmer where salary=(select max(salary) from Programmer where Prof1='C' or Prof2='C'); 

 82 

select Ename from Programmer where salary=(select max(salary) from Programmer where (Prof1='cobol' or Prof2='cobol') and Sex='female'); 

  83 

select Ename from Programmer where salary=any(select max(salary) from Programmer group by Prof1); 

 84 

SELECT Ename
FROM Programmer
WHERE DATEDIFF(YEAR, Doj, GETDATE()) = (SELECT MIN(DATEDIFF(YEAR, Doj, GETDATE())) FROM Programmer);

  85 

SELECT Ename
FROM Programmer
WHERE DATEDIFF(YEAR, Doj, GETDATE()) = (SELECT MAX(DATEDIFF(YEAR, Doj, GETDATE())) FROM Programmer);

  86 

select Prof1 as programmer from Programmer group by Prof1 having Prof1 not in (select Prof2 from Programmer) and count(Prof1)=1  union 

select Prof2 as programmer from Programmer group by Prof2 having Prof2 not in (select Prof1 from Programmer) and count(Prof2)=1; 

  87 

SELECT Prof1 AS programmer
FROM Programmer
GROUP BY Prof1
HAVING Prof1 NOT IN (SELECT Prof2 FROM Programmer) AND COUNT(Prof1) = 1;

  88 

select splace from Studies group by splace having count(splace)=(SELECT MAX(splace.num) 

  FROM (SELECT COUNT(splace) AS num FROM Studies group by splace) splace); 

 90 

select Ename from Programmer where Sex='female' and salary>3000 and (Prof1 not in ('C','C++','Oracle','dbase') and Prof2 not in ('C','C++','Oracle','dbase')); 

  91 

select course from Studies  where ccost=(select max(ccost) from Studies) group by course; 

 92 

select course from Studies group by course having count(course)=(select max(course.num) from ( select count(course) as num from Studies group by course) course); 

  93 

SELECT splace, course
FROM Studies
GROUP BY splace, course
HAVING AVG(ccost) < ANY (SELECT AVG(ccost) FROM Studies GROUP BY splace);

 94 

select splace from Studies where ccost=(select max(ccost) from Studies)  group by splace ; 

 95 

select course from Studies group by course having count(course)<(select avg(course.num) from (select count(course) as num from Studies group by course)course); 

 96 

SELECT splace
FROM Studies
WHERE ccost = (SELECT MAX(ccost) FROM Studies)
GROUP BY splace;

 97 

SELECT course
FROM Studies
WHERE ccost BETWEEN
  (SELECT AVG(ccost) - 1000 FROM Studies) 
  AND 
  (SELECT AVG(ccost) + 1000 FROM Studies);


 98 

select title from Software where dcost=any(select max(dcost) from Software); 

 99 

select title from Software where scost=any(select min(scost) from Software); 

 100 

select Ename,sold from Software where sold=(select min(sold) from Software); 

 101 

select dev_in from Software where (dcost+scost)*sold=(select max((dcost+scost)*sold) as High from Software); 

 102 

select sold,title from Software where title=(select title from Software where(dcost-scost)=(select min(dcost-scost) from Software)); 

 103 

select title from Software where (dcost+scost)*sold=any(select max((dcost+scost)*sold) from Software where dev_in='pascal'); 

 104 

 select dev_in from Software group by dev_in having count(dev_in)= 

 (select max(dev_in.num) from (select count(dev_in) as num from Software group by dev_in)dev_in); 

 105 

select Ename from Software group by Ename having count(Ename)= 

 (select max(Ename.num) from (select count(Ename) as num from Software group by Ename)Ename); 

 106 

select Ename from Software where (dcost+scost)*sold=any(select max((dcost+scost)*sold) from Software); 

 107 

select title from Software where sold<(select avg(sold) from Software); 

 108 

select Ename from Programmer where salary=(select max((sal1.fe>=sal.ma)*sal1.fe) as salary from((select salary as fe from Programmer where sex='female')sal1,(select max(salary) as ma from Programmer where sex='male')sal)) and sex='female'; 

  109 

select Prof1 from Programmer group by Prof1 having count(Prof1)=(select max(Prof1.num) from(select count(Prof1) as num from Programmer group by Prof1)Prof1); 

 110 

select Ename from Software where  (dcost+scost)*sold >(dcost*sold)*2;  

 111 

SELECT title, Ename
FROM Software
WHERE (dcost + scost) * sold <
  ANY (SELECT AVG((dcost + scost) * sold) FROM Software GROUP BY dev_in);

 112 

select Ename from Programmer where month(dob)=  

(select min(dob2.dob1) from (select month(Dob) as dob1 from Programmer where Dob  like '1965%' and Sex='male')dob2) and year(Dob)='1965'; 

 113 

select min(sold),max(sold),dev_in from Software group by dev_in; 

 114 

SELECT Ename
FROM Programmer
WHERE DATEDIFF(YEAR, dob, GETDATE()) = (
  SELECT MAX(DATEDIFF(YEAR, dob, GETDATE()))
  FROM Programmer
  WHERE YEAR(doj) = '1992' AND Sex = 'female'
);

 115 

select year(dob) as year from Programmer group by year(dob) having count(year(dob))=(select max(dob.d) from (select count(year(dob)) as d from programmer group by year(dob))dob); 

 116 

SELECT DATE_FORMAT(dob, '%M') AS month
FROM Programmer
GROUP BY YEAR(dob), MONTH(dob)
HAVING COUNT(MONTH(dob)) = (
    SELECT MAX(d) 
    FROM (
        SELECT COUNT(MONTH(dob)) AS d 
        FROM Programmer 
        GROUP BY YEAR(dob), MONTH(dob)
    ) dob
);

 117 

SELECT MAX(prof) AS max_prof
FROM (
    SELECT prof1 AS prof FROM Programmer
    UNION
    SELECT prof2 FROM Programmer
) AS combined_profs;

select prof1 from Programmer group by prof1 having prof1 =any(select prof1 from Programmer where prof1 not in (select prof2 from Programmer)) and count(prof1)=1; 

SELECT MAX(man) AS max_man
FROM (
    SELECT prof1 AS man, COUNT(prof1) AS je FROM Programmer GROUP BY prof1
    UNION
    SELECT prof2, COUNT(prof2) FROM Programmer GROUP BY prof2
) AS ma;

 118 

select Ename from Programmer where salary<any (select avg(salary) as av from Programmer where sex='female') and sex='male'; 

 IV 

 119 

SELECT *
FROM Programmer
WHERE (Ename, salary) IN (
    SELECT Ename, MAX(salary) AS salary
    FROM Programmer
    GROUP BY Ename
);

 120 

select * from Software inner join Programmer on Programmer.sex='male' and Programmer.salary>3000 and Programmer.Ename=Software.Ename; 

 121 

select * from Software where Ename= any(select Ename from Programmer where sex='female') and dev_in='pascal'; 

 122 

select * from Programmer where year(Doj)<'1990'; 

 123 

select * from Software where Ename=any(select Ename from Studies where Ename=any(select Ename from Programmer where sex='female') and splace='pragathi') and dev_in='C'; 

 124 

select studies.splace,sum(software.sold),count(software.title) from Studies inner join Software on studies.Ename=software.Ename group by Studies.splace; 

 125 

select s.*,p.Sex,s1.splace from Software as s inner join Programmer as p on s.Ename=p.Ename   inner join Studies as s1 on p.Ename=s1.Ename  where p.sex='male' and s.dev_in='dbase'; 

 126 

select s.*,p.Sex,p.dob from Software as s inner join Programmer as p on s.Ename=p.Ename where (Sex='male' and year(dob)<'1965')or(sex='female' and year(dob)>1975); 

 127 

 select s.* from Software as s inner join Programmer as p on s.Ename=p.Ename where s.Ename=any(select Ename from Software 

 where dev_in= any(select distinct man.de from (select s.dev_in as de from Software as s inner join Programmer as p on s.Ename=p.Ename 

 where s.dev_in!=p.prof1 group by p.prof1)man)); 

 128 

SELECT s.*
FROM Software AS s
INNER JOIN Programmer AS p ON s.Ename = p.Ename
WHERE s.Ename = ANY (
    SELECT Ename
    FROM Software
    WHERE dev_in = ANY (
        SELECT DISTINCT man.sd
        FROM (
            SELECT s.dev_in AS sd
            FROM Software AS s
            INNER JOIN Programmer AS p ON s.Ename = p.Ename
            WHERE p.prof1 != p.prof2
            GROUP BY p.Prof2
        ) man
    )
);

  129 

 select s.*,p.Sex,s1.splace from Software as s inner join Programmer as p on s.Ename=p.Ename inner join Studies as s1 on p.Ename= s1.Ename where p.Sex = 'male' and s1.splace = 'sabhari'; 

  130 

  select Ename from Software where title=''; 

  131 

SELECT (s.dcost + s.scost) * s.sold AS total_cost
FROM Software AS s
INNER JOIN Programmer AS p ON s.Ename = p.Ename
WHERE s.dev_in = 'apple';

  132 
SELECT *
FROM Programmer
WHERE DATE_FORMAT(doj, '%d-%m') = ANY (
    SELECT DATE_FORMAT(doj, '%d-%m')
    FROM Programmer
    GROUP BY DATE_FORMAT(doj, '%d-%m')
    HAVING COUNT(DATE_FORMAT(doj, '%d-%m')) = (
        SELECT MAX(cnt)
        FROM (
            SELECT COUNT(DATE_FORMAT(doj, '%d-%m')) AS cnt
            FROM Programmer
            GROUP BY DATE_FORMAT(doj, '%d-%m')
        ) count
    )
);


  133 b 

 select * from Programmer where prof2=any(select prof2 from programmer group by prof2 having count(Prof2)=(select max(count.sum) from  

(select count(Prof2) as sum From Programmer group by Prof2)count)); 

 134 

 select s.splace,sum(s1.scost* s1.sold) as scost from Studies as s inner join Software as s1 on s.Ename=s1.Ename group by s.splace; 

 135 

select s.splace,(s1.dcost+s1.scost)*s1.sold as tc from Studies as s inner join Software as s1  

on s.Ename=s1.Ename where (dcost+scost)*sold=(select  max((s1.dcost+s1.scost)*s1.sold) as tc from Studies as s inner join Software as s1 on s.Ename= s1.Ename); 

 136 

select Prof1 from Programmer where Prof1 not in  (select dev_in from Software group by dev_in) group by Prof1 union select Prof2 from Programmer where Prof2 not in  (select dev_in from Software group by dev_in) group by Prof2; 

 137 

select s.Ename,(s.dcost+s.scost)*s.sold as tc, s1.course from Software as s inner join Studies as s1 on s.Ename=s1.Ename where (s.dcost+s.scost)*s.sold = (select  max((s1.dcost+s1.scost)*s1.sold) as tc from Studies as s inner join Software as s1 on s.Ename= s1.Ename); 

 138 

SELECT DISTINCT ROUND(ccost.cc / mon.cm) AS month1
FROM (
    SELECT (((dcost + scost) * sold) / 12) AS cm
    FROM Software
) AS mon,
(
    SELECT ccost
    FROM Studies
) AS ccost;

 139 
SELECT p.Ename, s.title
FROM Programmer as p
INNER JOIN Software as s on s.Ename=p.Ename 
WHERE (s.dcost+s.scost)*s.sold=(SELECT MAX((s.dcost+s.scost)*s.sold) as tc
FROM Programmer as p
INNER JOIN Software as s on p.Ename=s.Ename  
WHERE (DATEDIFF(year,doj,GETDATE()))<3); 

 140 

SELECT AVG(p.salary) AS average_salary, s.title
FROM Programmer AS p
INNER JOIN Software AS s ON s.Ename = p.Ename
WHERE s.scost * s.sold > 50000
GROUP BY s.title;

 141 

select count(title) as packages from Software where Ename = (select Ename from Studies where ccost = (select min(ccost) from Studies)); 

 142 
SELECT COUNT(s.title) AS title_count, s1.splace
FROM Software AS s
INNER JOIN Studies AS s1 ON s.Ename = s1.Ename
WHERE s.Ename = (
    SELECT Ename
    FROM Software
    WHERE (dcost + scost) * sold = (
        SELECT MIN(title.num)
        FROM (
            SELECT (dcost + scost) * sold AS num
            FROM Software
        ) AS title
    )
)
GROUP BY s1.splace;
 143 

SELECT COUNT(s.title) AS title, p.Ename
FROM Software AS s
INNER JOIN Programmer AS p ON s.Ename = p.Ename
WHERE p.Salary > (
    SELECT MAX(salary.Salary) * p.Salary
    FROM Programmer AS salary
    WHERE salary.Sex = 'male'
)
GROUP BY p.Ename;

 144 

SELECT COUNT(s.title) AS title, p.Ename
FROM Software AS s
INNER JOIN Programmer AS p ON s.Ename = p.Ename
WHERE YEAR(p.Doj) = (
    SELECT MAX(YEAR(p.Doj))
    FROM Programmer AS p
    INNER JOIN Software AS s ON p.Ename = s.Ename
)
GROUP BY p.Ename;

 145 

select s.Ename,s1.splace from Software as s inner join Studies as s1 on s.Ename = s1.Ename where s1.splace= (select splace from Studies where Ename=(select Ename from software where title='')); 

 146 

 select (((s.dcost+s.scost)*s.sold) - (s.dcost*s.sold)) as profit,p.prof1 from Software as s inner join Programmer as p on s.Ename=p.Ename 

 where s.dev_in  not in (select Prof1 from Programmer group by Prof1) ; 

 147 

  select p.Ename,count(s.title) from Programmer as p inner join Software as s on p.Ename=s.Ename  group by s.Ename; 

 148 

select * from Studies where course='S.S.I.L';
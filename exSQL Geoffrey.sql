-- Question 1
select 'Bonjour, bienvenue dans le monde de SQL' as Hello;

-- Question 2
create database if not exists LAON_DWWM_GEOFFREY;

-- Question 3
use laon_dwwm_geoffrey;
create table if not exists Note(
    NUM int primary key auto_increment,
    PRENOM varchar(15) not null,
    NOM varchar(15) not null,
    Sexe char(1),
    PASSWORD varchar(32) not null,
    AGE tinyint,
    NOTE1 tinyint,
    NOTE2 tinyint,
    NOTE3 tinyint
);

insert into note (PRENOM, NOM, Sexe, PASSWORD, AGE, NOTE1, NOTE2, NOTE3) values 
('Marc', 'Dupont', 'M', 'df5sdfs', 25, 15, 11, 9),
('Paul', 'Marchand', 'M', 'sf5s', 32, 8, 10, 16),
('Marie', 'Laporte', 'F', 'klj8jkA5', 15, 13, 17, 11),
('Alex', 'Martin', 'M', 'frg16', 23, 11, 12, 16),
('Benoit', 'Dirlos', 'M', '12345', 41, 9, 14, 15),
('Yoann', 'Fergusson', 'M', 'Asde5', 39, 17, 16, 13),
('Philipe', 'Dany', 'M', 'htyaz_8', 19, 19, 18, 12),
('Suzanne', 'Lacour', 'F', 'de4', 43, 4, 11, 16),
('Celine', 'Dermand', 'F', 'aqw85', 27, 11, 16, 13),
('Anne', 'Laclasse', 'F', 'ytrc9v6b', 18, 10, 9, 12),
('Charles', 'Nourri', 'M', 'i5f6z7q', 30, 7, 11, 6),
('Bernard', 'Cazanne', 'M', 'abc', 52, 9, 15, 9);

-- Question 4
select count(*) from note;

-- Question 5
select * from note order by nom;

-- Question 6
select * from note order by age;

-- Question 7
select nom, prenom from note where age > 20;

-- Question 8
select nom, prenom from note where age >= 18 and age <= 28 order by age;

-- Question 9
select * from note where nom like 'd%';

-- Question 10
select * from note where prenom like 'm%' or prenom like '%e';

-- Question 11
select concat(prenom, ' ', upper(nom)) from note order by age;

-- Question 12
select concat(prenom, ' ', upper(substring(nom, 1, 1))) from note;

-- Question 13
select concat(upper(substring(prenom, 1, 1)), ' ', upper(substring(nom, 1, 1))), note1 from note order by note1;

-- Question 14
select concat(upper(substring(prenom, 1, 1)), '.', upper(substring(nom, 1, 1))), note1 + note2 + note3 from note order by note1 + note2 + note3 desc;

-- Question 15
select concat(concat(upper(substring(nom, 1, 1)), lower(substring(nom, 2))), ' ', concat(upper(substring(prenom, 1, 1)), lower(substring(prenom, 2)))), (note1+note2+note3)/3 from note;

-- Question 16
select (sum(note1)+sum(note2)+sum(note3))/(count(*)*3) from note;

-- Question 17
select nom, age from note where note2 > 12 and prenom like '%n%';

-- Question 18
select nom from note where note3 < 10 and age < 25;

-- Question 19
select nom as 'Password Faible' from note where length(password) < 6 ;

-- Question 20
select concat(prenom, '(', age, ')') from note where age in (15, 25, 50);

-- Question 21
select * from note where note1 >= 10 and note2 >= 10 and note3 >= 10;

-- Question 22
select * from note where age not between 25 and 45 and (note1 < 10 or note2 < 10 or note3 < 10);

-- Question 23
select sexe, avg(note1) from note group by sexe;

-- Question 24
select sexe, avg(note3) from note group by sexe;

-- Question 25
select now() as 'Maintenant';

-- Question 26
select datediff(now(), '1971-11-06');

-- Question 27
select date_add(current_date(), INTERVAL 63 DAY); 

-- Question 28
select datediff('2020-09-21', '2020-03-21');

-- Question 29
select datediff(now(), '1989-09-26');

drop table note;
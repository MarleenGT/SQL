-- Question 1
create database if not exists Dwwm2_Geoffrey;

-- Question 2
use Dwwm2_Geoffrey;
create table if not exists soldats(
    id int primary key auto_increment,
    nom varchar(16) not null,
    prenom varchar(16) not null,
    date_naissance date,
    sexe char(1),
    grade tinyint
);

-- Question 3
insert into soldats (prenom, nom, date_naissance, sexe, grade) values 
('bob', 'léponge', '1952-11-02', 'm', 3),
('bernard', 'lhermite', '1981-10-04', 'm', 5),
('minnie', 'mouse', '1974-12-24', 'f', 2),
('jean', 'dujardin', '2010-01-10', 'm', 1),
('nicolas', 'sarkozy', '1952-11-21', 'm', 4),
('patricia', 'kaas', '1960-05-02', 'f', 2),
('marine', 'lepen', '1901-12-07', 'f', 3),
('josé', 'bové', '1998-11-17', 'm', 1),
('didier', 'bouvard', '1931-02-20', 'm', 2),
('robert', 'pirès', '1973-07-21', 'm', 4),
('melinda', 'trump', '2018-10-10', 'f', 4),
('christophe', 'maé', '1987-04-12', 'f', 2),
('jeanne', 'moreau', '1917-05-22', 'f', 5),
('jean', 'bonbeur', '1954-10-30', 'm', 2),
('hugues', 'aufrette', '1920-12-12', 'm', 4),
('ilona', 'mitrecay', '2019-04-22', 'f', 2);

-- Question 4
select * from soldats where sexe = 'm';

-- Question 5
select * from soldats where datediff(current_date(), date_naissance) > 25*365;

-- Question 6
select upper(nom) as nom from soldats;

-- Question 7
update soldats set nom = upper(nom);

-- Question 8
delete from soldats order by date_naissance limit 2;

-- Question 9
insert into soldats (prenom, nom, date_naissance, sexe, grade) values 
('jennifer', 'aniston', '1977-04-22', 'f', 3),
('mick', 'jagger', '1924-11-08', 'm', 2),
('peggy', 'lacochonne', '1952-07-15', 'f', 4),
('fifi', 'brindacier', '1912-11-27', 'f', 1);

-- Question 10
update soldats set grade = grade + 1 where grade < 5;

-- Question 11
update soldats set grade = grade - 1 where sexe = 'm' and grade = 3;

-- question 12
update soldats set date_naissance = date_add(date_naissance, interval 1 day) where sexe = 'f' and grade = 4;

select * from soldats;

drop table soldats;
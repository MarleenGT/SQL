create database if not exists ex4;
use ex4;

create table if not exists clients(
    codec int primary key auto_increment,
    prenom varchar(16),
    nom varchar(16),
    rue varchar(30),
    cpostal varchar(5),
    ville varchar(16)
);

create table if not exists livres(
    codel int primary key auto_increment,
    titre varchar(30)
);

create table if not exists emprunts(
    codec int,
    codel int, 
    date_emprunt date,
    duree int
);

insert into clients 
(prenom, nom, rue, cpostal, ville) values 
('Alain', 'un', 'rue du chat', '02001', 'laon-xer'),
('Robert', 'deux', 'rue du chien', '02010', 'laon-edf'),
('Marine', 'trois', 'rue du poisson', '02015', 'laon-eds'),
('annie', 'quatre', 'rue de la girafe', '02000', 'laon-wse'),
('christelle', 'cinq', 'rue du rat', '02001', 'laon-poi'),
('Emmanuelle', 'six', 'rue du pangolin', '02020', 'laon-ysj'),
('Aurelie', 'sept', 'rue du merle', '02111', 'laon-frd'),
('séverine', 'huit', 'rue du lynx', '02321', 'laon-aze'),
('guillaume', 'neuf', 'rue de la perdrix', '02951', 'laon_wsx'),
('Francois', 'dix','rue du singe', '02123', 'laon-fgm'),
('Claude', 'onze', 'rue du lion', '02852', 'laon-apv'),
('Nathalie', 'douze', 'rue du ver', '02124', 'laon-qpb'),
('Béatrice', 'treize', 'rue du herisson', '02789', 'laon_lep');

insert into livres
(titre) values
('les oiseaux'),
('les chiens'),
('les lamas'),
('les grenouilles'),
('les mouches'),
('les lions'),
('les chats'),
('les lapins'),
('les elephants'),
('les girafes'),
('les poissons');

insert into emprunts
(codec, codel, date_emprunt, duree) values
(1, 2, '2020-03-10', 1),
(1, 4, '2020-03-11', 3),
(1, 5, '2020-03-12', 3),
(2, 1, '2020-03-10', 2),
(3, 2, '2020-03-15', 5),
(4, 1, '2020-03-17', 1),
(4, 6, '2020-03-10', 2),
(5, 2, '2020-03-12', 3),
(6, 8, '2020-03-18', 2),
(7, 7, '2020-03-10', 1),
(7, 9, '2020-03-18', 4);
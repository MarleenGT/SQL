create table tb1(
    id int primary key auto_increment,
    nom varchar(32) not null, 
    prenom varchar(32) not null, 
    email varchar(64),
    pseudo varchar(16),
    couleur varchar(12) default 'Rose'
);

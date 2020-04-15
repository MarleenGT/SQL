-- Q 1 : afficher la liste des nom, prenom des personnes par ordre croissant
select nom, prenom from personnes order by nom;

-- Q 2 : afficher la lise des pays par ordre croissant 
select pays from pays group by pays;

-- Q 3 : affichier la liste des pays dont le nom ou le code commence par 'a' ou qui finit par 'u'
select pays from pays where (pays like 'a%' or pays like '%u');

-- Q 4 : afficher une liste avec  nom, le prenom et le pays triéé par le nom
select distinct nom, prenom, pays from personnes left join pays on personnes.code_pays = pays.code_pays group by nom;

-- Q 5 : afficher pour chaque pays, le nombre de personnes issues de celui-ci
select pays, count(distinct nom) nombre_personnes from pays inner join personnes on personnes.code_pays = pays.code_pays group by pays;

-- Q 6 : affichier le nombre de pays cités dans la table des personnes
select count(distinct code_pays) as nombre_pays from personnes;

-- Q 7 : afficher la liste de personnes venant de chine et dont le nom  ne contient pas de 'n'
select distinct nom, prenom from personnes inner join pays on personnes.code_pays = pays.code_pays where (pays like 'china' and nom not like '%n%');

-- Q 8 : afficher nom, prenom et pays des personnes vivant en france ou en pologne
select distinct nom, prenom from personnes inner join pays on personnes.code_pays = pays.code_pays where (pays like 'france' or pays like 'poland');


-- Question 1
select livres.titre, emprunts.date_emprunt from livres right join emprunts on livres.codel = emprunts.codel order by livres.titre;

-- Question 2
select distinct clients.ville from clients inner join emprunts on clients.codec = emprunts.codec order by clients.ville;

-- Question 3
select clients.cpostal, clients.ville, ifnull(emprunts.codel, '-') code_livre from clients left join emprunts on clients.codec = emprunts.codec;

-- Question 4
select clients.nom, livres.titre, emprunts.date_emprunt from emprunts 
    inner join clients on clients.codec = emprunts.codec
    inner join livres on livres.codel = emprunts.codel
order by clients.nom;

-- Question 5
select clients.nom, ifnull(livres.titre, '-') titre, ifnull(emprunts.duree, '-') duree from clients
    left join emprunts on clients.codec = emprunts.codec
    left join livres on livres.codel = emprunts.codel
order by clients.nom;
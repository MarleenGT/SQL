use ex6;

-- Q1
select concat(prenom, '_', upper(nom)) as Prenom_Nom from filialea;

-- Q2
select concat(prenom, '_', upper(nom)) as Prenom_Nom from filialeb;

-- Q3
select nom, prenom from filialea union select nom, prenom from filialeb;

-- Q4
select nom, prenom from filialea where numService is null 
    union select nom, prenom from filialeb where numService is null;

-- Q5
select filialea.nom nom, filialea.prenom prenom from filialea left outer join filialeb 
    on (filialea.nom = filialeb.nom and filialea.prenom = filialeb.prenom) 
    where filialeb.idpersonnes is null;

-- Q6
select filialea.nom nom, filialea.prenom prenom from filialea left outer join filialeb
    on (filialea.nom = filialeb.nom and filialea.prenom = filialeb.prenom) 
    where filialeb.idpersonnes is null
    union select filialeb.nom nom, filialeb.prenom prenom from filialeb left outer join filialea
    on (filialea.nom = filialeb.nom and filialea.prenom = filialeb.prenom) 
    where filialea.idpersonnes is null;  

-- Q7
select distinct nom, prenom, ifnull(nom_service, '---') service from
    (select * from filialea union select * from filialeb) as ent
    left join services
    on ent.numService = services.idservice;  

-- Q8
select distinct concat(prenom, '.', upper(substring(nom,1,1))) Nom, ifnull(matricule, '---') matricule from 
    (select * from filialea union select * from filialeb) as ent
    left join voitures 
    on ent.numVoiture = voitures.idVoitures;

-- Q9
select distinct concat(upper(substring(prenom,1,1)), '.',nom) Nom, ifnull(nom_service, '---') service, ifnull(matricule, '---') matricule from 
    (select * from filialea union select * from filialeb) as ent
    left join voitures 
    on ent.numVoiture = voitures.idVoitures left join services
    on ent.numService = services.idservice;

-- Q10
select matricule, count(distinct nom) nombre_personnes from 
    (select * from filialea union all select * from filialeb) as ent
    inner join voitures
    on voitures.idVoitures = ent.numVoiture
    group by matricule;

-- Q11
select nom_service, count(distinct nom) nombre_personnes from 
    (select * from filialea union all select * from filialeb) as ent
    inner join services
    on services.idservice = ent.numService
    group by nom_service;



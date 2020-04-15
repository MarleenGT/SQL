-- Q1
select numC, dateLocation, prixReel from location order by numC;

-- Q2
select numC, matricule, classe from location inner join voitures on location.numV = voitures.numV order by numC;

-- Q3
select voitures.numV from voitures left join location on voitures.numV = location.numV where dateLocation is null;
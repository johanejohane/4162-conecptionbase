//etape 1 la liste des plats avec leur prix 

SELECT * FROM Plat order by prix_plat DESC;

//etapes 2: compte nombre des plat par categorie
select count(nom_plat)From plat where id_categorie=2;

//etapes 3
SELECT * FROM vue_plat_commande
ORDER BY id_commande;
//voir le montant total de chaque commande
SELECT SUM(sous_total) FROM vue_plat_commande WHERE id_commande = 1;
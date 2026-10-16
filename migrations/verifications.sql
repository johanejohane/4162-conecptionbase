//etape 1 la liste des plats avec leur prix 

SELECT * FROM Plat order by prix_plat DESC;

//etapes 2: compte nombre des plat par categorie
select count(nom_plat)From plat where id_categorie=2;

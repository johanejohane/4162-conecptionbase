# ETAPES 1
1-creation de la table plat 
Plat (**id_plat**,nom_plat,prix_plat)
--affichage des plats du plus cher au moins cher:
    SELECT * FROM Plat order by prix_plat DESC
--je chois decimali pour le prix et j'utlise **id_plat**SERIAL PRIMARY KEYpour identifiant 

# ETAPES 2
1-creation de la table categorie 
Categorie(**id_categorie**, nom_categorie)
modification du table Plat
Plat (**id_plat**,nom_plat,prix_plat,#id_categorie)

--on ajoute pas  une colonne categorie VARCHAR(50) dans la table des pats car
une categorie peut avoir plusieur plat different 
exemple romazava et ravitoto sy  henakisoa sont des plats different mais dans des meme categorie ;

# ETAPES 3
1-creation de la table: 
--commandes(**id_commandes**,num_commande,date_commande)
2--creation du tableau de liaison entre commande et plat
-- Plat_commande(**id_Plat_commande**,#id_Commande,#id_plat,quantiter)
3--creation de vue_Plat_commande
//avoir montant total de chaque commande exemple commande 1
SELECT SUM(sous_total) FROM vue_plat_commande WHERE id_commande = 1;

la quantiter est place dans la table de liaison Plat_commande.
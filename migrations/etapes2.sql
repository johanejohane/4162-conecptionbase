CREATE TABLE Categorie(
    id_categorie SERIAL PRIMARY KEY,
    nom_categorie VARCHAR(100) NOT NULL
);


INSERT INTO Categorie (nom_categorie)
VALUES
    ('toaka'),
    ('plat streat'),
    ('Plat malagasy'),
    ('Plat chinois'),
    ('Soupe'),
    ('Dessert et goûter'),
    ('Boisson');

ALTER TABLE Plat ADD COLUMN id_categorie INT,ADD FOREIGN KEY(id_categorie)
REFERENCES Categorie(id_categorie);


UPDATE Plat set id_categorie = CASE
WHEN nom_plat IN('Romazava','Ravitoto sy henakisoa','Akoho sy voanio') THEN 1
WHEN nom_plat = 'Mi sao'THEN 2 
WHEN nom_plat = 'Soupe chinoise' THEN 3
WHEN nom_plat = 'Mofo gasy (les 4)' THEN 4
WHEN nom_plat = 'Ranon''ampango' THEN 5
END;
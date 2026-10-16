CREATE ROLE johane WITH LOGIN PASSWORD 'Johaneroot';
CREATE DATABASE gargote_rado OWNER johane;
//psql -h localhost -U johane -d gargote_rado

CREATE TABLE Plat (
    id_plat SERIAL PRIMARY KEY,
    nom_plat VARCHAR(100) NOT NULL,
    prix_plat DECIMAL(10, 2) NOT NULL
);

INSERT INTO Plat (nom_plat, prix_plat)
VALUES
    ('Romazava', 7000),
    ('Ravitoto sy henakisoa', 8000),
    ('Akoho sy voanio', 8500),
    ('Mi sao', 6000),
    ('Soupe chinoise', 5000),
    ('Mofo gasy (les 4)', 1000),
    ('Ranon''ampango', 500);


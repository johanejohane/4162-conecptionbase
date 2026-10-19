CREATE TABLE Commandes(
    id_commande SERIAL PRIMARY KEY,
    num_commande VARCHAR(100),
    date_commande TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Plat_commande(
    id_Plat_commande SERIAL PRIMARY KEY,
    id_Commande INT NOT NULL,
    id_plat INT NOT NULL,
    quantiter INT NOT NULL,
    FOREIGN KEY(id_Commande) REFERENCES Commandes(id_commande),
    FOREIGN KEY(id_plat) REFERENCES Plat(id_plat)
);
//VU POUR vue_plat_commande
CREATE VIEW vue_plat_commande AS
SELECT Commandes.*, 
Plat.nom_plat, Plat.prix_plat,
Plat_commande.quantiter,
Plat.prix_plat * Plat_commande.quantiter AS sous_total
FROM Plat_commande
JOIN Commandes ON Plat_commande.id_Commande = Commandes.id_Commande
JOIN Plat ON Plat_commande.id_plat = Plat.id_plat;



INSERT INTO Commandes (num_commande, date_commande)
VALUES
    ('CMD001', '2026-10-19 08:30:00'),
    ('CMD002', '2026-10-19 09:15:00'),
    ('CMD003', '2026-10-19 10:00:00'),
    ('CMD004', '2026-10-19 11:30:00'),
    ('CMD005', '2026-10-19 12:00:00');


INSERT INTO Plat_commande (id_Commande, id_plat, quantiter)
VALUES
    -- Commande CMD001
    (1, 1, 2),
    (1, 6, 3),
    (1, 7, 2),

    -- Commande CMD002
    (2, 2, 1),
    (2, 3, 1),
    (2, 7, 2),

    -- Commande CMD003
    (3, 4, 2),
    (3, 5, 1),
    (3, 6, 2),

    -- Commande CMD004
    (4, 1, 1),
    (4, 2, 2),
    (4, 4, 1),

    -- Commande CMD005
    (5, 3, 2),
    (5, 5, 2),
    (5, 7, 4);

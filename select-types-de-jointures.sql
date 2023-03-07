-- Types de 'JOIN' (jointures)

-- Type 1 : INNER JOIN (synonyme : JOIN)
-- Explication : seuls les enregistrements qui sont reliés sont retournés
-- Retourne les champs des deux tables pour tous les enregistrements associés
SELECT *
    FROM client 
        JOIN commande ON client.id = client_id;

-- Type 2 : LEFT JOIN
-- Explication : tous les enregistrements de la table à gauche 
-- et les valeurs correspontes dans la table à droite sont retournés (NULL s'il n'y en a pas)
SELECT *
    FROM client 
        LEFT JOIN commande ON client.id = client_id;

-- Type 3 : RIGHT JOIN
-- Explication : tous les enregistrements de la table à droites 
-- et les valeurs correspontes dans la table à gauche sont retournés (NULL s'il n'y en a pas)
SELECT *
    FROM client 
        RIGHT JOIN commande ON client.id = client_id;

-- Type 4 : FULL JOIN (Cette syntaxe n'existe pas dans MySQL)
-- Explication : Tous les enregistrements de la table de gauche et tous les
-- enregistrements de la table de droite, qu'ils soient en relation ou pas.
-- N'existe pas en MySQL : peut être simulé en faisant une UNION
-- de deux requêtes SELECT (LEFT JOIN et RIGHT JOIN), comme suit : 
SELECT *
    FROM client 
        LEFT JOIN commande ON client.id = client_id
UNION 
SELECT *
    FROM client 
        RIGHT JOIN commande ON client.id = client_id;

-- EN PRATIQUE

-- A : retourner les id, prénom et nom des clients qui n'ont pas de commande.
SELECT 
    client.id, 
    prenom, 
    nom 
    FROM client 
        LEFT JOIN commande ON client.id = client_id
    WHERE commande.id IS NULL;

-- B : retourner les id, prénom et nom des clients qui ont des commandes.


-- C : retourner toute l'info des commandes associées à un client
SELECT * FROM commande WHERE client_id IS NOT NULL;

-- D : retourner toute l'info de toutes les commandes



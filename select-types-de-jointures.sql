-- Types de 'JOIN' (jointures)

-- Type 1 : INNER JOIN (synonyme : JOIN)
-- Explication : seuls les enregistrements qui sont reliés sont retournés
-- Retourne les champs des deux tables pour tous les enregistrements associés


-- Type 2 : LEFT JOIN
-- Explication : tous les enregistrements de la table à gauche 
-- et les valeurs correspontes dans la table à droite sont retournés (NULL s'il n'y en a pas)


-- Type 3 : RIGHT JOIN
-- Explication : tous les enregistrements de la table à droites 
-- et les valeurs correspontes dans la table à gauche sont retournés (NULL s'il n'y en a pas)


-- Type 4 : FULL JOIN (Cette syntaxe n'existe pas dans MySQL)
-- Explication : Tous les enregistrements de la table de gauche et tous les
-- enregistrements de la table de droite, qu'ils soient en relation ou pas.
-- N'existe pas en MySQL : peut être simulé en faisant une UNION
-- de deux requêtes SELECT (LEFT JOIN et RIGHT JOIN), comme suit : 


-- EN PRATIQUE

-- A : retourner les id, prénom et nom des clients qui n'ont pas de commande.


-- B : retourner les id, prénom et nom des clients ont des commandes.


-- C : retourner toute l'info des commandes associées à un client


-- D : retourner toute l'info de toutes les commandes



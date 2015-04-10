-- Requ�tes SQL

-- Compter combien de types de boissons diff�rentes on peut trouver sur la carte de boissons.

SELECT COUNT(NomType) FROM Type


-- Trouver toutes les boissons qui font partie d'une commande donn�e.

SELECT NomConso FROM Detail
WHERE NoCommande = 42


-- Calculer le total pour une commande donn�e.

SELECT sum(C.prix) FROM Consommation C, Detail D
WHERE D.NoCommande = 42 and D.NomConso = C.NomConso


-- Trouver toutes les boissons, et leur nombre, vendues par un serveur donn�.

SELECT NomConso, COUNT(NomConso) FROM Detail
WHERE Identifiant = "jeff" 
GROUP BY NomConso


-- Calculer l'addition pour une table donn�e, sachant que cette table peut avoir fait plusieurs commandes.

SELECT sum(Con.Prix) FROM Commande Com, Detail D, Consommation Con
WHERE D.NomConso = Con.NomConso and D.NoCommande = Com.NoCommande and Com.NoTable = 1


-- Trouver toutes les boissons dont il ne reste plus assez en stock (qui sont en dessous du seuil et qui doivent donc �tre command�es chez le fournisseur).

SELECT NomIngredient FROM Ingredient
WHERE StockActuel < StockSeuil

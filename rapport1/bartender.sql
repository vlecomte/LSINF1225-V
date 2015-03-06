DROP TABLE IF EXISTS "Commande";
CREATE TABLE Commande
(
NoCommande int NOT NULL UNIQUE,
Identifiant varchar(255),
DatePaiement datetime,
NoTable int NOT NULL,
PRIMARY KEY(NoCommande)
);
INSERT INTO "Commande" VALUES(43,'tiffany',NULL,3);
INSERT INTO "Commande" VALUES(42,'tiffany','2012-12-21 11:53',1);
DROP TABLE IF EXISTS "Consommation";
CREATE TABLE Consommation
(
NomConso  varchar(255) NOT NULL UNIQUE,
Prix int NOT NULL,
NomType varchar(255) NOT NULL,
NomDescription varchar(255) NOT NULL,
PRIMARY KEY (NomConso) 
);
INSERT INTO "Consommation" VALUES('Maes 25cl',1.8,'Bière','maes.txt');
INSERT INTO "Consommation" VALUES('Gin Tonic',6,'Cocktail','Gin tonic.txt');
DROP TABLE IF EXISTS "Description";
CREATE TABLE Description
(
NomDescription varchar(255) NOT NULL UNIQUE,
Image varchar(255) NOT NULL UNIQUE,
Texte varchar(255) NOT NULL UNIQUE,
PRIMARY KEY (NomDescription)
);
INSERT INTO "Description" VALUES('Maes','maes.jpg','maes.txt');
INSERT INTO "Description" VALUES('Gin Tonic','Gin tonic.jpg','Gin tonic.txt');
DROP TABLE IF EXISTS "Detail";
CREATE TABLE "Detail" ("DateAjout" datetime NOT NULL ,"NoCommande" int NOT NULL ,"Identifiant" varchar(255),"NomConso" varchar(255) NOT NULL ,"DateLivraison" varchar(255) DEFAULT (null) );
INSERT INTO "Detail" VALUES('11:45',42,'jeff','Maes 25cl','11:47');
INSERT INTO "Detail" VALUES('18:01',43,NULL,'Gin Tonic',NULL);
DROP TABLE IF EXISTS "Ingredient";
CREATE TABLE Ingredient
(
NomIngredient varchar(255) NOT NULL UNIQUE,
StockActuel int NOT NULL,
StockSeuil int,
StockMaximum int, Unites varchar(255) NOT NULL default Litre,
PRIMARY KEY (NomIngredient)
);
INSERT INTO "Ingredient" VALUES('Maes 25cl',33,20,NULL,'bouteilles');
INSERT INTO "Ingredient" VALUES('Tonic',6,10,25,'bouteilles');
INSERT INTO "Ingredient" VALUES('Gin',1.5,7,1,'litres');
DROP TABLE IF EXISTS "Type";
CREATE TABLE Type
(
NomType varchar(255) NOT NULL UNIQUE,
Miniature varchar(255) NOT NULL UNIQUE,
PRIMARY KEY (NomType)
);
INSERT INTO "Type" VALUES('Bière','biere.png');
INSERT INTO "Type" VALUES('Cocktail','cocktail.png');
DROP TABLE IF EXISTS "Utilisateur";
CREATE TABLE "Utilisateur"
(
Identifiant varchar(255) NOT NULL UNIQUE,
MotDePasse varchar(255) NOT NULL,
Email varchar(255) NOT NULL UNIQUE,
Grade varchar(255) NOT NULL ,
Langue varchar(255) NOT NULL,
PRIMARY KEY(Identifiant)
);
INSERT INTO "Utilisateur" VALUES('tiffany','karateswag22','tiffany@hotmail.be','client','français');
INSERT INTO "Utilisateur" VALUES('jeff','ilovetiffany','jeff@hotmail.be','serveur','anglais');
DROP TABLE IF EXISTS "Utilisation";
CREATE TABLE Utilisation
(
NomConso varchar(255) NOT NULL,
NoIngredient varchar(255) NOT NULL,
Quantité int NOT NULL
);
INSERT INTO "Utilisation" VALUES('Maes 25cl','Maes 25cl',1);
INSERT INTO "Utilisation" VALUES('Gin Tonic','Tonic',1);
INSERT INTO "Utilisation" VALUES('Gin Tonic','Gin',0.05);

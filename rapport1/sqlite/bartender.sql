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
INSERT INTO "Consommation" VALUES('Maes 25cl',1.8,'bière','Maes');
INSERT INTO "Consommation" VALUES('Gin Tonic',6,'cocktail','Gin tonic');
INSERT INTO "Consommation" VALUES('Maes 33cl',2.2,'bière','Maes');
INSERT INTO "Consommation" VALUES('Coca-cola',1.5,'soft','Coca');
INSERT INTO "Consommation" VALUES('Fanta',1.5,'soft','Fanta');
INSERT INTO "Consommation" VALUES('Mazout',2,'bière','Mazout');
INSERT INTO "Consommation" VALUES('Kriek',2,'bière','Kriek');
INSERT INTO "Consommation" VALUES('Rhum',4,'alcool','Rhum');
INSERT INTO "Consommation" VALUES('Rhum-coca',4,'cocktail','Rhum-coca');
DROP TABLE IF EXISTS "Description";
CREATE TABLE Description
(
NomDescription varchar(255) NOT NULL UNIQUE,
Image varchar(255) NOT NULL UNIQUE,
Texte varchar(255) NOT NULL UNIQUE,
PRIMARY KEY (NomDescription)
);
INSERT INTO "Description" VALUES('Maes','maes.jpg','maes.txt');
INSERT INTO "Description" VALUES('Gin tonic','gin_tonic.jpg','gin_tonic.txt');
INSERT INTO "Description" VALUES('Coca','coca.jpg','coca.txt');
INSERT INTO "Description" VALUES('Fanta','fanta.jpg','fanta.txt');
INSERT INTO "Description" VALUES('Mazout','mazout.jpg','mazout.txt');
INSERT INTO "Description" VALUES('Kriek','kriek.jpg','kriek.txt');
INSERT INTO "Description" VALUES('Rhum','rhum.jpg','rhum.txt');
INSERT INTO "Description" VALUES('Rhum-coca','rhum_coca.jpg','rhum_coca.txt');
DROP TABLE IF EXISTS "Detail";
CREATE TABLE "Detail" ("DateAjout" datetime NOT NULL ,"NoCommande" int NOT NULL ,"Identifiant" varchar(255),"NomConso" varchar(255) NOT NULL ,"DateLivraison" varchar(255) DEFAULT (null) );
INSERT INTO "Detail" VALUES('11:45',42,'jeff','Maes 25cl','11:47');
INSERT INTO "Detail" VALUES('18:01',43,NULL,'Gin Tonic',NULL);
INSERT INTO "Detail" VALUES('11:45',42,'jeff','Kriek','11:47');
INSERT INTO "Detail" VALUES('11:45',42,'jeff','Rhum-coca','11:47');
INSERT INTO "Detail" VALUES('11:49',42,'joe','Mazout','11:51');
INSERT INTO "Detail" VALUES('11:49',42,'joe','Coca-cola','11:51');
INSERT INTO "Detail" VALUES('18:01',43,NULL,'Coca-cola',NULL);
INSERT INTO "Detail" VALUES('18:01',43,NULL,'Rhum',NULL);
INSERT INTO "Detail" VALUES('18:01',43,NULL,'Rhum',NULL);
DROP TABLE IF EXISTS "Ingredient";
CREATE TABLE "Ingredient" ("NomIngredient" varchar(255) PRIMARY KEY  NOT NULL ,"StockActuel" int NOT NULL ,"StockSeuil" int,"StockMaximum" int,"Unites" varchar(255) NOT NULL );
INSERT INTO "Ingredient" VALUES('Maes 25cl',33,20,NULL,'bouteilles');
INSERT INTO "Ingredient" VALUES('Tonic',6,10,25,'bouteilles');
INSERT INTO "Ingredient" VALUES('Gin',1.5,1,7,'litres');
INSERT INTO "Ingredient" VALUES('Maes 33cl',26,10,50,'bouteilles');
INSERT INTO "Ingredient" VALUES('Coca-cola',3,10,50,'bouteilles');
INSERT INTO "Ingredient" VALUES('Fanta',22,10,50,'bouteilles');
INSERT INTO "Ingredient" VALUES('Kriek',32,10,50,'bouteilles');
INSERT INTO "Ingredient" VALUES('Rhum',7.2,1,10,'litres');
DROP TABLE IF EXISTS "Type";
CREATE TABLE Type
(
NomType varchar(255) NOT NULL UNIQUE,
Miniature varchar(255) NOT NULL UNIQUE,
PRIMARY KEY (NomType)
);
INSERT INTO "Type" VALUES('bière','biere.png');
INSERT INTO "Type" VALUES('cocktail','cocktail.png');
INSERT INTO "Type" VALUES('soft','soft.png');
INSERT INTO "Type" VALUES('alcool','alcool.png');
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
INSERT INTO "Utilisateur" VALUES('joe','youllneverfindit','joe@hotmail.be','serveur','français');
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
INSERT INTO "Utilisation" VALUES('Maes 33cl','Maes 33cl',1);
INSERT INTO "Utilisation" VALUES('Coca-cola','Coca-cola',1);
INSERT INTO "Utilisation" VALUES('Fanta','Fanta',1);
INSERT INTO "Utilisation" VALUES('Mazout','Coca-cola',1);
INSERT INTO "Utilisation" VALUES('Mazout','Maes 25cl',1);
INSERT INTO "Utilisation" VALUES('Kriek','Kriek',1);
INSERT INTO "Utilisation" VALUES('Rhum','Rhum',0.1);
INSERT INTO "Utilisation" VALUES('Rhum-coca','Rhum',0.1);
INSERT INTO "Utilisation" VALUES('Rhum-coca','Coca-cola',1);

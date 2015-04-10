DROP TABLE IF EXISTS "Order";
CREATE TABLE "Order"
(
OrderNum int NOT NULL UNIQUE,
Username varchar(255),
PaymentDate datetime,
TableNum int NOT NULL,
PRIMARY KEY(OrderNum)
);
INSERT INTO "Order" VALUES(43,'tiffany',NULL,3);
INSERT INTO "Order" VALUES(42,'tiffany','2012-12-21 11:53',1);
DROP TABLE IF EXISTS "Product";
CREATE TABLE Product
(
ProductName  varchar(255) NOT NULL UNIQUE,
Price real NOT NULL,
TypeName varchar(255) NOT NULL,
DescriptionName varchar(255) NOT NULL,
PRIMARY KEY (ProductName) 
);
INSERT INTO "Product" VALUES('Maes 25cl',1.8,'bière','Maes');
INSERT INTO "Product" VALUES('Gin Tonic',6,'cocktail','Gin tonic');
INSERT INTO "Product" VALUES('Maes 33cl',2.2,'bière','Maes');
INSERT INTO "Product" VALUES('Coca-cola',1.5,'soft','Coca');
INSERT INTO "Product" VALUES('Fanta',1.5,'soft','Fanta');
INSERT INTO "Product" VALUES('Mazout',2,'bière','Mazout');
INSERT INTO "Product" VALUES('Kriek',2,'bière','Kriek');
INSERT INTO "Product" VALUES('Rhum',4,'alcool','Rhum');
INSERT INTO "Product" VALUES('Rhum-coca',4,'cocktail','Rhum-coca');
DROP TABLE IF EXISTS "Description";
CREATE TABLE Description
(
DescriptionName varchar(255) NOT NULL UNIQUE,
Image varchar(255) NOT NULL UNIQUE,
Text varchar(255) NOT NULL UNIQUE,
PRIMARY KEY (DescriptionName)
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
CREATE TABLE "Detail" ("DateAdded" datetime NOT NULL ,"OrderNum" int NOT NULL ,"Username" varchar(255),"ProductName" varchar(255) NOT NULL ,"DateDelivered" varchar(255) DEFAULT (null) );
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
CREATE TABLE "Ingredient" ("IngredientName" varchar(255) PRIMARY KEY  NOT NULL ,"CurrentStock" real NOT NULL ,"CriticalStock" real,"MaxStock" real,"Units" varchar(255) NOT NULL );
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
TypeName varchar(255) NOT NULL UNIQUE,
Icon varchar(255) NOT NULL UNIQUE,
PRIMARY KEY (TypeName)
);
INSERT INTO "Type" VALUES('bière','biere.png');
INSERT INTO "Type" VALUES('cocktail','cocktail.png');
INSERT INTO "Type" VALUES('soft','soft.png');
INSERT INTO "Type" VALUES('alcool','alcool.png');
DROP TABLE IF EXISTS "User";
CREATE TABLE "User"
(
Username varchar(255) NOT NULL UNIQUE,
Password varchar(255) NOT NULL,
Email varchar(255) NOT NULL UNIQUE,
Rank varchar(255) NOT NULL ,
Language varchar(255) NOT NULL,
PRIMARY KEY(Username)
);
INSERT INTO "User" VALUES('tiffany','karateswag22','tiffany@hotmail.be','customer','fr');
INSERT INTO "User" VALUES('jeff','ilovetiffany','jeff@hotmail.be','waiter','en');
INSERT INTO "User" VALUES('joe','youllneverfindit','joe@hotmail.be','waiter','fr');
DROP TABLE IF EXISTS "Usage";
CREATE TABLE Usage
(
ProductName varchar(255) NOT NULL,
IngredientName varchar(255) NOT NULL,
Quantity real NOT NULL
);
INSERT INTO "Usage" VALUES('Maes 25cl','Maes 25cl',1);
INSERT INTO "Usage" VALUES('Gin Tonic','Tonic',1);
INSERT INTO "Usage" VALUES('Gin Tonic','Gin',0.05);
INSERT INTO "Usage" VALUES('Maes 33cl','Maes 33cl',1);
INSERT INTO "Usage" VALUES('Coca-cola','Coca-cola',1);
INSERT INTO "Usage" VALUES('Fanta','Fanta',1);
INSERT INTO "Usage" VALUES('Mazout','Coca-cola',1);
INSERT INTO "Usage" VALUES('Mazout','Maes 25cl',1);
INSERT INTO "Usage" VALUES('Kriek','Kriek',1);
INSERT INTO "Usage" VALUES('Rhum','Rhum',0.1);
INSERT INTO "Usage" VALUES('Rhum-coca','Rhum',0.1);
INSERT INTO "Usage" VALUES('Rhum-coca','Coca-cola',1);

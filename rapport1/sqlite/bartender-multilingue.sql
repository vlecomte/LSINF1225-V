DROP TABLE IF EXISTS "User";
CREATE TABLE "User"
(
    "Username" VARCHAR(255) NOT NULL PRIMARY KEY,
    "Password" VARCHAR(255) NOT NULL,
    "Email" VARCHAR(255) NOT NULL UNIQUE,
    "Rank" VARCHAR(255) NOT NULL
);
INSERT INTO "User" VALUES('tiffany','karateswag22','tiffany@hotmail.be','customer');
INSERT INTO "User" VALUES('jeff','ilovetiffany','jeff@hotmail.be','waiter');
INSERT INTO "User" VALUES('joe','youllneverfindit','joe@hotmail.be','waiter');

DROP TABLE IF EXISTS "Order";
CREATE TABLE "Order"
(
    "OrderNum" INT NOT NULL PRIMARY KEY,
    "TableNum" INT NOT NULL,
    "CustomerUsername" VARCHAR(255) REFERENCES "User",
    "DatePaid" INT
);
INSERT INTO "Order" VALUES(43,3,'tiffany',NULL);
INSERT INTO "Order" VALUES(42,1,'tiffany','2012-12-21 11:53');

DROP TABLE IF EXISTS "Detail";
CREATE TABLE "Detail"
(
    "OrderNum" INT NOT NULL,
    "ProductName" VARCHAR(255) NOT NULL,
    "DateAdded" INT NOT NULL,
    "DateDelivered" INT,
    "WaiterUsername" VARCHAR(255) REFERENCES "User"
);
INSERT INTO "Detail" VALUES(42,'maes25','11:45','11:47','jeff');
INSERT INTO "Detail" VALUES(43,'gin_tonic','18:01',NULL,NULL);
INSERT INTO "Detail" VALUES(42,'kriek','11:45','11:47','jeff');
INSERT INTO "Detail" VALUES(42,'rum_coke','11:45','11:47','jeff');
INSERT INTO "Detail" VALUES(42,'mazout','11:49','11:51','joe');
INSERT INTO "Detail" VALUES(42,'coke','11:49','11:51','joe');
INSERT INTO "Detail" VALUES(43,'coke','18:01',NULL,NULL);
INSERT INTO "Detail" VALUES(43,'rum','18:01',NULL,NULL);
INSERT INTO "Detail" VALUES(43,'rum','18:01',NULL,NULL);

DROP TABLE IF EXISTS "Product";
CREATE TABLE "Product"
(
    "ProductName" VARCHAR(255) NOT NULL PRIMARY KEY,
    "TypeName" VARCHAR(255) NOT NULL REFERENCES "Type",
    "Price" FLOAT NOT NULL,
    "DescriptionName" VARCHAR(255) NOT NULL REFERENCES "Description"
);
INSERT INTO "Product" VALUES('maes25','type_beer',1.80,'desc_maes');
INSERT INTO "Product" VALUES('maes33','type_beer',2.20,'desc_maes');
INSERT INTO "Product" VALUES('gin_tonic','type_cocktail',6.00,'desc_gin_tonic');
INSERT INTO "Product" VALUES('coke','type_soft',1.50,'desc_coke');
INSERT INTO "Product" VALUES('fanta','type_soft',1.50,'desc_fanta');
INSERT INTO "Product" VALUES('mazout','type_beer',2.00,'desc_mazout');
INSERT INTO "Product" VALUES('kriek','type_beer',2.00,'desc_kriek');
INSERT INTO "Product" VALUES('rum','type_spirit',4.00,'desc_rum');
INSERT INTO "Product" VALUES('rum_coke','type_cocktail',4.00,'desc_rum_coke');

DROP TABLE IF EXISTS "Type";
CREATE TABLE "Type"
(
    "TypeName" VARCHAR(255) NOT NULL PRIMARY KEY,
    "Icon" VARCHAR(255) NOT NULL UNIQUE
);
INSERT INTO "Type" VALUES('type_beer','type_beer.png');
INSERT INTO "Type" VALUES('type_cocktail','type_cocktail.png');
INSERT INTO "Type" VALUES('type_soft','type_soft.png');
INSERT INTO "Type" VALUES('type_spirit','type_spirit.png');

DROP TABLE IF EXISTS "Description";
CREATE TABLE "Description"
(
    "DescriptionName" VARCHAR(255) NOT NULL PRIMARY KEY,
    "Image" VARCHAR(255) NOT NULL UNIQUE,
    "Text" VARCHAR(255) NOT NULL UNIQUE
);
INSERT INTO "Description" VALUES('desc_maes','maes.jpg','maes.txt');
INSERT INTO "Description" VALUES('desc_gin_tonic','gin_tonic.jpg','gin_tonic.txt');
INSERT INTO "Description" VALUES('desc_coke','coke.jpg','coke.txt');
INSERT INTO "Description" VALUES('desc_fanta','fanta.jpg','fanta.txt');
INSERT INTO "Description" VALUES('desc_mazout','mazout.jpg','mazout.txt');
INSERT INTO "Description" VALUES('desc_kriek','kriek.jpg','kriek.txt');
INSERT INTO "Description" VALUES('desc_rum','rum.jpg','rum.txt');
INSERT INTO "Description" VALUES('desc_rum_coke','rum_coke.jpg','rum_coke.txt');

DROP TABLE IF EXISTS "Ingredient";
CREATE TABLE "Ingredient"
(
    "IngredientName" VARCHAR(255) PRIMARY KEY  NOT NULL,
    "CurrentStock" FLOAT NOT NULL,
    "CriticalStock" FLOAT,
    "MaxStock" FLOAT,
    "Units" VARCHAR(255) NOT NULL
);
INSERT INTO "Ingredient" VALUES('ing_maes25',33,20,NULL,'units_bottle');
INSERT INTO "Ingredient" VALUES('ing_maes33',26,10,50,'units_bottle');
INSERT INTO "Ingredient" VALUES('ing_tonic',6,10,25,'units_bottle');
INSERT INTO "Ingredient" VALUES('ing_gin',1.5,1,7,'units_litre');
INSERT INTO "Ingredient" VALUES('ing_coke',3,10,50,'units_bottle');
INSERT INTO "Ingredient" VALUES('ing_fanta',22,10,50,'units_bottle');
INSERT INTO "Ingredient" VALUES('ing_kriek',32,10,50,'units_bottle');
INSERT INTO "Ingredient" VALUES('ing_rum',7.2,1,10,'units_litre');

DROP TABLE IF EXISTS "Usage";
CREATE TABLE "Usage"
(
    "ProductName" VARCHAR(255) NOT NULL REFERENCES "Product",
    "IngredientName" VARCHAR(255) NOT NULL REFERENCES "Ingredient",
    "Quantity" FLOAT NOT NULL,
    PRIMARY KEY(ProductName, IngredientName)
);
INSERT INTO "Usage" VALUES('maes25','ing_maes25',1);
INSERT INTO "Usage" VALUES('gin_tonic','ing_tonic',1);
INSERT INTO "Usage" VALUES('gin_tonic','ing_gin',0.05);
INSERT INTO "Usage" VALUES('maes33','ing_maes33',1);
INSERT INTO "Usage" VALUES('coke','ing_coke',1);
INSERT INTO "Usage" VALUES('fanta','ing_fanta',1);
INSERT INTO "Usage" VALUES('mazout','ing_coke',1);
INSERT INTO "Usage" VALUES('mazout','ing_maes25',1);
INSERT INTO "Usage" VALUES('kriek','ing_kriek',1);
INSERT INTO "Usage" VALUES('rum','ing_rum',0.1);
INSERT INTO "Usage" VALUES('rum_coke','ing_rum',0.1);
INSERT INTO "Usage" VALUES('rum_coke','ing_coke',1);


DROP TABLE IF EXISTS "ProductDisplayName";
CREATE TABLE "ProductDisplayName"
(
    "ProductName" VARCHAR(255) NOT NULL REFERENCES "Product",
    "Language" VARCHAR(255) NOT NULL,
    "ProductDisplayName" VARCHAR(255) NOT NULL,
    PRIMARY KEY(ProductName, Language)
);
INSERT INTO "ProductDisplayName" VALUES('maes25','en','Maes 25cl');
INSERT INTO "ProductDisplayName" VALUES('maes25','fr','Maes 25cl');
INSERT INTO "ProductDisplayName" VALUES('maes33','en','Maes 33cl');
INSERT INTO "ProductDisplayName" VALUES('maes33','fr','Maes 33cl');
INSERT INTO "ProductDisplayName" VALUES('gin_tonic','en','Gin and Tonic');
INSERT INTO "ProductDisplayName" VALUES('gin_tonic','fr','Gin-Tonic');
INSERT INTO "ProductDisplayName" VALUES('coke','en','Coca-Cola');
INSERT INTO "ProductDisplayName" VALUES('coke','fr','Coca-Cola');
INSERT INTO "ProductDisplayName" VALUES('fanta','en','Fanta');
INSERT INTO "ProductDisplayName" VALUES('fanta','fr','Fanta');
INSERT INTO "ProductDisplayName" VALUES('mazout','en','Diesel');
INSERT INTO "ProductDisplayName" VALUES('mazout','fr','Mazout');
INSERT INTO "ProductDisplayName" VALUES('kriek','en','Kriek');
INSERT INTO "ProductDisplayName" VALUES('kriek','fr','Kriek');
INSERT INTO "ProductDisplayName" VALUES('rum','en','Rum');
INSERT INTO "ProductDisplayName" VALUES('rum','fr','Rhum');
INSERT INTO "ProductDisplayName" VALUES('rum_coke','en','Cuba Libre');
INSERT INTO "ProductDisplayName" VALUES('rum_coke','fr','Rhum-Coca');

DROP TABLE IF EXISTS "IngredientDisplayName";
CREATE TABLE "IngredientDisplayName"
(
    "IngredientName" VARCHAR(255) NOT NULL REFERENCES "Ingredient",
    "Language" VARCHAR(255) NOT NULL,
    "IngredientDisplayName" VARCHAR(255) NOT NULL,
    PRIMARY KEY(IngredientName, Language)
);
INSERT INTO "IngredientDisplayName" VALUES('ing_maes25','en','Maes 25cl');
INSERT INTO "IngredientDisplayName" VALUES('ing_maes25','fr','Maes 25cl');
INSERT INTO "IngredientDisplayName" VALUES('ing_maes33','en','Maes 33cl');
INSERT INTO "IngredientDisplayName" VALUES('ing_maes33','fr','Maes 33cl');
INSERT INTO "IngredientDisplayName" VALUES('ing_tonic','en','Tonic');
INSERT INTO "IngredientDisplayName" VALUES('ing_tonic','fr','Tonic');
INSERT INTO "IngredientDisplayName" VALUES('ing_gin','en','Gin');
INSERT INTO "IngredientDisplayName" VALUES('ing_gin','fr','Gin');
INSERT INTO "IngredientDisplayName" VALUES('ing_coke','en','Coca-Cola');
INSERT INTO "IngredientDisplayName" VALUES('ing_coke','fr','Coca-Cola');
INSERT INTO "IngredientDisplayName" VALUES('ing_fanta','en','Fanta');
INSERT INTO "IngredientDisplayName" VALUES('ing_fanta','fr','Fanta');
INSERT INTO "IngredientDisplayName" VALUES('ing_kriek','en','Kriek');
INSERT INTO "IngredientDisplayName" VALUES('ing_kriek','fr','Kriek');
INSERT INTO "IngredientDisplayName" VALUES('ing_rum','en','Rum');
INSERT INTO "IngredientDisplayName" VALUES('ing_rum','fr','Rhum');

DROP TABLE IF EXISTS "UnitsDisplayName";
CREATE TABLE "UnitsDisplayName"
(
    "Units" VARCHAR(255) NOT NULL,
    "Language" VARCHAR(255) NOT NULL,
    "UnitsDisplayName" VARCHAR(255) NOT NULL,
    PRIMARY KEY(Units, Language)
);
INSERT INTO "UnitsDisplayName" VALUES('units_bottle','en','bottles');
INSERT INTO "UnitsDisplayName" VALUES('units_bottle','fr','bouteilles');
INSERT INTO "UnitsDisplayName" VALUES('units_litre','en','litres');
INSERT INTO "UnitsDisplayName" VALUES('units_litre','fr','litres');

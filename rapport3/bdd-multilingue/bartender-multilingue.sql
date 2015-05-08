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
INSERT INTO "User" VALUES('joe','youllneverfindit','joe@hotmail.be','admin');
INSERT INTO "User" VALUES('leonard','thetruelion','leonard@hotmail.be','customer');
INSERT INTO "User" VALUES('arthur','excalibur','roi_arthur@hotmail.be','customer');
INSERT INTO "User" VALUES('martin','martiniforever','@hotmail.be','waiter');
INSERT INTO "User" VALUES('marie','fleurs1254','marie_fleurs@hotmail.be','customer');
INSERT INTO "User" VALUES('aidan','liveforscience','aidan.waste@hotmail.be','customer');
INSERT INTO "User" VALUES('eline','keepcool','eline@gmail.be','waiter');
INSERT INTO "User" VALUES('bruno','wrongpasseword','terlin.bruno12@gmail.be','waiter');
INSERT INTO "User" VALUES('theodore','vieuxjeu','becauseineededit@hotmail.be','customer');
INSERT INTO "User" VALUES('charlotte','searchingforjoe','charlotte@hotmail.be','customer');
INSERT INTO "User" VALUES('amaury','123456789easy','am.mau.ry@gmail.be','customer');
INSERT INTO "User" VALUES('georges','clooney','lacteur@hotmail.be','customer');
INSERT INTO "User" VALUES('suzanne','onecoke','suzanne@hotmail.be','customer');
INSERT INTO "User" VALUES('kmens','mysecretpassword','kim.mens@uclouvain.be','admin');
INSERT INTO "User" VALUES('dsarkozi','mysecretpassword','david.sarkozi@uclouvain.be','admin');

DROP TABLE IF EXISTS "Order";
CREATE TABLE "Order"
(
    "OrderNum" INT NOT NULL PRIMARY KEY,
    "TableNum" INT NOT NULL,
    "CustomerUsername" VARCHAR(255) REFERENCES "User",
    "DatePaid" INT
);
INSERT INTO "Order" VALUES(70,3,'tiffany',NULL);
INSERT INTO "Order" VALUES(69,1,'amaury',strftime('%s','2015-05-15 16:10'));
INSERT INTO "Order" VALUES(68,4,'suzanne',strftime('%s','2015-05-14 17:33'));
INSERT INTO "Order" VALUES(67,5,'marie',strftime('%s','2015-05-14 15:25'));
INSERT INTO "Order" VALUES(66,5,'tiffany',strftime('%s','2015-05-12 18:07'));
INSERT INTO "Order" VALUES(65,3,'georges',strftime('%s','2015-05-12 17:12'));
INSERT INTO "Order" VALUES(64,5,'aidan',strftime('%s','2015-05-12 16:40'));
INSERT INTO "Order" VALUES(63,4,'amaury',strftime('%s','2015-05-12 16:03'));
INSERT INTO "Order" VALUES(62,2,NULL,strftime('%s','2015-05-12 15:59'));
INSERT INTO "Order" VALUES(61,1,'leonard',strftime('%s','2015-05-12 15:52'));
INSERT INTO "Order" VALUES(60,1,'theodore',strftime('%s','2015-05-11 16:46'));
INSERT INTO "Order" VALUES(59,2,'marie',strftime('%s','2015-05-11 16:24'));
INSERT INTO "Order" VALUES(58,5,'charlotte',strftime('%s','2015-05-11 16:20'));
INSERT INTO "Order" VALUES(57,3,'tiffany',strftime('%s','2015-05-11 15:52'));
INSERT INTO "Order" VALUES(56,4,'amaury',strftime('%s','2015-05-11 15:47'));
INSERT INTO "Order" VALUES(55,1,'aidan',strftime('%s','2015-05-11 15:41'));
INSERT INTO "Order" VALUES(54,5,NULL,strftime('%s','2015-05-11 13:53'));
INSERT INTO "Order" VALUES(53,3,'georges',strftime('%s','2015-05-11 10:01'));
INSERT INTO "Order" VALUES(52,3,'amaury',strftime('%s','2015-05-10 17:41'));
INSERT INTO "Order" VALUES(51,4,'suzanne',strftime('%s','2015-05-10 10:51'));
INSERT INTO "Order" VALUES(50,2,'arthur',strftime('%s','2015-05-09 11:53'));
INSERT INTO "Order" VALUES(49,1,'leonard',strftime('%s','2015-05-08 18:29'));
INSERT INTO "Order" VALUES(48,4,'charlotte',strftime('%s','2015-05-08 09:53'));
INSERT INTO "Order" VALUES(47,3,'tiffany',strftime('%s','2015-05-07 16:44'));
INSERT INTO "Order" VALUES(46,1,'amaury',strftime('%s','2015-05-07 16:23'));
INSERT INTO "Order" VALUES(45,4,NULL,strftime('%s','2015-05-07 14:07'));
INSERT INTO "Order" VALUES(44,1,NULL,strftime('%s','2015-05-07 14:04'));
INSERT INTO "Order" VALUES(43,1,'amaury',strftime('%s','2015-05-07 13:53'));
INSERT INTO "Order" VALUES(42,1,'tiffany',strftime('%s','2015-05-07 11:53'));
INSERT INTO "Order" VALUES(41,1,'georges',strftime('%s','2015-05-07 10:49'));
INSERT INTO "Order" VALUES(40,1,'aidan',strftime('%s','2015-05-06 18:09'));
INSERT INTO "Order" VALUES(24,5,'arthur',strftime('%s','2015-05-01 09:53'));
INSERT INTO "Order" VALUES(39,2,'charlotte',strftime('%s','2015-05-06 14:01'));
INSERT INTO "Order" VALUES(38,1,'amaury',strftime('%s','2015-05-06 11:00'));
INSERT INTO "Order" VALUES(37,1,'suzanne',strftime('%s','2015-05-05 16:24'));
INSERT INTO "Order" VALUES(36,2,'amaury',strftime('%s','2015-05-05 16:22'));
INSERT INTO "Order" VALUES(35,4,'tiffany',strftime('%s','2015-05-05 16:17'));
INSERT INTO "Order" VALUES(34,3,'leonard',strftime('%s','2015-05-05 16:16'));
INSERT INTO "Order" VALUES(33,1,'georges',strftime('%s','2015-05-05 15:58'));
INSERT INTO "Order" VALUES(32,5,NULL,strftime('%s','2015-05-05 15:10'));
INSERT INTO "Order" VALUES(31,2,'aidan',strftime('%s','2015-05-05 14:03'));
INSERT INTO "Order" VALUES(30,1,'suzanne',strftime('%s','2015-05-04 18:30'));
INSERT INTO "Order" VALUES(29,4,'aidan',strftime('%s','2015-05-04 17:47'));
INSERT INTO "Order" VALUES(28,3,'marie',strftime('%s','2015-05-04 16:20'));
INSERT INTO "Order" VALUES(27,5,'theodore',strftime('%s','2015-05-03 18:22'));
INSERT INTO "Order" VALUES(26,4,'amaury',strftime('%s','2015-05-03 16:25'));
INSERT INTO "Order" VALUES(25,1,'amaury',strftime('%s','2015-05-02 16:17'));




DROP TABLE IF EXISTS "Detail";
CREATE TABLE "Detail"
(
    "OrderNum" INT NOT NULL,
    "ProductName" VARCHAR(255) NOT NULL,
    "DateAdded" INT NOT NULL,
    "DateDelivered" INT,
    "WaiterUsername" VARCHAR(255) REFERENCES "User"
);
INSERT INTO "Detail" VALUES(42,'maes25',strftime('%s','2015-05-07 11:45'),strftime('%s','2015-05-07 11:47'),'jeff');
INSERT INTO "Detail" VALUES(70,'gin_tonic',strftime('%s','2015-05-15 18:01'),NULL,NULL);
INSERT INTO "Detail" VALUES(69,'maes33',strftime('%s','2015-05-15 15:50'),strftime('%s','2015-05-15 15:51'),'bruno');
INSERT INTO "Detail" VALUES(68,'kriek',strftime('%s','2015-05-14 17:01'),strftime('%s','2015-05-14 17:04'),'martin');
INSERT INTO "Detail" VALUES(68,'kriek',strftime('%s','2015-05-14 17:01'),strftime('%s','2015-05-14 17:04'),'martin');
INSERT INTO "Detail" VALUES(68,'kriek',strftime('%s','2015-05-14 17:01'),strftime('%s','2015-05-14 17:04'),'martin');
INSERT INTO "Detail" VALUES(68,'kriek',strftime('%s','2015-05-14 17:01'),strftime('%s','2015-05-14 17:04'),'martin');
INSERT INTO "Detail" VALUES(67,'gin_tonic',strftime('%s','2015-05-14 15:02'),strftime('%s','2015-05-14 15:05'),'jeff');
INSERT INTO "Detail" VALUES(66,'maes25',strftime('%s','2015-05-12 17:24'),strftime('%s','2015-05-12 17:30'),'joe');
INSERT INTO "Detail" VALUES(66,'rum_coke',strftime('%s','2015-05-12 17:24'),strftime('%s','2015-05-12 17:30'),'joe');
INSERT INTO "Detail" VALUES(66,'rum',strftime('%s','2015-05-12 17:24'),strftime('%s','2015-05-12 17:30'),'joe');
INSERT INTO "Detail" VALUES(66,'coke',strftime('%s','2015-05-12 17:24'),strftime('%s','2015-05-12 17:30'),'joe');
INSERT INTO "Detail" VALUES(66,'coke',strftime('%s','2015-05-12 17:24'),strftime('%s','2015-05-12 17:30'),'joe');
INSERT INTO "Detail" VALUES(65,'maes25',strftime('%s','2015-05-12 17:00'),strftime('%s','2015-05-12 17:02'),'jeff');
INSERT INTO "Detail" VALUES(65,'kriek',strftime('%s','2015-05-12 17:00'),strftime('%s','2015-05-12 17:02'),'jeff');
INSERT INTO "Detail" VALUES(64,'gin_tonic',strftime('%s','2015-05-12 16:25'),strftime('%s','2015-05-12 16:30'),'eline');
INSERT INTO "Detail" VALUES(63,'maes33',strftime('%s','2015-05-12 15:40'),strftime('%s','2015-05-12 15:42'),'bruno');
INSERT INTO "Detail" VALUES(62,'maes33',strftime('%s','2015-05-12 15:20'),strftime('%s','2015-05-12 15:25'),'bruno');
INSERT INTO "Detail" VALUES(62,'maes25',strftime('%s','2015-05-12 15:20'),strftime('%s','2015-05-12 15:25'),'bruno');
INSERT INTO "Detail" VALUES(62,'rum',strftime('%s','2015-05-12 15:20'),strftime('%s','2015-05-12 15:25'),'bruno');
INSERT INTO "Detail" VALUES(62,'maes25',strftime('%s','2015-05-12 15:20'),strftime('%s','2015-05-12 15:25'),'bruno');
INSERT INTO "Detail" VALUES(61,'maes25',strftime('%s','2015-05-12 15:30'),strftime('%s','2015-05-12 15:39'),'martin');
INSERT INTO "Detail" VALUES(60,'rum_coke',strftime('%s','2015-05-11 16:11'),strftime('%s','2015-05-11 16:15'),'eline');
INSERT INTO "Detail" VALUES(59,'maes33',strftime('%s','2015-05-11 15:30'),strftime('%s','2015-05-11 15:40'),'martin');
INSERT INTO "Detail" VALUES(59,'coke',strftime('%s','2015-05-11 15:30'),strftime('%s','2015-05-11 15:40'),'martin');
INSERT INTO "Detail" VALUES(59,'coke',strftime('%s','2015-05-11 15:30'),strftime('%s','2015-05-11 15:40'),'martin');
INSERT INTO "Detail" VALUES(59,'kriek',strftime('%s','2015-05-11 15:30'),strftime('%s','2015-05-11 15:40'),'martin');
INSERT INTO "Detail" VALUES(59,'maes25',strftime('%s','2015-05-11 15:30'),strftime('%s','2015-05-11 15:40'),'martin');
INSERT INTO "Detail" VALUES(58,'fanta',strftime('%s','2015-05-11 15:40'),strftime('%s','2015-05-11 15:46'),'joe');
INSERT INTO "Detail" VALUES(57,'kriek',strftime('%s','2015-05-11 15:25'),strftime('%s','2015-05-11 15:31'),'martin');
INSERT INTO "Detail" VALUES(57,'fanta',strftime('%s','2015-05-11 15:25'),strftime('%s','2015-05-11 15:31'),'martin');
INSERT INTO "Detail" VALUES(56,'maes33',strftime('%s','2015-05-11 15:20'),strftime('%s','2015-05-11 15:25'),'bruno');
INSERT INTO "Detail" VALUES(55,'gin_tonic',strftime('%s','2015-05-11 15:21'),strftime('%s','2015-05-11 15:25'),'eline');
INSERT INTO "Detail" VALUES(54,'maes25',strftime('%s','2015-05-11 13:11'),strftime('%s','2015-05-11 13:15'),'eline');
INSERT INTO "Detail" VALUES(54,'maes25',strftime('%s','2015-05-11 13:11'),strftime('%s','2015-05-11 13:15'),'eline');
INSERT INTO "Detail" VALUES(54,'maes33',strftime('%s','2015-05-11 13:11'),strftime('%s','2015-05-11 13:15'),'eline');
INSERT INTO "Detail" VALUES(53,'maes33',strftime('%s','2015-05-11 09:51'),strftime('%s','2015-05-11 09:52'),'joe');
INSERT INTO "Detail" VALUES(52,'maes33',strftime('%s','2015-05-10 17:27'),strftime('%s','2015-05-10 17:29'),'bruno');
INSERT INTO "Detail" VALUES(51,'kriek',strftime('%s','2015-05-10 10:35'),strftime('%s','2015-05-10 10:39'),'jeff');
INSERT INTO "Detail" VALUES(50,'mazout',strftime('%s','2015-05-09 11:42'),strftime('%s','2015-05-09 11:43'),'eline');
INSERT INTO "Detail" VALUES(49,'maes33',strftime('%s','2015-05-08 18:02'),strftime('%s','2015-05-08 18:05'),'martin');
INSERT INTO "Detail" VALUES(49,'maes33',strftime('%s','2015-05-08 18:02'),strftime('%s','2015-05-08 18:05'),'martin');
INSERT INTO "Detail" VALUES(49,'maes33',strftime('%s','2015-05-08 18:02'),strftime('%s','2015-05-08 18:05'),'martin');
INSERT INTO "Detail" VALUES(49,'maes33',strftime('%s','2015-05-08 18:02'),strftime('%s','2015-05-08 18:05'),'martin');
INSERT INTO "Detail" VALUES(49,'maes33',strftime('%s','2015-05-08 18:02'),strftime('%s','2015-05-08 18:05'),'martin');
INSERT INTO "Detail" VALUES(48,'coke',strftime('%s','2015-05-08 09:41'),strftime('%s','2015-05-08 09:42'),'joe');
INSERT INTO "Detail" VALUES(47,'kriek',strftime('%s','2015-05-07 16:15'),strftime('%s','2015-05-07 16:18'),'eline');
INSERT INTO "Detail" VALUES(47,'kriek',strftime('%s','2015-05-07 16:15'),strftime('%s','2015-05-07 16:18'),'eline');
INSERT INTO "Detail" VALUES(47,'kriek',strftime('%s','2015-05-07 16:15'),strftime('%s','2015-05-07 16:18'),'eline');
INSERT INTO "Detail" VALUES(46,'maes33',strftime('%s','2015-05-07 16:14'),strftime('%s','2015-05-07 16:15'),'bruno');
INSERT INTO "Detail" VALUES(45,'gin_tonic',strftime('%s','2015-05-07 13:47'),strftime('%s','2015-05-07 13:51'),'joe');
INSERT INTO "Detail" VALUES(44,'kriek',strftime('%s','2015-05-07 13:47'),strftime('%s','2015-05-07 13:49'),'martin');
INSERT INTO "Detail" VALUES(43,'maes33',strftime('%s','2015-05-07 13:32'),strftime('%s','2015-05-07 13:35'),'bruno');
INSERT INTO "Detail" VALUES(42,'kriek',strftime('%s','2015-05-07 11:45'),strftime('%s','2015-05-07 11:47'),'jeff');
INSERT INTO "Detail" VALUES(42,'rum_coke',strftime('%s','2015-05-07 11:45'),strftime('%s','2015-05-07 11:47'),'jeff');
INSERT INTO "Detail" VALUES(42,'mazout',strftime('%s','2015-05-07 11:49'),strftime('%s','2015-05-07 11:51'),'joe');
INSERT INTO "Detail" VALUES(42,'coke',strftime('%s','2015-05-07 11:49'),strftime('%s','2015-05-07 11:51'),'joe');
INSERT INTO "Detail" VALUES(41,'rum_coke',strftime('%s','2015-05-07 11:49'),strftime('%s','2015-05-07 11:51'),'joe');
INSERT INTO "Detail" VALUES(41,'coke',strftime('%s','2015-05-07 10:35'),strftime('%s','2015-05-07 10:40'),'jeff');
INSERT INTO "Detail" VALUES(40,'gin_tonic',strftime('%s','2015-05-06 17:53'),strftime('%s','2015-05-06 18:08'),'bruno');
INSERT INTO "Detail" VALUES(39,'coke',strftime('%s','2015-05-06 13:49'),strftime('%s','2015-05-06 13:52'),'bruno');
INSERT INTO "Detail" VALUES(39,'fanta',strftime('%s','2015-05-06 13:49'),strftime('%s','2015-05-06 13:52'),'bruno');
INSERT INTO "Detail" VALUES(38,'maes33',strftime('%s','2015-05-06 10:48'),strftime('%s','2015-05-06 10:50'),'joe');
INSERT INTO "Detail" VALUES(37,'coke',strftime('%s','2015-05-05 16:15'),strftime('%s','2015-05-05 16:18'),'eline');
INSERT INTO "Detail" VALUES(37,'fanta',strftime('%s','2015-05-05 16:19'),strftime('%s','2015-05-05 16:21'),'eline');
INSERT INTO "Detail" VALUES(37,'coke',strftime('%s','2015-05-05 16:19'),strftime('%s','2015-05-05 16:21'),'eline');
INSERT INTO "Detail" VALUES(36,'maes33',strftime('%s','2015-05-05 16:04'),strftime('%s','2015-05-05 16:07'),'martin');
INSERT INTO "Detail" VALUES(35,'rum_coke',strftime('%s','2015-05-05 16:03'),strftime('%s','2015-05-05 16:06'),'bruno');
INSERT INTO "Detail" VALUES(34,'rum_coke',strftime('%s','2015-05-05 16:03'),strftime('%s','2015-05-05 16:05'),'jeff');
INSERT INTO "Detail" VALUES(34,'gin_tonic',strftime('%s','2015-05-05 16:03'),strftime('%s','2015-05-05 16:05'),'jeff');
INSERT INTO "Detail" VALUES(33,'coke',strftime('%s','2015-05-05 15:47'),strftime('%s','2015-05-05 15:50'),'eline');
INSERT INTO "Detail" VALUES(32,'maes25',strftime('%s','2015-05-05 15:03'),strftime('%s','2015-05-05 15:05'),'joe');
INSERT INTO "Detail" VALUES(31,'gin_tonic',strftime('%s','2015-05-05 13:57'),strftime('%s','2015-05-05 14:00'),'martin');
INSERT INTO "Detail" VALUES(30,'rum_coke',strftime('%s','2015-05-05 18:01'),strftime('%s','2015-05-05 18:05'),'bruno');
INSERT INTO "Detail" VALUES(30,'fanta',strftime('%s','2015-05-05 18:01'),strftime('%s','2015-05-05 18:05'),'bruno');
INSERT INTO "Detail" VALUES(30,'maes33',strftime('%s','2015-05-05 18:01'),strftime('%s','2015-05-05 18:05'),'bruno');
INSERT INTO "Detail" VALUES(29,'gin_tonic',strftime('%s','2015-05-04 17:39'),strftime('%s','2015-05-04 17:43'),'eline');
INSERT INTO "Detail" VALUES(28,'maes33',strftime('%s','2015-05-04 16:03'),strftime('%s','2015-05-04 16:10'),'joe');
INSERT INTO "Detail" VALUES(28,'kriek',strftime('%s','2015-05-04 16:03'),strftime('%s','2015-05-04 16:10'),'joe');
INSERT INTO "Detail" VALUES(27,'rum_coke',strftime('%s','2015-05-03 18:15'),strftime('%s','2015-05-03 18:18'),'martin');
INSERT INTO "Detail" VALUES(26,'maes33',strftime('%s','2015-05-03 16:14'),strftime('%s','2015-05-03 16:15'),'bruno');
INSERT INTO "Detail" VALUES(25,'maes33',strftime('%s','2015-05-02 16:10'),strftime('%s','2015-05-02 16:12'),'bruno');
INSERT INTO "Detail" VALUES(24,'fanta',strftime('%s','2015-05-01 09:40'),strftime('%s','2015-05-01 09:44'),'jeff');
INSERT INTO "Detail" VALUES(70,'coke',strftime('%s','2015-05-15 18:01'),NULL,NULL);
INSERT INTO "Detail" VALUES(70,'rum',strftime('%s','2015-05-15 18:01'),NULL,NULL);
INSERT INTO "Detail" VALUES(70,'rum',strftime('%s','2015-05-15 18:01'),NULL,NULL);

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
INSERT INTO "Type" VALUES('type_beer','ic_type_beer');
INSERT INTO "Type" VALUES('type_cocktail','ic_type_cocktail');
INSERT INTO "Type" VALUES('type_soft','ic_type_soft');
INSERT INTO "Type" VALUES('type_spirit','ic_type_spirit');

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
INSERT INTO "Ingredient" VALUES('ing_gin',1.5,NULL,NULL,'units_litre');
INSERT INTO "Ingredient" VALUES('ing_coke',3,NULL,50,'units_bottle');
INSERT INTO "Ingredient" VALUES('ing_fanta',22,10,50,'units_bottle');
INSERT INTO "Ingredient" VALUES('ing_kriek',32,10,NULL,'units_bottle');
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

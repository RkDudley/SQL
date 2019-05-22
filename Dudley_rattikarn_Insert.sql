INSERT INTO Profile_Amazon(profile_id,firstname,lastname,email,address)
VALUES (1, 'Sydney','Acton','tincidun@sedneque.net', '670 Consectetuer Rd Vienna Vienna Switzerland 66231 '),
	   (2, 'Destiny','Christen', 'etmagnisdis@Fuscefermentum.ca', '264 Lacus. Rd. Beauport QC Hungary 445621'),
	   (3, 'Hadley','Noah', 'pede.ultrices.a@necmollis.com', '175 Et, Avenue Sokoto SO Saudi Arabia 33216'),
	   (4, 'Fuller','Erasmus', 'non@Suspendisseac.co.uk', '3876 Dui St Elingen SO Dominican 32200 556984'),
	   (5, 'Alexis','Rose', 'augue.ut.lacus@Donecdignissim.org', '1504 Donnec Avenue Elinge VB French Guiana 32156'),
	   (6, 'McKenzi','Daryl','et.risus@sitametfaucibus.co.uk', '233 Pharetra, St Villeneuve-d Nord-Pas-de-Calais Austria 23651 '),
	   (7, 'Alvin','Ulric', 'in@quam.edu', '6714 At St Geelong Victoria Tanzania 23156 '),
	   (8, 'Nero','Nell', 'Donec.feugiat@utnisia.edu', '34 Quisque Road Liverpool NSW Albania 51246 '),
	   (9, 'Wayne','Petra', 'Integer.id.magna@Phaselluselit.com', '901 Nec Street Wilmont Ontario France 23144 '),
	   (10, 'Daryl','Gil', 'arcu.Aliquam.ultrices@molestietortor.net', '32 Felis Avenue Stalowa Wola PO Costa Rica 66985');

INSERT INTO Amazon_Account (Amazon_account_ID,Username,password,profile_id)
VALUES (1,'Austin', 56978965, 5),
	   (2,'Colt', 58463219, 3),
	   (3,'Grace', 1254698,2),
	   (4, 'Ann', 12365478, 1),
	   (5, 'Gay', 1254698,1),
	   (6, 'Idola', 45698541,4),
	   (7, 'Otto', 1452316,5),
	   (8,'Brynn', 56978965, 6),
	   (9,'Eagan', 58463219, 8),
	   (10,'Kelsie', 1254698,10),
	   (11, 'Priscilla', 12365478, 7),
	   (12, 'Akeem', 1254698,7),
	   (13, 'Thomas', 45698541,4),
	   (14, 'Natty', 1452316,8);


INSERT INTO Seller (seller_id, distribution_date, Amazon_Account_Id)
VALUES (1, cast('2015-12-17' as date), 14),
	   (2, cast('2018-10-10' as date), 3),
	   (3, cast('2017-9-30' as date), 2),
	   (4, cast('2013-5-20' as date), 1),
	   (5, cast('2012-12-21' as date),4);

INSERT INTO Buyer(Buyer_id, Amazon_id)
VALUES (1, 5),
	   (2, 4),
	   (3, 2),
	   (4, 6),
	   (5, 8),
	   (6, 7),
	   (7, 9),
	   (8, 10),
	   (9, 14),
	   (10, 12);

INSERT INTO Catagories (catagories_id, catagories_type)
VALUES( 1, 'Book'), 
		(2 ,'Home ,Garden & tool'),
		(3, 'Pet Supplies'),
		(4, 'Clothing, Shoes, Jewery & Watch'),
		(5, 'Handmade'),
		(6, 'Toy, Kid & baby'),
		(7, 'Sport & Outdoor'),
		(8, 'Food & Grocery'),
		(9, 'Movie, Music &Game'),
		(10, 'Electronic, Computer & Office');

INSERT INTO Condition (condition_id, condition_type)
VALUES (1, 'USED'),(2, 'NEW');

INSERT INTO Product_Amazon(product_id, product_name, price, description, catagories_id,condition_id, unit)
VALUES (1, 'The season of styx Malone', 11.72, 'childeren book', 1 , 1, 30),
		(2, 'Dragon Ball Super: Part5', 21.65, 'Blu ray Disc2', 9 , 2, 10),
		(3, 'Dragon Ball Super: Part5', 19.88, 'DVD Disc6', 9 , 1, 5),
		(4, 'Stainless Steel Dog Bowl', 12.99, 'food bowl container', 3 , 2, 10),
		(5, 'Coca-Cola Soda Soft Drink', 4.68, 'softdrink 6 packs', 8 , 2, 10),
		(6, 'PediaSure Grow withFiber', 32.97, 'baby mailk', 6 , 2, 5),
		(7, 'Modern Faux Leather Futon', 154.99, 'futon sofa bed', 2 , 1, 6),
		(8, 'Toshiba 32LF221U19 32-in', 149.99, '720p HD Smart LED TV', 10 , 2, 7),
		(9, 'PlayStation 4 slim', 299.99, '1 TB video game console', 10 , 1, 9),
		(10, 'XBox One S -NBA 2K19 Bundle', 229.99, '1 TB video game console w/ NBA 2K19', 9 , 2, 5),
		(11, 'Holy Stone HS110D FPV Drone', 129.99, '720p camera WIFI quadcopter', 10 , 2, 8),
		(12, 'Red Dead Redemption PS4', 59.98, 'Western PS4 video game', 9 , 1, 8),
		(13, 'Prdive Premium Snorkel set', 29.99, 'Anti-fog lens tempered glass snorkel set', 7 , 2, 100),
		(14, 'Mountaintop 40 liter hiking Backpack', 42.99, 'outdoor camping backpack', 7 , 1, 50),
		(15, 'Oakley Mens OO9188 Flak ', 129.95, '2.0 XL sunglasses', 4 , 2, 70),
		(16, 'Bose Soundlink headphones', 199.00, 'wireless around-ear headphones', 10 , 1, 30),
		(17, 'Mongoose Dolomite Fat Tire Bike', 239.99, '18 inch frame ble Mountain Bike', 7 , 2, 6),
		(18, 'PSE Archery Jolt Crossbow', 129.88, '175 lb drawn - red dor scope crossbow', 7 , 1, 60),
		(19, 'Vortex Optics Viper HD Binoculars', 559.00, '2018 roof prism 12x magnification', 7 , 1, 30),
		(20, 'Sauder 420275 N Ave Coffe Table', 50.99, 'L 31.50 inch x W 20.00 inch x H16.54 inch', 2 , 1, 15);


INSERT INTO Seller_Inventory(Seller_Inventory_Id, Seller_ID,Product_id)
VALUES (1, 2, 20),
	   (2, 3, 15),
	   (3, 4, 20),
	   (4, 5, 17),
	   (5, 1, 16),
	   (6, 3, 20),
	   (7, 4, 8),
	   (8, 1, 18),
	   (9, 2, 3),
	   (10, 3, 7),
	   (11, 1, 1);


INSERT INTO Shipping_Type(Shipping_Type_id,Shipping_type, description)
VALUES (1, 'UPS GROUND', '3-5 business day'),
	   (2, 'UPS AIR', '5-10 business day'),
	   (3, 'UPS NEXT DAY','1 business day');

select * from Shipping_Type
INSERT INTO Inventory(inventory_id,date_ship,shipping_type,Seller_inventory_id)
VALUES (1, CAST('2018-05-30' AS DATE), 2 , 5);
INSERT INTO Inventory(inventory_id,date_ship,shipping_type,Seller_inventory_id)
VALUES(10, CAST('2018-01-20' AS DATE), 3 ,  8);
INSERT INTO Inventory(inventory_id,date_ship,shipping_type,Seller_inventory_id)
VALUES(2, CAST('2018-11-15' AS DATE) , 2 , 9);
INSERT INTO Inventory(inventory_id,date_ship,shipping_type,Seller_inventory_id)
VALUES(3, CAST('2018-10-12' AS DATE), 1 , 6);
INSERT INTO Inventory(inventory_id,date_ship,shipping_type,Seller_inventory_id)
VALUES(4, CAST('2018-9-18' AS DATE) , 1 , 10);
INSERT INTO Inventory(inventory_id,date_ship,shipping_type,Seller_inventory_id)
VALUES(5, CAST('2018-9-3' AS DATE) , 3 , 4);
INSERT INTO Inventory(inventory_id,date_ship,shipping_type,Seller_inventory_id)
VALUES(6, CAST('2018-8-7' AS DATE) , 2 , 7);
INSERT INTO Inventory(inventory_id,date_ship,shipping_type,Seller_inventory_id)
VALUES(7, CAST('2018-12-11' AS DATE) , 3 , 3);
INSERT INTO Inventory(inventory_id,date_ship,shipping_type,Seller_inventory_id)
VALUES(8, CAST('2018-10-19' AS DATE) , 2 ,  6);
INSERT INTO Inventory(inventory_id,date_ship,shipping_type,Seller_inventory_id)
VALUES(9, CAST('2018-6-30' AS DATE) , 1 , 9);


INSERT INTO Delivery(delivery_id,status)
VALUES(1, 'recieve order'),
	(2, 'ship package'),
	(3, 'delivered');
INSERT INTO Delivery(delivery_id,status)
VALUES (4, 'cancelled'),
		(5, 'return')

INSERT INTO Payment(payment_id, payment_type)
VALUES(1, 'debit card'),
	(2, 'credit card'),
	(3,'giftcard')


INSERT INTO Amazon_Order(orderId, order_date,quantity,paymentId,product_id,delivery_id,inventory_id, buyer_id)
VALUES (1, CAST('2018-12-30' AS DATE), 1, 2, 3,1,1,3),
(2, CAST('2018-11-01' AS DATE), 1, 1, 20,2,2,4),
(3, CAST('2018-12-09' AS DATE), 10, 2, 10,5,3,6),
(4, CAST('2018-6-14' AS DATE), 1, 2, 15,3,4,8),
(5, CAST('2018-12-1' AS DATE), 1, 2, 19,5,5,7),
(6, CAST('2018-1-15' AS DATE), 1, 2, 16,3,6,5),
(7, CAST('2018-3-21' AS DATE), 1, 2, 14,3,7,4),
(8, CAST('2018-11-19' AS DATE), 1, 2, 7,3,3,7),
(9, CAST('2018-6-3' AS DATE), 1, 2, 12,3,4,2),
(10, CAST('2018-8-31' AS DATE), 1, 2, 4,1,4,1);


INSERT INTO Amazon_Order(orderId, order_date,quantity,paymentId,product_id,delivery_id,inventory_id, buyer_id)
VALUES (11, CAST('2018-12-30' AS DATE), 1, 2, 3,1,1,5);
INSERT INTO Amazon_Order(orderId, order_date,quantity,paymentId,product_id,delivery_id,inventory_id, buyer_id)
VALUES (12, CAST('2018-12-30' AS DATE), 1, 3, 3,1,1,6);
INSERT INTO Amazon_Order(orderId, order_date,quantity,paymentId,product_id,delivery_id,inventory_id, buyer_id)
VALUES (13, CAST('2018-12-30' AS DATE), 1, 1, 3,1,1,7);
INSERT INTO Amazon_Order(orderId, order_date,quantity,paymentId,product_id,delivery_id,inventory_id, buyer_id)
VALUES (14, CAST('2018-12-30' AS DATE), 1, 2, 3,1,1,8);

INSERT INTO Product_Amazon(product_id, product_name, price, description, catagories_id,condition_id)
VALUES (21, 'Echo Dot', 11.72, 'Echo Dot Smart Speaker with Alexa', 10 , 2),
		(22, 'Golvery Bluetooth Receiver', 21.65, 'Portable Wireless Audio Adapter', 10 , 2)


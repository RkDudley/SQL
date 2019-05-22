DROP TABLE Amazon_Account;
DROP TABLE Profile_Amazon;
DROP TABLE Seller;
DROP TABLE Buyer;
DROP TABLE Seller_Inventory;
DROP TABLE Product_Amazon;
DROP TABLE Condition;
DROP TABLE Catagories;
DROP TABLE Inventory;
DROP TABLE Amazon_Order;
DROP TABLE Delivery;
drop table Payment;
drop table Shipment_Buyer;
drop table Shipping_Type;

CREATE TABLE Amazon_Account
(Amazon_account_ID DECIMAL(12) PRIMARY KEY,
 Username VARCHAR(64)NOT NULL,
 password DECIMAL(12)NOT NULL,
 profile_id DECIMAL(12))

CREATE TABLE Profile_Amazon
(profile_id Decimal(12) PRIMARY KEY,
firstname VARCHAR(64) NOT NULL,
lastname VARCHAR(64) NOT NULL,
email VARCHAR(64) NOT NULL,
address VARCHAR(64) NOT NULL);

CREATE TABLE Seller
(seller_id DECIMAL(12) PRIMARY KEY,
distribution_date date NOT NULL,
Amazon_Account_Id DECIMAL(12))

CREATE TABLE Product_Amazon
(product_id DECIMAL(12) PRIMARY KEY,
product_name VARCHAR(64),
price DECIMAL(12),
description VARCHAR(64),
unit DECIMAL(12),
catagories_id DECIMAL(12),
condition_id DECIMAL(12))

CREATE TABLE Catagories
(catagories_id DECIMAL(12) PRIMARY KEY,
catagories_type VARCHAR(64))

CREATE TABLE Condition
(condition_id DECIMAL(12) PRIMARY KEY,
condition_type VARCHAR(64))

CREATE TABLE Seller_Inventory
(Seller_Inventory_Id DECIMAL(12) PRIMARY KEY,
Seller_ID DECIMAL(12),
Product_id DECIMAL(12))

CREATE TABLE Inventory
(inventory_id DECIMAL(12) PRIMARY KEY,
date_ship DATE,
Seller_inventory_id DECIMAL(12),
shipping_type DECIMAL(12));

CREATE TABLE Shipping_Type
(Shipping_Type_id DECIMAL(12) PRIMARY KEY,
Shipping_type VARCHAR(64),
description VARCHAR(64))

CREATE TABLE Buyer
(Buyer_id DECIMAL(12) PRIMARY KEY,
Amazon_id DECIMAL(12))


CREATE TABLE Amazon_Order
(orderId DECIMAL(12) PRIMARY KEY,
 inventory_id DECIMAL(12),
 buyer_id DECIMAL(12),
 order_date DATE,
 quantity DECIMAL(12),
 paymentId DECIMAL(12),
 product_id DECIMAL(12),
 delivery_id DECIMAL(12));


CREATE TABLE Payment
(payment_id DECIMAL(12) PRIMARY KEY,
payment_type VARCHAR(64) NOT NULL);

CREATE TABLE Shipment_Buyer
(shippement_Buyer_id DECIMAL(12) PRIMARY KEY,
date_shipping_cus DATE,
order_id DECIMAL(12),
shipping_Type DECIMAL(12))

CREATE TABLE Delivery
(delivery_id DECIMAL(12) PRIMARY KEY,
status VARCHAR(64));


ALTER TABLE Amazon_Account
ADD CONSTRAINT FK_prolile_id
FOREIGN KEY (profile_id)  REFERENCES Profile_Amazon(profile_id);

ALTER TABLE Seller
ADD CONSTRAINT FK_amazon_id
FOREIGN KEY (Amazon_account_Id) REFERENCES Amazon_Account(Amazon_account_ID);

ALTER TABLE Buyer
ADD CONSTRAINT FK_buyer_amazon_id
FOREIGN KEY (Amazon_id)  REFERENCES Amazon_Account(Amazon_account_ID);


ALTER TABLE Seller_Inventory
ADD CONSTRAINT FK_seller_id
FOREIGN KEY (Seller_ID)  REFERENCES Seller(Seller_id);


ALTER TABLE Seller_Inventory
ADD CONSTRAINT FK_product_id
FOREIGN KEY (Product_id)  REFERENCES Product_Amazon(product_id);


ALTER TABLE Product_Amazon
ADD CONSTRAINT FK_condition
FOREIGN KEY (condition_id)  REFERENCES Condition(condition_id);


ALTER TABLE Product_Amazon
ADD CONSTRAINT FK_catagories_id
FOREIGN KEY (catagories_id)  REFERENCES Catagories(catagories_id);


ALTER TABLE Amazon_Order
ADD CONSTRAINT fk_inventory_id
FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id)

ALTER TABLE Amazon_Order
ADD CONSTRAINT FK_order_product_id_amazon
FOREIGN KEY (product_id) REFERENCES Product_Amazon(product_id)

ALTER TABLE Amazon_Order
ADD CONSTRAINT FK_order_payment_ID
FOREIGN KEY (paymentId) REFERENCES Payment(payment_id)


ALTER TABLE Amazon_Order
ADD CONSTRAINT FK_order_DELIVERY_ID
FOREIGN KEY (delivery_id) REFERENCES Delivery(delivery_id)

ALTER TABLE Amazon_Order
ADD CONSTRAINT FK_order_buyer
FOREIGN KEY (buyer_id) REFERENCES Buyer(Buyer_id)

ALTER TABLE Inventory
ADD CONSTRAINT FK_Shipping_type
FOREIGN KEY (shipping_Type) REFERENCES Shipping_Type(Shipping_Type_id)

ALTER TABLE Inventory
ADD CONSTRAINT FK_Seller_inventory
FOREIGN KEY (Seller_inventory_id) REFERENCES Seller_inventory(Seller_Inventory_Id)

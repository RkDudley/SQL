/* 1. Create a query which returns information about products including product name, product
category, it’s price, description and availability of existing products in the “Computers” or
“Electronics” categories that cost $30 or less. This query should show joins of multiple tables.
Develop and execute a single query that provides this information.
*/
select product_name AS 'Product Name',catagories_type AS 'Catagory type',FORMAT(price, '$0.00') AS PRICE,
description AS 'Product Description',unit AS 'Availability of products'
from product_Amazon P join catagories c on c.catagories_id=P.catagories_id
where (catagories_type LIKE '%Computer%' or catagories_type LIKE '%Electornic%')
and price <=30;



/*2. A seller requests a listing of all of its products that have an inventory of 11 or less sold in the
past 2 months. Develop and execute a single query that provides this information.
*/

 select P.product_id AS 'Product ID',product_name AS 'Product Name',count(I.Inventory_id) AS 'No of Inventorys'
from product_Amazon P join Seller_Inventory S on S.product_id=P.product_id
join Inventory I on I.Seller_Inventory_Id=S.Seller_Inventory_Id
join amazon_order A on A.inventory_id=I.inventory_id
where (month(order_date)+2= month(GETDATE())) or (month(order_date)+1= month(GETDATE()))
and year(order_date)=year(getdate())
group by P.product_id,product_name
having count(I.Inventory_id) <=11;
			
			
							   
/*3. The marketing department at Amazon wants to reach out to customers who buy popular
products. The department requests the names and addresses of all customers who bought any
product that was purchased by at least three different people. Develop and execute a single
query that provides this information.
*/


SELECT P.firstname, P.lastname, P.email,P.address, Amazon_Order.product_id, Buyer.Buyer_id
FROM Buyer
JOIN Amazon_Account ON Amazon_Account.Amazon_account_ID = Buyer.Amazon_id
JOIN Profile_Amazon P ON P.profile_id = Amazon_Account.profile_id
JOIN Amazon_Order ON Buyer.Buyer_id= Amazon_Order.buyer_id
WHERE Amazon_Order.product_id = (SELECT A.product_id
				   FROM Amazon_Order A
				   GROUP BY A.product_id
				   HAVING  COUNT(A.product_id) >= 3) 

													
/*4. The marketing department at Amazon would like to know the top single product from each of
the three categories (your choice of categories). Develop and execute a single query that
provides this information.*/											
select temp1.catagories_id,product_Name 
	from (select c.catagories_id, P.product_id,count(P.product_id) AS Noofproducts
	from product_Amazon P 
	join catagories c on c.catagories_id=P.catagories_id
	join seller_Inventory S on S.product_id=P.product_id
	group by c.catagories_id,P.product_id) temp1 
		join (select catagories_id, max(Noofproducts) AS Maxproducts 
			from ( select c.catagories_id, P.product_id,count(P.product_id) AS Noofproducts
			from product_Amazon P join catagories c on c.catagories_id=P.catagories_id
					join seller_Inventory S on S.product_id=P.product_id
					group by c.catagories_id,P.product_id) t1
					group by catagories_id) temp2 on temp1.catagories_id=temp2.catagories_id
					join product_amazon Pa on Pa.product_id=temp1.product_id 
					where Noofproducts=Maxproducts and temp1.catagories_id IN (1,2,4);

/*5. Create a stored procedure which allows seller to add a new product. Invoke the stored
procedure twice to add these products, keeping in mind that products have at a minimum a
name, description, quantity, price, and category. Execute a query that shows the inserted
information from executing the stored procedure.
*/

CREATE PROCEDURE ADD_PRODUCT
	@product_id_arg DECIMAL,	
	@name VARCHAR(32),
	@description VARCHAR(64),
	@price DECIMAL,
	@quantity DECIMAL,
	@catagories DECIMAL,
	@condition_id DECIMAL
AS
	BEGIN
	INSERT INTO Product_Amazon(product_id,product_name,description,price,unit,catagories_id,condition_id)
	VALUES (@product_id_arg,@name,@description,@price,@quantity,@catagories,@condition_id)
END;

EXECUTE ADD_PRODUCT 23,'Nightmare Bath Bomb','dark blends of earthy sandalwood', 10,10,5,1

EXECUTE ADD_PRODUCT 24,'Dill Pickel Balm','avialble in numerous flavors', 3,10,5,2

SELECT * FROM Product_Amazon


/*6. Create a stored procedure which allows seller to change details of an existing product. Invoke
the stored procedure twice to modify two different products, keeping in mind that products
have at a minimum a name, description, quantity, price, and category. Execute a query that
shows the inserted information from executing the stored procedure.*/

CREATE PROCEDURE CHANGE_PRODUCT
	@product_id_arg DECIMAL,	
	@name VARCHAR(32),
	@description VARCHAR(64),
	@price DECIMAL,
	@quantity DECIMAL,
	@catagories DECIMAL,
	@condition_id DECIMAL
AS
BEGIN
	UPDATE Product_Amazon
	SET product_name = @name,
	   description = @description,
	   price = @price,
	   unit = @quantity,
	   catagories_id = @catagories,
	   condition_id = @condition_id
	WHERE product_id = @product_id_arg
END;

SELECT * FROM Product_Amazon

EXECUTE CHANGE_PRODUCT 3, 'dragon Ball Super: Part5', 'DVD Disc 6',  16.30, 4, 9, 1

EXECUTE CHANGE_PRODUCT 5, 'Coca-Cola Soda Soft Drink', 'Softdrink 6 pack', 4.59 , 16, 8, 2


/*7. Here you define you own query. Define a request for information for this aspect that is
implemented with aggregation and or a subquery – for an extra challenge make it a correlated
sub-query! Then develop and execute a single query that provides this information.*/

/*List the min price product of each catagories*/
SELECT P1.catagories_id, P1.product_name, P1.description ,FORMAT(P1.price, '$.00')
FROM  Product_Amazon p1 
WHERE NOT EXISTS (
           SELECT * 
           FROM  Product_Amazon p2 
           WHERE p1.price < p2.price AND p1.catagories_id = p2.catagories_id)
ORDER BY P1.catagories_id

/*Part C*/

/*c. a screenshot illustrating the creation of the index, along with an explanation as to why the index is
beneficial (be specific).*/

/*Question No 3*/
SELECT P.firstname, P.lastname, P.email,P.address, Amazon_Order.product_id, Buyer.Buyer_id
FROM Buyer
JOIN Amazon_Account ON Amazon_Account.Amazon_account_ID = Buyer.Amazon_id
JOIN Profile_Amazon P ON P.profile_id = Amazon_Account.profile_id
JOIN Amazon_Order ON Buyer.Buyer_id= Amazon_Order.buyer_id
WHERE Amazon_Order.product_id = (SELECT A.product_id
				   FROM Amazon_Order A
				   GROUP BY A.product_id
				   HAVING  COUNT(A.product_id) >= 3) 

/*In this given query, the column product_id in the table Amazon_Order should be create an index
because an index should be created on column that are most frequently used in WHERE clause and also
these query are most used in Order By clause as well*/

/*The command to create it*/
CREATE INDEX OX_product ON Amazon_Order(product_id)

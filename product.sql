SELECT * FROM demo.product;
-- List all products name that contains momo.
SELECT * FROM demo.product WHERE category='momo';
-- List all products whose category is international liquors or domestic liquors using IN operator.
SELECT* FROM demo.product WHERE category in('International Liquors','Domestic Liquors');
-- Update all Not defined category to null.
UPDATE demo.product set category='Null' WHERE category ='Not Defined';
-- Delete all products whose price is less than 10.
DELETE FROM demo.product WHERE list_price<10;

-- List all products whose price is greater than 500 and whose category is Domestic Liquors.
SELECT * FROM demo.product WHERE list_price>500  AND category='Domestic Liquors';
-- list id,name, and price of the product whose price is between 200 and 500 or whose category is wine.
SELECT id,name,list_price FROM demo.product WHERE list_price BETWEEN 200 AND 500 AND category='wine';




 

-- 1. Top three sold products 
select productname from classicmodels.products where productcode in (
select productcode from orderdetails order by quantityOrdered ) limit   3 ;

-- 2. Top three customers who spend most
select customerName from classicmodels.customers where customerNumber in (
select customerNumber from classicmodels.orders where orderNumber in( 
select orderNumber from classicmodels.orderdetails group by orderNumber having max( quantityOrdered*priceEach))) limit 3;

-- 3.least sold product 
select productname from classicmodels.products where productcode in(
select productcode from orderdetails order by quantityOrdered )  limit 1;

-- 4. least spending customer
select customerName from classicmodels.customers where customerNumber in (
select customerNumber from classicmodels.orders where orderNumber in( 
select orderNumber from classicmodels.orderdetails group by orderNumber having min( quantityOrdered*priceEach)))  limit 1;



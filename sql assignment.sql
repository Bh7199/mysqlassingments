-- 1. Find the record of all customers whose order is cancelled.
select * from classicmodels.customers where customerNumber in
(select customerNumber from classicmodels.orders where status= 'Cancelled');

-- 2.	Find the first customer details who paid for order
select* from classicmodels.customers where customerNumber=(
select customerNumber from classicmodels.payments order by paymentDate limit 1);

-- 3.	Find the last customer detail who paid for order.
select * from classicmodels.customers where customerNumber=(
select customerNumber from classicmodels.payments Order by paymentDate desc limit  1); 


-- 4.	List all the product which has been sold more than 1000 pieces.
select productName from classicmodels.products where productCode in(
select productCode from classicmodels.products where quantityInStock >=1000);



-- 5.	Find all Employees who works in UK.
select * from classicmodels.employees where officeCode in(
select officeCode from classicmodels.offices where country ='UK');


  -- 6.	In which country does George Vanauf works in.
  select country from classicmodels.offices where officecode in(
  select officecode from classicmodels.employees where firstName='George' and lastname ='Vanauf');
  
  
-- 7.	Find Email address of all employee who works in USA.
select email from classicmodels.employees where officeCode in (
select officeCode from classicmodels.offices where country ='USA');

-- 8.	Find customer name, phone and address of all the customer who never ordered.
select customerName,phone,addressLine1 from classicmodels.customers where customerNumber in (
select customerNumber from classicmodels.orders where status like "In Pro%");


-- 9.	Find total No of orders which is product of Ducati.
select count(*) orderNumber from classicmodels.orderdetails where productCode in
(select productCode from classicmodels.products where productName like "% Ducati%");

-- 10.	List all order of Ford parts. 
select orderNumber from classicmodels.orderdetails where productCode in(
 select productCode from classicmodels.products where productName like "%Ford%");


-- 11.	Find first customer who placed order.
select customerName from classicmodels.customers where customerNumber = (
select customerNumber from classicmodels.orders order by orderDate asc limit 1);


-- 12.	Find last customer who placed order.
select customerName from classicmodels.customers where customerNumber = (
select customerNumber from classicmodels.orders order by orderDate  desc limit 1);



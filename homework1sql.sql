-- Write an SQL query to print customerNumber, customerName, orderNumber, status from customers and orders table including all data of customers table. (Use Left or Right Join)
SELECT customerNumber,customerName,orderNumber,status FROM classicmodels.customers INNER JOIN classicmodels.orders using (customerNumber);

-- Write an SQL query to print customerNumber, customerName, orderNumber, status from customers and orders table who never ordered.
SELECT customerNumber,customerName,orderNumber,status FROM classicmodels.customers
 INNER JOIN classicmodels.orders USING (customerNumber) WHERE status='Cancelled';

select customerNumber from classicmodels.customers where customerNumber not in (select customerNumber from classicmodels.orders); 

-- USING VIEW METHOD .
CREATE VIEW customers_orders As 
SELECT customerNumber,customerName,orderNumber,status FROM classicmodels.customers
 INNER JOIN classicmodels.orders using(customerNumber);
 SELECT * FROM customers_orders;
 SELECT customerNumber,customerName  from customers_orders ;
-- Write an SQL query to print lastName, firstName, customerName, checkNumber, amount from employees, customers and payments where amount id greater than 80,000.
CREATE VIEW  customer_payments As
SELECT lastName,firstName,customerName,checkNumber,amount FROM classicmodels.employees INNER JOIN (customers,payments) where amount>80000;
SELECT * FROM customer_payments;

-- Create Tables Rental, Movie_Rental and Movie and insert data. print all rentalID, movie_name, Rental_cost from tables.

create table movierental.Rental( RentalID int primary key, MemberID int, Rental_Date date,
Rental_Expiry date, Total_Cost int); 
select* from movierental.Rental;
insert into movierental.Rental(RentalId, MemberId,Rental_Date,Rental_Expiry,Total_Cost)
values(12,54,'2022-11-24','2022-11-27', 45);

create table movierental.Movie( MovieID int primary key, MovieName varchar(10), Distributer varchar(20),
Director varchar(10), Genre varchar(10),Rating int, Year_Of_release date,Rental_Cost int,
Rental_Duration int); 
select * from movierental.Movie;
insert into movierental.Movie(MovieID,MovieName,Distributer,Director,Genre,Rating,Year_Of_release,
Rental_Cost,Rental_Duration) values(15,'Powerful','USA films','Robert','Mystery' ,5,'2022-11-25',50,
2 );


create view Movie_Rental as
select MovieID,RentalId from movierental.movie inner join(
movierental.rental);
select * from Movie_Rental;


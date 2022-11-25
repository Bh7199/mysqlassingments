-- Write an SQL query to fetch “firstName” from employees table using the alias name as <WORKER_NAME>.
select firstName as worker_name from classicmodels.employees;

-- Find Total Number of Employees.
select  employeeNumber, count(*) from classicmodels.employees;

-- Write an SQL query to fetch “FIRST_NAME” from employees table in upper case. Use UPPER() function
select upper(firstname) from classicmodels.employees;

-- Write an SQL query to fetch the employeeNumber and FullName of all the employees working under the Manager with id – ‘1102’.
select employeeNumber, concate(firstName + lastName) as fullname from classicmodels.employees where officeCode=4 and  reportsTo =1102;  

-- Write an SQL query to fetch unique values of productVendor from product table.
select distinct productVendor from classicmodels.products;

-- Write an SQL query to print all payments details from the payments table order by customerNumber Ascending and amount Descending.
select* from  classicmodels.payments order by customerNumber ASC ,amount desc;

-- Write an SQL query to print details for employees excluding last name as “Hernandez” and “king” from employees table.
select * from classiccmodels.employees where lastName ='Hernandez' and lastName ='king';

-- Write an SQL query to print details of the employees whose FIRST NAME ends with ‘e’.
select * from classicmodels.employees where firstName like '%e';

-- Write an SQL query to print details of the employees whose FIRST NAME ends with ‘h’ and contains five alphabets.
select * from classicmodels.customers where contactFirstName like '_____h';

-- Write an SQL query to print details of the employees who doesn't report to anyone.
select * from classicmodels.employees where reportsTo is null;

-- Write an SQL query to add column dob to employees table where default date is '1900-01-01'.
alter table classicmodels.employee add column dob date default '1900-01-01';

-- Write an SQL query to update dob of employee to 1990-01-13 whose id is 1056
update classicmodels.employee set dob = '1990-01-13' where employeeNumber=1056;

-- Write an SQL query to calculate age of employee with id 1056. use current_date() and year() function
select 

--  Write an SQL query to fetch all the Name of people which are present in either of the tables – ‘Employee’ and ‘customers.

SELECT firstName, lastName From classicmodels.employees UNION (
 SELECT contactFirstName, contactLastName FROM classicmodels.customers);

-- Write an SQL query to fetch all the cheque no with amount greater than 1000 and smaller than 2000.
select checkNumber from classicmodels.payments where amount >1000 and amount< 2000;

-- Write an SQL query to print productCode, productName, textDescription from productlines and products table.
select distinct productCode,productName,textDescription from classicmodels.products 
INNER JOIN classicmodels.productlines USING (productLine);


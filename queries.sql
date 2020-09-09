-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

Select p.productname, c.CategoryName
from product as p 
join category as c on p.categoryid = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.id, s.companyname
from [order] as O 
join shipper as s 
on o.shipvia = s.id and o.orderdate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select p.productname, o.quantity
from productdetails_v as p 
join orderdetails as o 
on o.productid = p.id and o.orderid = 10251
order by p.productname;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select o.id as orderid, c.companyname as customerscompany, employee.lastname as employeelastname
from [order] as o 
JOIN "Customer" AS c
on c.id = o.customerid and o.employeeid = employee.id;
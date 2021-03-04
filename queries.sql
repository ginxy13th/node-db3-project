-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

Select p.productname, c.CategoryName
from products as p 
join categories as c on p.categoryid = c.categoryid;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.orderid, s.shippername as companyname
from [orders] as O
join shippers as s 
on o.shipperid = s.shipperid 
where o.orderdate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select p.productname, o.quantity
from products as p 
join orderdetails as o 
on o.productid = p.productid 
where o.orderid = 10251
order by p.productname;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select o.orderid as orderid, c.customername as customerscompany, e.lastname as employeelastname
from [orders] as o 
JOIN customers AS c
join employees as e
on c.customerid = o.customerid and o.employeeid = e.employeeid;
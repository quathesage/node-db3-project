-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT productname, categoryname FROM Products AS p
	JOIN categories AS c ON c.categoryid = p.categoryid

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT
    Id, CompanyName
FROM order as o
JOIN supplier as s
    ON o.ShipVia = s.id
WHERE OrderDate < "2012-08-09";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT
    ProductName, Quantity
FROM OrderDetail as o
JOIN product as p
    ON o.productid = p.id
WHERE OrderId IS 10251
ORDER BY ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT
    id as OrderId, CompanyName, LastName as EmployeeLastName
FROM [Order] as o
JOIN customer as c
    ON o.customerid = c.id
JOIN employee as e
    ON o.employeeid = e.id;
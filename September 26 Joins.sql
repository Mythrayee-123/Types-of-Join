--Order by 

select * from  Products order by UnitPrice desc

--Group by 
--Mexico   --5
--UK --4
select Country,count(*) as 'count' from Customers
group by Country
order by 2 desc


--Joins :
--When we need data from more than one table we use joins 
--In-order join 2 tables, there should be atleast one matching column in both tables
--We have diff types of joins in SQL 

	--1)Inner Join 
	--2)Outer Join 
			--a)Left Outer Join 
			--b)Right Outer Join 
			--c)Full Outer Join 
	--3)Cross Join 
	--4)Self Join 


--3 steps to join tables

--1)Select the columns from both the tables , which you need in your output 
--2)Specify the join type between the tables 
--3)Specify the condition


select * from Customers
select * from Orders

--inner join --830 rows

select CompanyName,ContactName,Country,c.CustomerID,o.OrderID,OrderDate,ShippedDate,Discount,ProductName,CategoryName,Description   --step-1,
from Customers c   join Orders o  --step-2
on c.CustomerID = o.CustomerID   --step-3
join [Order Details] od on od.OrderID=o.OrderID
join Products p on p.ProductID=od.ProductID
join Categories cg on cg.CategoryID=p.CategoryID
order by 2 desc 


--Stored Procedures :It is a pre-compiled sql statements
--ex: Google maps 

--left outer join   --834
select CompanyName,ContactName,Country,c.CustomerID,OrderID,OrderDate,ShippedDate   --step-1
from Customers c  left outer join Orders o  --step-2
on c.CustomerID = o.CustomerID   --step-3
order by 6 desc 

--Right outer join   --830
select CompanyName,ContactName,Country,c.CustomerID,OrderID,OrderDate,ShippedDate   --step-1
from Customers c  right outer join Orders o  --step-2
on c.CustomerID = o.CustomerID   --step-3
order by 2 desc 

--FULL outer join   --Right +Left Joins --834
select CompanyName,ContactName,Country,c.CustomerID,OrderID,OrderDate,ShippedDate   --step-1
from Customers c  full outer join Orders o  --step-2
on c.CustomerID = o.CustomerID   --step-3
order by 2 desc 

---cross join 

select * from Customers,Orders






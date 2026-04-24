USE qacs_ch02;

-- A
SELECT * FROM CUSTOMER;
SELECT * FROM ITEM;
SELECT * FROM SALE;
SELECT * FROM SALE_ITEM;

-- B
SELECT lastName,FirstName,Phone FROM CUSTOMER;

-- C
SELECT lastName,FirstName,Phone FROM CUSTOMER WHERE FirstName = "John";

-- D
SELECT c.lastName,c.FirstName,c.Phone FROM CUSTOMER c JOIN SALE s ON c.CustomerID = s.CustomerID WHERE s.Total > 100.00;

-- E
SELECT lastName,FirstName,Phone FROM CUSTOMER WHERE FirstName LIKE "D%";

-- F
SELECT lastName,FirstName,Phone FROM CUSTOMER WHERE LastName LIKE "%ne%"; 

-- G

SELECT lastName,FirstName,Phone FROM CUSTOMER WHERE Phone LIKE "_________56%";

-- H
SELECT MAX(Total) AS max_total , MIN(total) AS min_total FROM SALE;

-- I
SELECT  AVG(Total) AS avg_total FROM SALE;

-- J
SELECT COUNT(*) AS total_customer From CUSTOMER;

-- k
SELECT lastName,FirstName From CUSTOMER group by lastName,FirstName;

-- L
SELECT LastName, FirstName, count(*) AS TotalCustomers FROM CUSTOMER GROUP BY LastName, FirstName;

-- M
SELECT LastName, FirstName, Phone FROM CUSTOMER WHERE CustomerID IN ( SELECT DISTINCT CustomerID FROM SALE WHERE Total > 100.00 ) ORDER BY LastName ASC, FirstName DESC;

-- N
SELECT c.LastName, c.FirstName, c.Phone FROM CUSTOMER c, SALE s WHERE c.CustomerID = s.CustomerID AND s.Total > 100.00 ORDER BY c.LastName ASC, c.FirstName DESC;

-- O
SELECT c.LastName, c.FirstName, c.Phone FROM CUSTOMER c JOIN  SALE s ON  c.CustomerID = s.CustomerID  WHERE s.Total > 100.00 ORDER BY c.LastName ASC, c.FirstName DESC;

-- P
SELECT LastName, FirstName, Phone FROM CUSTOMER WHERE CustomerID IN ( SELECT CustomerID FROM SALE s JOIN SALE_ITEM si ON s.SaleID = si.SaleID JOIN ITEM i ON si.ItemID = i.ItemID WHERE i.ItemDescription = "Desk Lamp") ORDER BY LastName ASC, FirstName DESC;

-- Q
SELECT c.LastName, c.FirstName, c.Phone FROM CUSTOMER c, SALE s, SALE_ITEM si, ITEM i WHERE c.CustomerID = s.CustomerID AND s.SaleID = si.SaleID AND si.ItemID = i.ItemID AND i.ItemDescription = "Desk Lamp" ORDER BY c.LastName ASC, c.FirstName DESC;

-- R
SELECT c.LastName, c.FirstName, c.Phone FROM CUSTOMER c JOIN SALE s ON c.CustomerID = s.CustomerID JOIN SALE_ITEM si ON s.SaleID = si.SaleID JOIN ITEM i ON si.ItemID = i.ItemID WHERE i.ItemDescription = "Desk Lamp" ORDER BY c.LastName ASC, c.FirstName DESC;

 -- S
 SELECT c.LastName, c.FirstName, c.Phone FROM Customers c JOIN Sales s ON c.CustomerID = s.CustomerID JOIN SALE_ITEM si ON s.SaleID = si.SaleID WHERE si.ItemID IN ( SELECT ItemID FROM Items WHERE ItemDescription = 'Desk Lamp') ORDER BY c.LastName ASC, c.FirstName DESC;
 
 -- T
 SELECT  c.LastName, c.FirstName, c.Phone FROM CUSTOMER c JOIN SALE s ON c.CustomerID = s.CustomerID WHERE s.SaleID IN ( SELECT si.SaleID FROM SALE_ITEM si JOIN Items i ON si.ItemID = i.ItemID WHERE i.ItemDescription = 'Desk Lamp') ORDER BY c.LastName ASC, c.FirstName DESC;
 
 -- U
 
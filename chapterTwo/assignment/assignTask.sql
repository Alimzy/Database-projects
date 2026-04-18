-- 2.40
SELECT I.SKU, I. SKU_Description, I.WarehouseID, W.WarehouseCity, W.WarehouseState FROM INVENTORY I JOIN WAREHOUSE W ON I.WarehouseID = W.WarehouseID WHERE W.WarehouseCity = 'Atlanta' OR W.WarehouseCity = 'Bangor' OR W.WarehouseCity = 'Chicago';

-- 2.41
SELECT I.SKU, I. SKU_Description, I.WarehouseID, W.WarehouseCity, W.WarehouseState FROM INVENTORY I JOIN WAREHOUSE W ON I.WarehouseID = W.WarehouseID WHERE W.WarehouseCity IN ('Atlanta', 'Bangor', 'Chicago');

-- 2.42
SELECT I.SKU, I.SKU_Description, I.WarehouseID, W.WarehouseCity, W.WarehouseState FROM INVENTORY I JOIN WAREHOUSE W ON I.WarehouseID = W.WarehouseID WHERE W.WarehouseCity <> 'Atlanta' AND W.WarehouseCity <> 'Bangor' AND W.WarehouseCity <> 'Chicago';

-- 2.43
SELECT I.SKU, I.SKU_Description, I.WarehouseID, W.WarehouseCity, W.WarehouseState FROM INVENTORY I JOIN WAREHOUSE W ON I.WarehouseID = W.WarehouseID WHERE W.WarehouseCity NOT IN ('Atlanta', 'Bangor', 'Chicago');

-- 2.44
SELECT CONCAT(SKU_Description, ' is located in ', WarehouseCity) AS ItemLocation FROM INVENTORY I JOIN WAREHOUSE W ON I.WarehouseID = W.WarehouseID;

-- 2.45
SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY WHERE WarehouseID IN ( SELECT WarehouseID FROM WAREHOUSE WHERE Manager = 'Lucille Smith');

-- 2.46
SELECT I.SKU, I.SKU_Description, I.WarehouseID FROM INVENTORY I, WAREHOUSE W WHERE I.WarehouseID = W.WarehouseID AND W.Manager = 'Lucille Smith';

-- 2.47
SELECT I.SKU, I.SKU_Description, I.WarehouseID FROM INVENTORY I JOIN WAREHOUSE W ON I.WarehouseID = W.WarehouseID WHERE W.Manager = 'Lucille Smith';

-- 2.48 
SELECT WarehouseID, AVG(QuantityOnHand) AS AverageQuantityOnHand FROM INVENTORY WHERE WarehouseID IN ( SELECT WarehouseID FROM WAREHOUSE WHERE Manager = 'Lucille Smith') GROUP BY WarehouseID;

-- 2.49
SELECT I.WarehouseID, AVG(I.QuantityOnHand) AS AverageQuantityOnHand FROM INVENTORY I, WAREHOUSE W WHERE I.WarehouseID = W.WarehouseID AND W.Manager = 'Lucille Smith' GROUP BY I.WarehouseID;

-- 2.50
SELECT I.WarehouseID, AVG(I.QuantityOnHand) AS AverageQuantityOnHand FROM INVENTORY I JOIN WAREHOUSE W ON I.WarehouseID = W.WarehouseID WHERE W.Manager = 'Lucille Smith' GROUP BY I.WarehouseID;

-- 2.51
SELECT  W.WarehouseID, W.WarehouseCity, W.WarehouseState, W.Manager, I.SKU, I.SKU_Description, I.QuantityOnHand FROM INVENTORY I JOIN WAREHOUSE W ON I.WarehouseID = W.WarehouseID WHERE W.Manager = 'Lucille Smith';

-- 2.52
SELECT  WarehouseID, SUM(QuantityOnOrder)  AS TotalItemsOnOrder, SUM(QuantityOnHand)   AS TotalItemsOnHand FROM INVENTORY GROUP BY WarehouseID, QuantityOnOrder;

-- 2.53
-- You cannot use a subquery in 2.52 because the question only involves one table (INVENTORY). Subqueries are used when you need to pull data from another table to filter or compare against. 

-- 2.54
-- A subquery is a query nested inside another query. It runs first, produces a result, and the outer query uses that result to filter while A JOIN combines columns from two or more tables into one result set.


-- 2.55
SELECT W.WarehouseID, W.WarehouseCity, W.WarehouseState, W.Manager, I.SKU, I.SKU_Description, I.QuantityOnHand, I.QuantityOnOrder FROM WAREHOUSE W LEFT JOIN INVENTORY I ON W.WarehouseID = I.WarehouseID;
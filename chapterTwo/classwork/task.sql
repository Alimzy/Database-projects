-- 2.17 
SELECT SKU, SKU_Description  FROM INVENTORY;

-- 2.18
SELECT SKU_Description , SKU FROM INVENTORY;

-- 2.19
SELECT  WarehouseId FROM  INVENTORY;

-- 2.20
SELECT distinct WarehouseId from INVENTORY;

-- 2.21
SELECT WarehouseID,SKU, SKU_Description,QuantityOnHand,QuantityOnOrder from INVENTORY;

-- 2.22
SELECT  * FROM INVENTORY;

-- 2.23
SELECT QuantityOnHand From INVENTORY Where QuantityOnHand > 0;

-- 2.24
SELECT SKU, SKU_Description  FROM INVENTORY Where QuantityOnHand > 0;

-- 2.25
SELECT SKU, SKU_Description ,WarehouseID FROM INVENTORY Where QuantityOnHand > 0 order by WarehouseID DESC;

-- 2.26
SELECT SKU, SKU_Description ,WarehouseID FROM INVENTORY Where QuantityOnHand > 0 order by WarehouseID DESC,  SKU ASC;

-- 2.27
SELECT SKU, SKU_Description ,WarehouseID FROM INVENTORY Where QuantityOnHand = 0 &&  QuantityOnOrder > 0 order by WarehouseID DESC,  SKU ASC;

-- 2.28 
SELECT SKU, SKU_Description ,WarehouseID FROM INVENTORY Where QuantityOnHand = 0 &&  QuantityOnOrder = 0 order by WarehouseID DESC,  SKU ASC;

-- 2.29
SELECT SKU, SKU_Description ,WarehouseID, QuantityOnHand FROM INVENTORY Where QuantityOnHand > 1 &&  QuantityOnHand < 10;

-- 2.30
  SELECT SKU, SKU_Description ,WarehouseID, QuantityOnHand FROM INVENTORY Where QuantityOnHand BETWEEN 2 and 9;
  
  -- 2.31
  SELECT distinct SKU, SKU_Description FROM INVENTORY where SKU_Description  like  "Half-Dome%";
  
  
  -- 2.32
  SELECT distinct SKU, SKU_Description FROM INVENTORY where SKU_Description  like  "%Climb%";

-- 2.33
  SELECT distinct SKU, SKU_Description FROM INVENTORY where SKU_Description  like  "__d%";
  
  -- 2.34
  
 SELECT COUNT(QuantityOnHand)   AS Total_Records, SUM(QuantityOnHand)  AS Total_Quantity, AVG(QuantityOnHand) AS Average_Quantity, MIN(QuantityOnHand)    AS Minimum_Quantity,MAX(QuantityOnHand)   AS Maximum_Quantity FROM INVENTORY;
  
  -- 2.35
  -- Count give us the total number of rows, that is the number of records while sum is the total value of the column
  
-- 2.36
SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHand From INVENTORY GROUP BY WarehouseID ORDER BY TotalItemsOnHand DESC;

-- 2.37
SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHandLT3 FROM INVENTORY WHERE QuantityOnHand < 3 GROUP BY WarehouseID ORDER BY TotalItemsOnHandLT3 DESC;

-- 2.38
SELECT WarehouseID, SUM(QuantityOnHand) FROM INVENTORY WHERE QuantityOnHand < 3 GROUP BY WarehouseID;

-- 2.38
SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHandLT3 FROM your_table_name WHERE QuantityOnHand < 3 GROUP BY WarehouseID HAVING COUNT(SKU) < 2 ORDER BY TotalItemsOnHandLT3 DESC;

-- 2.39
-- "WHERE", Because there is strict order my sql follows and "WHERE" comes first before having
  
  
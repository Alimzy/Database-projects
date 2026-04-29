USE lagos_riders;

-- 1
SELECT Name, Rating FROM Drivers ORDER BY Rating DESC LIMIT 5;

-- 2
SELECT r.Name, COUNT(ri.RideID) AS TotalRides FROM Riders r JOIN Rides ri ON r.RiderID = ri.RiderID GROUP BY r.RiderID, r.Name HAVING COUNT(ri.RideID) > 5;

-- 3
SELECT SUM(Fare) AS TotalRevenue FROM Rides ;

-- 4
SELECT City , COUNT(RiderID) AS RideCount FROM Riders GROUP BY City ORDER BY RideCount DESC LIMIT 1;
 
 -- 5
 SELECT 
 


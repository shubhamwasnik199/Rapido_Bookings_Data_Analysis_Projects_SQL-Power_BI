
--- Rapido - ride_bookings  -- SQL Project --




-- Create table --

CREATE TABLE rapido (
    Date DATE,
    Time TIME,
    Booking_ID VARCHAR(355) PRIMARY KEY,
    Booking_Status VARCHAR(50),
    Customer_ID VARCHAR(355),
    Vehicle_Type VARCHAR(50),
    Pickup_Location VARCHAR(355),
    Drop_Location VARCHAR(355),
    V_TAT INT,
    C_TAT INT,
    Canceled_Rides_by_Customer VARCHAR(50),
    Canceled_Rides_by_Driver VARCHAR(50),
    Incomplete_Rides VARCHAR(50),
    Incomplete_Rides_Reason TEXT,
    Booking_Value DECIMAL(10, 2),
    Payment_Method VARCHAR(50),
    Ride_Distance DECIMAL(10, 2),
    Driver_Ratings FLOAT,
    Customer_Rating FLOAT,
    Vehicle_Images TEXT
);


SHOW server_encoding;



-------- EDA ---------

SELECT COUNT(*) FROM rapido;

SELECT COUNT (DISTINCT Vehicle_Type) FROM RAPIDO;

SELECT DISTINCT Vehicle_Type FROM RAPIDO;

SELECT DISTINCT Pickup_Location FROM RAPIDO;

SELECT COUNT (DISTINCT Drop_Location) FROM RAPIDO;


SELECT COUNT (Incomplete_Rides) FROM RAPIDO;


SELECT COUNT (Canceled_Rides_by_Driver) FROM RAPIDO;


SELECT MAX (Booking_Value) FROM RAPIDO;

SELECT MIN (Booking_Value) FROM RAPIDO;


SELECT MIN (Ride_Distance) FROM RAPIDO;

SELECT * FROM RAPIDO
WHERE Ride_Distance = 0;



/*

-- ---------------------------------
-- Data Analysis  - Phase 
-- ---------------------------------

1. Retrieve all successful bookings: 
2. Find the average ride distance for each vehicle type: 
3. Get the total number of cancelled rides by customers: 
4. List the top 5 customers who booked the highest number of rides: 
5. Get the number of rides cancelled by drivers due to personal and car-related issues: 
6. Find the maximum and minimum driver ratings for Prime Sedan bookings: 
7. Retrieve all rides where payment was made using UPI: 
8. Find the average customer rating per vehicle type: 
9. Calculate the total booking value of rides completed successfully: 
10. List all incomplete rides along with the reason:

*/




-- 1. Retrieve all successful bookings: 

SELECT Booking_Status FROM RAPIDO;


CREATE VIEW Booking_Status AS
SELECT * FROM RAPIDO
WHERE Booking_Status = 'Success'; 

-- 2. Find the average ride distance for each vehicle type: 

CREATE VIEW ride_distance_for_each_vehicle AS
SELECT Vehicle_Type, AVG(Ride_Distance)
AS avg_distance FROM RAPIDO
GROUP BY Vehicle_Type;


-- 3. Get the total number of cancelled rides by customers: 

-- 1 

SELECT COUNT(Canceled_Rides_by_Customer)FROM RAPIDO;

 -- 2

SELECT DISTINCT Booking_Status FROM RAPIDO;

CREATE VIEW cancelled_rides_by_customers AS
SELECT COUNT (*) FROM RAPIDO
WHERE Booking_Status = 'Canceled by Customer';



-- 4. List the top 5 customers who booked the highest number of rides: 

CREATE VIEW top_5_customers AS
SELECT Customer_ID, COUNT (Booking_ID) AS Total_Rides
FROM RAPIDO
	GROUP BY Customer_ID
	ORDER BY Total_Rides DESC LIMIT 5;



-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues: 

SELECT DISTINCT Canceled_Rides_by_Driver FROM RAPIDO;


CREATE VIEW Canceled_Rides_by_Driver_P_&_C_Issue AS
SELECT COUNT (*) FROM RAPIDO
	WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';


-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings: 

CREATE VIEW MAX_MIN_Driver_Rating AS
SELECT 
	MAX (Driver_Ratings) AS Maximum_Rating,
	MIN (Driver_Ratings) AS Minimum_Rating
FROM RAPIDO
	WHERE Vehicle_Type = 'Prime Sedan';



-- 7. Retrieve all rides where payment was made using UPI: 

CREATE VIEW Payment_Method_UPI AS
SELECT * FROM RAPIDO
WHERE Payment_Method = 'UPI';


-- 8. Find the average customer rating per vehicle type: 

CREATE VIEW AVG_Customer_Rating_vehicle AS
SELECT 
	Vehicle_Type, 
	AVG (Customer_Rating) AS AVG_Customer_Rating
FROM RAPIDO
GROUP BY Vehicle_Type;


-- 9. Calculate the total booking value of rides completed successfully: 

CREATE VIEW Total_Booking_Value_success AS
SELECT SUM(Booking_Value) AS Total_Booking_Value
FROM RAPIDO
WHERE Booking_Status = 'Success'


-- 10. List all incomplete rides along with the reason:

	
SELECT Booking_ID, Incomplete_Rides_Reason
FROM RAPIDO
WHERE Incomplete_Rides = 'Yes';






----- The End -----





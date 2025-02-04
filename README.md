# Rapido Bookings Data Analysis Project- SQL Power BI 🚖

![image alt](https://github.com/shubhamwasnik199/SQL_Project-Monday_Coffee_Expantion-Data_Analysis/blob/b9c6cbfc8d456041b85820c0a0da3063198db750/1.png)


## **Project Overview**
The **Rapido Data Analysis Project** is a database management system designed to simulate the operations of an online taxi service. The main goal of this project is to provide a thorough database schema and SQL queries to manage driver allocation, ride booking, ride cancelation, booking status and payment tracking, among other company operations. Managing relational data, enforcing relationships, and running complex queries to glean valuable business insights are all demonstrated in this project.


`
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

`


---

## **Project Goals 🎯**
1. **Database Schema Design**: Creating a well-structured relational database.
2. **Data Management**: Ensuring consistency through SQL constraints.
3. **Business Operations Handling**: Using SQL to support real-world ride-sharing functionality.
4. **Data Analysis & Insights**: Extracting meaningful insights such as top-performing drivers, busiest locations, and peak demand hours.

---

## **Tools & Technologies 🛠️**
- **SQL**: Core language for database management and querying.
- **Database Management System (DBMS)**: PostgreSQL.
- **Entity-Relationship Diagram (ERD)**: Used for schema design and visualization.
- **visualization**: Power BI (for dashboarding).


---

## **Data Analysis - SQL **

 #1. Retrieve all successful bookings:
 Create View Successful_Bookings As
 SELECT * FROMbookings
 WHEREBooking_Status = 'Success';
 
 #2. Find the average ride distance for each vehicle type:
 Create View ride_distance_for_each_vehicle As
 SELECT Vehicle_Type, AVG(Ride_Distance)
 as avg_distance FROM bookings
 GROUPBYVehicle_Type;
 
 #3. Get the total number of cancelled rides by customers:
 Create View cancelled_rides_by_customers As
 SELECT COUNT(*) FROM bookings
 WHEREBooking_Status = 'cancelled by Customer';
 
 #4. List the top 5 customers who booked the highest number of rides:
 Create View Top_5_Customers As
 SELECT Customer_ID, COUNT(Booking_ID) as total_rides
 FROMbookings
 GROUPBYCustomer_ID
 ORDERBYtotal_rides DESC LIMIT 5;
 
 #5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 Create View Rides_cancelled_by_Drivers_P_C_Issues As
 SELECT COUNT(*) FROM bookings
 WHEREcancelled_Rides_by_Driver = 'Personal & Car related issue';
 
 #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 Create View Max_Min_Driver_Rating As
 SELECT MAX(Driver_Ratings) as max_rating,
 MIN(Driver_Ratings) as min_rating
 FROMbookings WHERE Vehicle_Type = 'Prime Sedan';

 #7. Retrieve all rides where payment was made using UPI:
 Create View UPI_Payment As
 SELECT * FROMbookings
 WHEREPayment_Method = 'UPI';
 
 #8. Find the average customer rating per vehicle type:
 Create View AVG_Cust_Rating As
 SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
 FROMbookings
 GROUPBYVehicle_Type;
 
 #9. Calculate the total booking value of rides completed successfully:
 Create View total_successful_ride_value As
 SELECT SUM(Booking_Value) as total_successful_ride_value
 FROMbookings
 WHEREBooking_Status = 'Success';
 
 #10. List all incomplete rides along with the reason:
 Create View Incomplete_Rides_Reason As
 SELECT Booking_ID, Incomplete_Rides_Reason
 FROMbookings
 WHEREIncomplete_Rides = 'Yes';
 

---

## **visualization  (Power BI) Dashboard **

**Overall**
![image alt](https://github.com/shubhamwasnik199/SQL_Project-Monday_Coffee_Expantion-Data_Analysis/blob/b9c6cbfc8d456041b85820c0a0da3063198db750/1.png)

**Vehicle Type**
![image alt](https://github.com/shubhamwasnik199/SQL_Project-Monday_Coffee_Expantion-Data_Analysis/blob/b9c6cbfc8d456041b85820c0a0da3063198db750/1.png)

**Revenue**
![image alt](https://github.com/shubhamwasnik199/SQL_Project-Monday_Coffee_Expantion-Data_Analysis/blob/b9c6cbfc8d456041b85820c0a0da3063198db750/1.png)

**Cancelation**
![image alt](https://github.com/shubhamwasnik199/SQL_Project-Monday_Coffee_Expantion-Data_Analysis/blob/b9c6cbfc8d456041b85820c0a0da3063198db750/1.png)

**Ratings**
![image alt](https://github.com/shubhamwasnik199/SQL_Project-Monday_Coffee_Expantion-Data_Analysis/blob/b9c6cbfc8d456041b85820c0a0da3063198db750/1.png)







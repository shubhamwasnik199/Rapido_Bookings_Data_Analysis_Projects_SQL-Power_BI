# Rapido Ride Bookings Data Analysis Project- SQL Power BI 🚖

![image alt](https://github.com/shubhamwasnik199/Rapido_Bookings_Data_Analysis_Projects_SQL-Power_BI/blob/76a5ce468506dd19ced1da558740b9ffb91b4187/Rapido%20logo.webp)


## **Project Overview**
The **Rapido Data Analysis Project** is a database management system designed to simulate the operations of an online taxi service. The main goal of this project is to provide a thorough database schema and SQL queries to manage driver allocation, ride booking, ride cancelation, booking status and payment tracking, among other company operations. Managing relational data, enforcing relationships, and running complex queries to glean valuable business insights are all demonstrated in this project.


```sql
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

```


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

 1. Retrieve all successful bookings:
    
 2. Find the average ride distance for each vehicle type:   
 
 3. Get the total number of cancelled rides by customers:
 
 4. List the top 5 customers who booked the highest number of rides:

 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 
 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

 7. Retrieve all rides where payment was made using UPI:
 
 8. Find the average customer rating per vehicle type:
 ```
 Create View AVG_Cust_Rating As
 SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
 FROMbookings
 GROUPBYVehicle_Type;
 ```
 9. Calculate the total booking value of rides completed successfully:
 
 10. List all incomplete rides along with the reason:
 ```
 Create View Incomplete_Rides_Reason As
 SELECT Booking_ID, Incomplete_Rides_Reason
 FROMbookings
 WHEREIncomplete_Rides = 'Yes';
 ```

---

## **visualization  (Power BI) Dashboard **

**Overall**
![image alt](https://github.com/shubhamwasnik199/Rapido_Bookings_Data_Analysis_Projects_SQL-Power_BI/blob/2cb01153924b26664f69132fd640109d2a9149d0/Overall.jpg)

**Vehicle Type**
![image alt](https://github.com/shubhamwasnik199/Rapido_Bookings_Data_Analysis_Projects_SQL-Power_BI/blob/c80388d06380652473dd4962d680411f93e24418/Vehicle%20Type.jpg)

**Revenue**
![image alt](https://github.com/shubhamwasnik199/Rapido_Bookings_Data_Analysis_Projects_SQL-Power_BI/blob/c80388d06380652473dd4962d680411f93e24418/Revenue.%20.jpg)

**Cancelation**
![image alt](https://github.com/shubhamwasnik199/Rapido_Bookings_Data_Analysis_Projects_SQL-Power_BI/blob/c80388d06380652473dd4962d680411f93e24418/Cancelations.jpg
)

**Ratings**
![image alt](https://github.com/shubhamwasnik199/Rapido_Bookings_Data_Analysis_Projects_SQL-Power_BI/blob/c80388d06380652473dd4962d680411f93e24418/Ratings.jpg)







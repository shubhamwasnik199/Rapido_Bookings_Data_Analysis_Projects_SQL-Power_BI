# Rapido Bookings Data Analysis Project- SQL Power BI 🚖




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

## **visualization  (Power BI) Dashboard **









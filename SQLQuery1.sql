create database Ola;
use Ola;

-- Succesful Booking 
create view Successful_Bookings as
Select * from Bookings where Booking_status = 'success';

SELECT * FROM Successful_Bookings;

-- Ride Distance
Create view Ride_distance_for_each_Vehicle as
SELECT Vehicle_Type,AVG(Ride_Distance)as Avg_distance FROM Bookings GROUP BY Vehicle_type;

SELECT * FROM Ride_distance_for_each_Vehicle;

-- rides canceled by customers

CREATE VIEW canceled_rides_by_customers AS
SELECT COUNT(*) AS TotalCanceledRides
FROM Bookings
WHERE Booking_status = 'Canceled by Customer';

SELECT * FROM canceled_rides_by_customers;

-- top 5 customers
CREATE VIEW Top_5_customers as
SELECT TOP 5 
       Customer_ID,
       COUNT(Booking_ID) AS Total_Rides
FROM Bookings
GROUP BY Customer_ID
ORDER BY Total_Rides DESC;

SELECT * FROM Top_5_customers;

-- Canceled by Driver
Create View Canceled_by_Driver as
select count(*)as Canceled from Bookings
where Canceled_Rides_by_Driver ='Personal & Car related issues';

select * from Canceled_by_Driver;

-- Prime Sedan Ratings
Create View Prime_Sedan_Ratings as
select max(Driver_Ratings)as max_ratings,
min(Driver_Ratings)as min_ratings
From Bookings where Vehicle_Type = 'Prime Sedan';

Select * from Prime_Sedan_Ratings;

-- Payment From UPI
Create View Payment_By_UPI as
Select * From Bookings
where Payment_Method = 'UPI';

SELECT * FROM Payment_By_UPI;

-- Avg Customer Rating Per Vehicle
Create view Avg_Customer_Rating_Per_Vehicle as
SELECT Vehicle_Type,AVG(Customer_Rating)as Avg_rating FROM Bookings GROUP BY Vehicle_type;

Select * From Avg_Customer_Rating_Per_Vehicle;

-- Total Successful Rides
create view Total_Successful_Rides as
Select SUM(Booking_Value) as Total_succesful_rides
From Bookings
where Booking_Status ='Success';

Select * From Total_Successful_Rides;

-- all incomplete rides along with reasons
Create View Incomplete_Rides_With_Reasons as
SELECT Booking_ID, Incomplete_Rides_Reason
FROM Bookings
WHERE Incomplete_Rides = 1;

Select * From Incomplete_Rides_With_Reasons;
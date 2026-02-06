create database Ola;
Use Ola;

#1. Retrive all successfl bookings:
Create View Successful_Bookings As
SELECT * FROM bookings
WHERE Booking_Status = 'Success';
Select * From Successful_Bookings;

#2. Find the average ride distance for each vehicle type:
Create View ride_distance_for_each_vehicle As
SELECT Vehicle_Type, AVG(Ride_Distance)
as avg_distance FROM bookings
GROUP BY Vehicle_Type;
Select * from ride_distance_for_each_vehicle;

#3. Get the total number of canceled rides by customer:
Create View canceled_rides_by_customer As
SELECT COUNT(*) FROM bookings
WHERE Booking_Status = 'Canceled by Customer';

Select * FROM canceled_rides_by_customer;

#4. List The Top 5 customer who booked the highest number of rides;
Create View Top_5_Customers As
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;

Select * from Top_5_Customers;

#5. get the number of rides canceled by drivers due to personal and car-related issues:
Create View Rides_Canceled_by_Drivers_P_C_Issues As
SELECT COUNT(*) FROM bookings 
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

#6. find the maximum and minimum drivers ratings for prime sedan bookings:
Create View Max_Min_Driver_Rating As 
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM bookings WHERE Vehicle_Type = 'prime Sedan';

#7. Retrival all rides payment was made using UPI:
Create View UPI_Payment As 
SELECT * FROM bookings 
WHERE Payment_Method = 'UPI';

#8. find the average customer rating per vehicle type:
Create View AVG_Cust_Rating As
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM bookings 
GROUP BY Vehicle_Type;

#9 calculate the total bookings values of rides completed successfully:
Create View total_successful_ride_value As
SELECT SUM(Booking_Value) as total_successful_ride_value
FROM bookings
WHERE Booking_Status = 'Success';


#10. list all incomplet rides along with the reason:
Create View Incomplete_Rides_Reason As
SELECT Booking_ID, Incomplete_Rides_Reason 
FROM bookings 
WHERE Incomplete_Rides ='Yes';



#1. Retrive all successfl bookings:
Select * From Successful_Bookings;

#2. Find the average ride distance for each vehicle type:
Select * from ride_distance_for_each_vehicle;

#3. Get the total number of canceled rides by customer:
Select * FROM canceled_rides_by_customer;

#4. List The Top 5 customer who booked the highest number of rides;
Select * from Top_5_Customers;

#5. get the number of rides canceled by drivers due to personal and car-related issues:
Select * FROM Rides_Canceled_by_Drivers_P_C_Issues;

#6. find the maximum and minimum drivers ratings for prime sedan bookings:
Select * FROM Max_Min_Driver_Rating;  

#7. Retrival all rides payment was made using UPI:
Select * FROM UPI_Payment;

#8. find the average customer rating per vehicle type:
Select * FROM AVG_Cust_Rating;

#9 calculate the total bookings values of rides completed successfully:
Select * FROM total_successful_ride_value;

#10. list all incomplet rides along with the reason:
Select * FROM Incomplete_Rides_Reason;






  



  

--Number of trips by riders(Nulls for riders table)
select count(T.trip_id) as number_of_trips,R.rider_id 
from trips T,riders R
where R.rider_id =T.rider_id 
group by R.rider_id

--Number of trips by drivers
select count(T.trip_id) as number_of_trips,D.driver_id 
from trips T,Drivers D
where D.driver_id =T.driver_id 
group by D.driver_id

 --all nulls in status(cancelled/in progress) 
select *
from trips 
where completed_at is  null 
order by trip_id

--comments issue
select * from reviews 



--1. List the first 10 trips ordered by request time.
select top(10) trip_id,requested_at
from trips
order by requested_at

--2. Show all trips with a surge multiplier greater than 2.0.
select* 
from trips
where surge_multiplier>2 

--3. What are the distinct payment methods used?
select distinct method 
from payments

--4. Find all riders who joined in 2023.
select rider_id
from riders
where year(created_at)=2023

--5. Show the 5 most expensive trips by total fare.
select top(5) * 
from trips
order by total_fare desc

--6. How many trips were paid by cash?
select count(method) as Total_paid_by_cash
from payments
where status='success' and method='cash'

--7. How many drivers joined after January 1, 2023?
select count(driver_id) AS Number_of_drivers
from drivers
where join_date>'2023-1-1'

--8. Find all payments that failed.
select * 
from payments
where status='failed'

--9. Show all cancellations made by riders
select *
from cancellations
where cancelled_by='rider'

--10. List the 10 most recent reviews with their rating and comment.(issue)
select top(10) review_id,rating,comment,reviewed_at
from reviews 
order by reviewed_at desc

--11. What is the average total fare per payment method?
select payment_method,AVG(total_fare) as Avg_totalfare
from trips
group by payment_method

--12. Find the top 5 drivers by the total number of completed trips.
select top(5) driver_id,COUNT(status)  as number_of_completed_trips
from trips
where status='completed'
group by driver_id
order by count(*) desc 

--13. What is the total revenue (sum of total fare) per month?
select FORMAT(completed_at, 'yyyy-MM') AS Year_Month,sum(total_fare) AS Revenue
FROM trips T 
where status='completed'
group by  FORMAT(completed_at, 'yyyy-MM')
order by Year_Month

--14. How many trips does each rider have on average?
select count(trip_id)/count(distinct rider_id) 
AS AVG_rides
from trips

--15. Which pickup zone generates the most revenue?
 SELECT  TOP(1 )SUM(T.total_fare) AS Most_revenue,L.zone_name
 from locations L, trips T
 WHERE L.location_Id=T.pickup_location_id
 GROUP BY L.zone_name
 ORDER BY SUM(T.total_fare) DESC

 --16. List riders who have spent more than $500 in total fares.
 select  rider_id 
 from trips
 group by rider_id
 having sum(total_fare)>500

 --17. Which drivers cancelled the most trips?
 select Top(1)T.driver_id,count(T.trip_id)
 from trips T,cancellations C
 where C.trip_id=T.trip_id AND C.cancelled_by='driver'
 group by T.driver_id
 order by count(T.trip_id) desc

 --18. Which vehicle make is most common among active drivers?
 select top(1)vehicle_make,count(is_active) as number_of_active_drivers 
 from drivers 
 where is_active=1 
 group by vehicle_make
 order by count(*) desc

 --19. What is the total refunded amount per month?
 select FORMAT(paid_at, 'yyyy-MM')AS Month,sum(amount) As total_amount
 from payments
 where status='refunded'
group by FORMAT(paid_at, 'yyyy-MM')
order by FORMAT(paid_at, 'yyyy-MM')

--20. For each rider, show their first and most recent trip date.(if scheduled rides provided)
select rider_id,min(started_at) AS First_trip,max(started_at) AS Last_trip
from trips
WHERE status !='cancelled'
group by rider_id

--21. For each driver, show their total earnings and number of trips in a single query.
 select D.driver_id,sum(T.total_fare) AS Number_of_earning,COUNT(distinct T.trip_id) AS Number_of_trips
 from trips T RIGHT JOIN drivers D
 ON D.driver_id=T.driver_id
 group by D.driver_id
 ORDER BY COUNT(distinct T.trip_id)

 --22. Which city has the most registered users?
 Select Top(1) city ,count(date_joined) AS Number_of_users
 from users
 group by city
 order by count(*) desc
 
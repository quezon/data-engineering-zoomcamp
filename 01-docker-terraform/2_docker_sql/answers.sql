-- Question 3 method 1
SELECT count(*) FROM green_taxi_trips
WHERE lpep_pickup_datetime BETWEEN timestamp '2019-09-18 00:00:00' AND timestamp '2019-09-18 23:59:59' 
AND lpep_dropoff_datetime BETWEEN timestamp '2019-09-18 00:00:00' AND timestamp '2019-09-18 23:59:59';
-- Question 3 method 2
SELECT count(*) FROM green_taxi_trips
WHERE lpep_pickup_datetime >= timestamp '2019-09-18 00:00:00'
AND lpep_dropoff_datetime <= timestamp '2019-09-18 23:59:59';


-- Question 4
SELECT lpep_dropoff_datetime - lpep_pickup_datetime td, * FROM green_taxi_trips
WHERE lpep_pickup_datetime >= timestamp '2019-09-18 00:00:00'
AND lpep_dropoff_datetime <= timestamp '2019-09-18 23:59:59' OR
lpep_pickup_datetime >= timestamp '2019-09-16 00:00:00'
AND lpep_dropoff_datetime <= timestamp '2019-09-16 23:59:59' OR
lpep_pickup_datetime >= timestamp '2019-09-26 00:00:00'
AND lpep_dropoff_datetime <= timestamp '2019-09-26 23:59:59' OR
lpep_pickup_datetime >= timestamp '2019-09-21 00:00:00'
AND lpep_dropoff_datetime <= timestamp '2019-09-21 23:59:59'
order by td desc limit 1;

-- Question 5
select b."Borough", count(*) from public.green_taxi_trips a
inner join zones b on (a."PULocationID" = b."LocationID")
where b."Borough" <> 'Unknown'
group by b."Borough"
having count(*) > 50000;


-- Question 6
select b."Zone" as "From", c."Zone" as "To", a.tip_amount from public.green_taxi_trips a
inner join zones b on (a."PULocationID" = b."LocationID")
inner join zones c on (a."DOLocationID" = c."LocationID")
where b."Zone" = 'Astoria'
order by a.tip_amount desc
limit 1;
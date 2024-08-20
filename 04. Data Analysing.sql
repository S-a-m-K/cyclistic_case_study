-- bike types used by riders


SELECT
 member_casual,
 rideable_type,
 COUNT(*) AS count_trips
FROM
`cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`
GROUP BY
 member_casual,
 rideable_type
ORDER BY
 member_casual,
 rideable_type;


-- number of trips per hour


SELECT
 TIME(EXTRACT(HOUR FROM started_at), 0, 0) AS hour_of_day,
 member_casual,
 COUNT(ride_id) AS total_trips,
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_cleaned_01`
GROUP BY
 hour_of_day,
 member_casual
ORDER BY
 member_casual;




-- number of trips per week


SELECT
 day_of_week,
 member_casual,
 COUNT(ride_id) AS total_trips
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_cleaned_01`
GROUP BY
 day_of_week,
 member_casual
ORDER BY
 member_casual;


-- number of trips per month


SELECT
 month,
 member_casual,
 COUNT(ride_id) AS total_trips
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_cleaned_01`
GROUP BY
 month,
 member_casual
ORDER BY
 member_casual;


-- average ride length per hour


SELECT
 TIME(EXTRACT(HOUR FROM started_at), 0, 0) AS hour_of_day,
 member_casual,
 ROUND(avg(ride_length),2) AS avg_ride_length
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_cleaned_01`
GROUP BY
 hour_of_day,
 member_casual;




-- average ride length per day of the week


SELECT
 day_of_week,
 member_casual,
 ROUND(AVG(ride_length),2) AS avg_ride_length
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_cleaned_01`
GROUP BY
 day_of_week,
 member_casual;


-- average ride length per month


SELECT
 month,
 member_casual,
 ROUND(AVG(ride_length),2) AS avg_ride_length
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_cleaned_01`
GROUP BY
 month,
 member_casual;


-- starting station location




SELECT
start_station_name,
ROUND(AVG(start_lat),2) AS avg_start_lat,
ROUND(AVG(start_lng),2) AS avg_start_lng,
SUM(CASE WHEN member_casual = 'member' THEN 1 ELSE 0 END) AS member,
SUM(CASE WHEN member_casual = 'casual' THEN 1 ELSE 0 END) AS casual,
COUNT(ride_id) AS total_trips
FROM
`cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_cleaned_01`
GROUP BY
start_station_name;




-- end station location


SELECT
 end_station_name,
 ROUND(AVG(end_lat),2) AS avg_end_lat,
 ROUND(AVG(end_lng),2) AS avg_end_lat,
 SUM(CASE WHEN member_casual = "member" THEN 1 ELSE 0 END) AS member,
 SUM(CASE WHEN member_casual = "casual" THEN 1 ELSE 0 END) AS casual,
 COUNT(ride_id) AS total_trips
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_cleaned_01`
GROUP BY
 end_station_name;

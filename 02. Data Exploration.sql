-- checking datatypes of all columns

SELECT 
  column_name,
  data_type
FROM 
  `cyclistic-case-study-00.cyclistic_trip_data.INFORMATION_SCHEMA.COLUMNS`
WHERE 
  table_name = 'cyclistic_combined_trip_data_01'
ORDER BY 
  ordinal_position;


-- count numbers of rows which are 1'247'820

SELECT COUNT(*)
FROM `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`;


-- checking for numbers of null values in all columns


SELECT
 COUNTIF(ride_id IS NULL) AS null_count_ride_id,
 COUNTIF(rideable_type IS NULL) AS null_count_rideable_type,
 COUNTIF(started_at IS NULL) AS null_count_started_at,
 COUNTIF(ended_at IS NULL) AS null_count_endet_at,
 COUNTIF(start_station_name IS NULL) AS null_count_start_station_name,
 COUNTIF(start_station_id IS NULL) AS null_count_start_station_id,
 COUNTIF(end_station_name IS NULL) AS null_count_end_station_name,
 COUNTIF(end_station_id IS NULL) AS null_count_end_station_id,
 COUNTIF(start_lat IS NULL) AS null_count_start_lat,
 COUNTIF(start_lng IS NULL) AS null_count_start_lng,
 COUNTIF(end_lat IS NULL) AS null_count_end_lat,
 COUNTIF(end_lng IS NULL) AS null_count_end_lng,
 COUNTIF(member_casual IS NULL) AS null_count_member_casual,
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`
;


-- check for duplicate rows


SELECT
 count(ride_id) - count(distinct ride_id) AS duplicate_rows
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`;


-- check if ride_id has a length of 16


SELECT
 *
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`
WHERE
 LENGTH(ride_id) != 16;


-- check if timestamp values ​​all have the same length


SELECT
 started_at,
 ended_at,
 CAST(started_at AS STRING) AS started_at_string,
 CAST(ended_at AS STRING) AS ended_at_string,
 LENGTH(CAST(started_at AS STRING)) AS started_at_length,
 LENGTH(CAST(ended_at AS STRING)) AS ended_at_length
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`
WHERE
 LENGTH(CAST(started_at AS STRING)) != 22 OR
 LENGTH(CAST(ended_at AS STRING)) != 22;


-- check for whitespace


SELECT
 rideable_type,
 start_station_name,
 start_station_id,
 end_station_name,
 end_station_id,
 CAST(start_lat AS STRING) AS start_lat_string,
 CAST(start_lng AS STRING) AS start_lng_string,
 CAST(end_lat AS STRING) AS end_lat_string,
 CAST(end_lng AS STRING) AS end_lng_string,
 member_casual
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`
WHERE
 REGEXP_CONTAINS(rideable_type, r'^\s|\s$') OR
 REGEXP_CONTAINS(start_station_name, r'^\s|\s$') OR
 REGEXP_CONTAINS(start_station_id, r'^\s|\s$') OR
 REGEXP_CONTAINS(end_station_name, r'^\s|\s$') OR
 REGEXP_CONTAINS(end_station_id, r'^\s|\s$') OR
 REGEXP_CONTAINS(CAST(start_lat AS STRING), r'^\s|\s$') OR
 REGEXP_CONTAINS(CAST(start_lng AS STRING), r'^\s|\s$') OR
 REGEXP_CONTAINS(CAST(end_lat AS STRING), r'^\s|\s$') OR
 REGEXP_CONTAINS(CAST(end_lng AS STRING), r'^\s|\s$') OR
 REGEXP_CONTAINS(member_casual, r'^\s|\s$');


-- number of trips per bike


SELECT
 DISTINCT rideable_type, COUNT(rideable_type) AS num_of_trips
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`
GROUP BY
 rideable_type;


-- tot trips that last longer than a day


SELECT
 COUNT(*) AS longer_than_a_day
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`
WHERE (
 EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
 EXTRACT(MINUTE FROM (ended_at - started_at)) +
 EXTRACT(SECOND FROM (ended_at - started_at)) / 60) >= 1440;   
-- longer than a day - total rows = 848


-- tot trips that last shorter than a minute


SELECT
 COUNT(*) AS less_than_a_minute
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`
WHERE (
 EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
 EXTRACT(MINUTE FROM (ended_at - started_at)) +
 EXTRACT(SECOND FROM (ended_at - started_at)) / 60) <= 1;      
-- less than a minute - total rows = 41368


-- check how many rows have alle location details


SELECT
 COUNT(ride_id)
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`
 WHERE
 start_station_name IS NOT NULL AND
 start_station_id IS NOT NULL AND
 end_station_name IS NOT NULL AND
 end_station_id IS NOT NULL AND
 start_lat IS NOT NULL AND
 start_lng IS NOT NULL AND
 end_lat IS NOT NULL AND
 end_lng IS NOT NULL;  


-- which members use which station and how many times


SELECT
 start_station_name,
 member_casual,
 COUNT(member_casual) AS count_member
FROM
 `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`
GROUP BY
 start_station_name,
 member_casual
ORDER BY
 start_station_name


-- member and casual riders


SELECT DISTINCT member_casual, COUNT(member_casual) AS no_of_trips
FROM `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`
GROUP BY member_casual;

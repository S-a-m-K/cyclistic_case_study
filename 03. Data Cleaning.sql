-- create a new clean table

CREATE TABLE
  `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_cleaned_01`  AS (
  SELECT
    a.ride_id,
    rideable_type,
    started_at,
    ended_at,
    ROUND(ride_length, 2) AS ride_length,
    CASE EXTRACT(DAYOFWEEK FROM started_at)
      WHEN 1 THEN 'SUN'
      WHEN 2 THEN 'MON'
      WHEN 3 THEN 'TUES'
      WHEN 4 THEN 'WED'
      WHEN 5 THEN 'THURS'
      WHEN 6 THEN 'FRI'
      WHEN 7 THEN 'SAT'   
    END AS day_of_week,
    CASE EXTRACT(MONTH FROM started_at)
      WHEN 1 THEN 'JAN'
      WHEN 2 THEN 'FEB'
      WHEN 3 THEN 'MAR'
      WHEN 4 THEN 'APR'
      WHEN 5 THEN 'MAY'
      WHEN 6 THEN 'JUN'
      WHEN 7 THEN 'JUL'
      WHEN 8 THEN 'AUG'
      WHEN 9 THEN 'SEP'
      WHEN 10 THEN 'OCT'
      WHEN 11 THEN 'NOV'
      WHEN 12 THEN 'DEC'
    END AS month,
    TRIM(start_station_name) AS start_station_name, 
    TRIM(end_station_name) AS end_station_name,
    ROUND((start_lat),2) AS start_lat, 
    ROUND((start_lng),2) AS start_lng, 
    ROUND((end_lat),2) AS end_lat, 
    ROUND((end_lng),2) AS end_lng, 
    member_casual
  FROM `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01` a
  JOIN (
    SELECT ride_id, 
           ROUND((
             EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
             EXTRACT(MINUTE FROM (ended_at - started_at)) +
             EXTRACT(SECOND FROM (ended_at - started_at)) / 60
           ), 2) AS ride_length
    FROM `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`
  ) b
  ON a.ride_id = b.ride_id
  WHERE
    TRIM(start_station_name) IS NOT NULL AND
    TRIM(end_station_name) IS NOT NULL AND
    start_lat IS NOT NULL AND
    end_lat IS NOT NULL AND
    start_lng IS NOT NULL AND
    end_lng IS NOT NULL AND
    ride_length > 1 AND ride_length < 1440
);

-- check how many rows were deleted

SELECT
  (SELECT COUNT(ride_id) 
  FROM `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`
  ) AS total_rows_original,
  (SELECT COUNT(ride_id) 
  FROM `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_cleaned_01`
  ) AS total_rows_original,
  (SELECT COUNT(ride_id)
  FROM `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`
  ) -
  (SELECT COUNT(ride_id)
  FROM `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_cleaned_01`
  ) AS difference;

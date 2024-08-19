/* Combines 5 data tables into a single table from December 2022 to and including April 2023 */

CREATE TABLE `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01` AS 
SELECT *
FROM `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_trip_data_jan_23`
UNION ALL
SELECT *
FROM `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_trip_data_feb_23`
UNION ALL
SELECT *
FROM `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_trip_data_mar_23`
UNION ALL
SELECT *
FROM `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_trip_data_apr_23`
UNION ALL
SELECT *
FROM `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_trip_data_may_23`
;

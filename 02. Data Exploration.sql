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


-- count numbers of rows

SELECT COUNT(*)
FROM `cyclistic-case-study-00.cyclistic_trip_data.cyclistic_combined_trip_data_01`;



CREATE OR REPLACE TABLE `atomic-airship-472910-k1.class_dw_lab.trips_partitioned`
PARTITION BY DATE(pickup_datetime) AS
SELECT
 pickup_datetime,
 passenger_count,
 trip_distance,
 fare_amount,
 payment_type,
 vendor_id
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2017`
WHERE EXTRACT(YEAR FROM pickup_datetime) = 2017;
CREATE OR REPLACE TABLE `atomic-airship-472910-k1.class_dw_lab.trips_clustered`
PARTITION BY DATE(pickup_datetime)
CLUSTER BY payment_type, vendor_id AS
SELECT
 pickup_datetime,
 passenger_count,
 trip_distance,
 fare_amount,
 payment_type,
 vendor_id
FROM `atomic-airship-472910-k1.class_dw_lab.trips_partitioned`;
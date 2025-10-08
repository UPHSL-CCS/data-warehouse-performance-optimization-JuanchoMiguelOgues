SELECT
 DATE(pickup_datetime) AS trip_date,
 COUNT(*) AS total_trips
FROM `atomic-airship-472910-k1.class_dw_lab.trips_clustered`
WHERE pickup_datetime BETWEEN '2017-01-01' AND '2017-01-10'
GROUP BY trip_date
ORDER BY trip_date;
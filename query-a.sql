SELECT
 DATE(pickup_datetime) AS trip_date,
 COUNT(*) AS total_trips
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2017`
WHERE pickup_datetime BETWEEN '2017-01-01' AND '2017-01-10'
GROUP BY trip_date
ORDER BY trip_date;
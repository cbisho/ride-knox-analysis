SELECT
    start_station_id,
    COUNT(trip_id) AS trip_count_per_station
FROM trips
GROUP BY start_station_id
ORDER BY trip_count_per_station DESC
LIMIT 5;

SELECT COUNT(trip_count_per_station) FROM (
SELECT
    start_station_id,
COUNT(trip_id) AS trip_count_per_station
FROM trips
GROUP BY start_station_id
ORDER BY trip_count_per_station DESC
) AS subquery;

SELECT
    strftime('%H', start_time) AS hour,
    COUNT(trip_id) AS trip_count_per_hour
FROM trips
GROUP BY hour
ORDER BY trip_count_per_hour DESC
LIMIT 6;

SELECT
    LOWER(rider_type) AS rider_type,
    LOWER(bike_type) AS bike_type,
    COUNT(trip_id) AS trip_count_per_rider_and_bike
FROM trips
GROUP BY LOWER(rider_type), LOWER(bike_type)
ORDER BY trip_count_per_rider_and_bike DESC;

SELECT
    rider_type,
    LOWER(bike_type) AS bike_type,
    COUNT(trip_id) AS trip_count_per_rider_and_bike
FROM trips
GROUP BY rider_type, LOWER(bike_type)
ORDER BY trip_count_per_rider_and_bike DESC;


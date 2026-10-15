SELECT 
    start_station_id,
    COUNT(*) AS trip_count
FROM trips
GROUP BY start_station_id
HAVING COUNT(*) >= 15000
ORDER BY trip_count DESC;

SELECT
    start_station_id,
    COUNT(*) AS trip_count
FROM trips
WHERE bike_type = 'electric'
    AND start_time >= '2025-10-01'
GROUP BY start_station_id
HAVING COUNT(*) >= 300
ORDER BY trip_count DESC
LIMIT 5;

SELECT 
    strftime('%m', start_time) AS month,
    COUNT(*) AS trip_count
FROM trips
GROUP BY month
HAVING COUNT(*) >= 25000
ORDER BY trip_count DESC;

SELECT 
    strftime('%m', start_time) AS month,
    COUNT(*) AS trip_count
FROM trips
GROUP BY month
WHERE COUNT(*) >= 25000
ORDER BY trip_count DESC;
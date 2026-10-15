SELECT 
    LOWER(rider_type) AS rider_type,
    SUM(CASE WHEN bike_type = 'electric' THEN 1 ELSE 0 END) AS electric_bike,
    SUM(CASE WHEN bike_type = 'classic' THEN 1 ELSE 0 END) AS classic_bike
FROM trips
GROUP BY LOWER(rider_type)
ORDER BY electric_bike DESC;

SELECT
    bike_type,
    rider_type,
    COUNT(*) AS trip_count
FROM trips
GROUP BY bike_type;
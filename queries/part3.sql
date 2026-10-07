SELECT DISTINCT neighborhood
FROM stations;

SELECT bike_type, start_station_id, start_time
FROM trips
WHERE bike_type = 'electric'
AND start_time >= '2025-12-01'

SELECT COUNT(DISTINCT start_station_id)
FROM trips
WHERE bike_type = 'electric'
AND start_time >= '2025-12-01';

SELECT DISTINCT start_station_id
FROM trips
WHERE bike_type = 'electric'
AND start_time >= '2025-12-01'
ORDER BY start_time DESC LIMIT 3;


SELECT 
    t.end_station_id,
    COUNT(*) AS empty_trips
FROM trips t
LEFT JOIN stations AS s
    ON t.end_station_id = s.station_id
WHERE s.station_id IS NULL
GROUP BY t.end_station_id
ORDER BY empty_trips DESC;


SELECT
    COUNT(*) AS rows,
    COUNT(DISTINCT station_name) AS unique_stations
FROM stations;

SELECT 
    s.station_name, 
    COUNT(*) AS trips
FROM trips t
JOIN stations s ON t.end_station_id = s.station_id
GROUP BY s.station_id, s.station_name
HAVING COUNT(*) > (
	SELECT COUNT(*) * 1.0 / COUNT(DISTINCT station_name) FROM trips
);

SELECT
    s.station_name,
    s.station_id,
    COUNT(t.trip_id) AS late_trips
FROM stations AS s
LEFT JOIN trips AS t
    ON t.end_station_id = s.station_id
WHERE t.start_time >= '2025-01-01'
    AND t.start_time < '2025-02-01'
    AND strftime('%H', t.start_time) IN ('02', '03', '04')
GROUP BY s.station_id, s.station_name
ORDER BY late_trips DESC
LIMIT 5;

SELECT
    s.station_name,
    s.station_id,
    COUNT(t.trip_id) AS late_trips
FROM stations AS s
LEFT JOIN trips AS t
    ON t.end_station_id = s.station_id
    AND t.start_time >= '2025-01-01'
    AND t.start_time < '2025-02-01'
    AND strftime('%H', t.start_time) IN ('02', '03', '04')
GROUP BY s.station_id, s.station_name
ORDER BY late_trips DESC;

SELECT
    s.station_name,
    s.station_id,
    COUNT(t.trip_id) AS late_trips
FROM stations AS s
LEFT JOIN trips AS t
    ON t.end_station_id = s.station_id
    AND t.start_time >= '2025-01-01'
    AND t.start_time < '2025-02-01'
    AND strftime('%H', t.start_time) IN ('02', '03', '04')
GROUP BY s.station_id, s.station_name
HAVING COUNT(t.trip_id) < 2
ORDER BY late_trips DESC;
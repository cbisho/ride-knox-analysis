SELECT 
    t.trip_id,
    t.start_time,
    s.station_name,
    s.docks
FROM trips AS t
JOIN stations AS s
    ON t.start_station_id = s.station_id 
WHERE s.neighborhood IN ('Old City', 'Fort Sanders')
    AND t.bike_type = 'electric'
GROUP BY t.start_time, s.station_name, s.docks
ORDER BY t.start_time ASC
LIMIT 5;

SELECT 
    t.trip_id,
    t.start_time,
    s.station_name,
    s.docks
FROM trips AS t INNER JOIN stations AS s
    ON t.end_station_id = s.station_id;
    

SELECT 
    s.neighborhood,
    COUNT(*) AS trips,
    ROUND(AVG(julianday(t.end_time) - julianday(t.start_time)) * 1440, 2) AS avg_duration_min
FROM trips AS t
JOIN stations AS s
    ON t.start_station_id = s.station_id 
GROUP BY s.neighborhood
ORDER BY trips DESC
LIMIT 5;

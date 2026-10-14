SELECT 
    SUM(docks) AS total_docks,
    ROUND(AVG(docks),1) AS avg_dock_per_station,
    MAX(docks) AS largest_dock_count,
    MIN(docks) AS smallest_dock_count
FROM stations;

SELECT
    COUNT(trip_id),
    ROUND(AVG(julianday(end_time) - julianday(start_time)) * 24, 2) AS avg_trip_duration_hr,
    MIN(ROUND((julianday(end_time) - julianday(start_time)) * 24, 2)) AS shortest_trip_hr,
    MAX(ROUND((julianday(end_time) - julianday(start_time)) * 24, 2)) AS longest_trip_hr
FROM trips;

SELECT
    COUNT(trip_id),
    ROUND(AVG(julianday(end_time) - julianday(start_time)) * 24, 2) AS avg_trip_duration_hr,
    MIN(ROUND((julianday(end_time) - julianday(start_time)) * 24, 2)) AS shortest_trip_hr,
    MAX(ROUND((julianday(end_time) - julianday(start_time)) * 24, 2)) AS longest_trip_hr
FROM trips
WHERE (julianday(end_time) - julianday(start_time)) * 24 BETWEEN 0.02 and 6;
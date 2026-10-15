-- Arrivals per dock in last quarter (Q4) of 2025.
-- Excludes trips before October 2025.

SELECT
    s.station_name,
    s.neighborhood,
    s.docks,
    COUNT(t.trip_id) AS Q4_arrivals,
    ROUND(COUNT(t.trip_id) * 1.0 / s.docks, 2) AS arrivals_per_dock
FROM stations AS s
LEFT JOIN trips AS t
    ON t.end_station_id = s.station_id
    AND t.start_time >= '2025-10-01'
    AND t.start_time < '2026-01-01'
GROUP BY s.station_id, s.station_name, s.neighborhood, s.docks
ORDER BY arrivals_per_dock DESC
LIMIT 5;

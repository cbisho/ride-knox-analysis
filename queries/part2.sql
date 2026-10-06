SELECT station_id, neighborhood, longitude
FROM stations LIMIT 5;

SELECT station_id, station_name, year_installed, 
2026 - year_installed AS age_years from stations;

SELECT 
trip_id, 
start_time, 
end_time, 
ROUND((julianday(end_time) - julianday(start_time)) * 24, 2)
    AS duration_hr
FROM trips LIMIT 5;
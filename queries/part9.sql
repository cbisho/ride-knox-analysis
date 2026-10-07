SELECT trip_id,
start_station_id,
start_time,
ROUND((julianday(end_time) - julianday(start_time)) *24,2) AS duration_hr
FROM trips
WHERE LOWER(rider_type) = 'member'
AND LOWER(bike_type) = 'classic'
AND start_station_id IN ("S06","S07","S08", "S09")
AND end_station_id IS NOT NULL
AND duration_hr >= 0.00
AND start_time BETWEEN '2025-03-15' AND '2025-03-31'
ORDER BY duration_hr ASC
LIMIT 8;
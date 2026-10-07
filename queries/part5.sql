SELECT trip_id, start_time, rider_type
FROM trips
WHERE start_time >= '2025-09-01'
AND start_time <= '2025-09-30';

SELECT trip_id, start_time, rider_type
FROM trips
WHERE start_time <='2025-09-30'
AND start_time >= '2025-09-01'
ORDER BY start_time DESC
LIMIT 3;

SELECT trip_id, start_time, rider_type
FROM trips
WHERE start_time BETWEEN '2025-09-01'
AND '2025-09-30';

SELECT trip_id, start_time, rider_type
FROM trips
WHERE start_time BETWEEN '2025-09-01'
AND '2025-09-30'
ORDER BY start_time DESC
LIMIT 3;

SELECT trip_id, start_time, rider_type
FROM trips
WHERE start_time BETWEEN '2025-03-15'
AND '2025-03-31'
LIMIT 3;

SELECT rider_type, trip_id, start_time
FROM trips
WHERE rider_type = 'member'
AND start_time BETWEEN '2025-10-01'
AND '2025-10-31';

SELECT rider_type, trip_id, start_time
FROM trips
WHERE LOWER(rider_type) = 'member'
AND start_time BETWEEN '2025-10-01'
AND '2025-10-31';
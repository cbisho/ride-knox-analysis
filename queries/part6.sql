SELECT station_id, station_name
FROM stations
WHERE station_name LIKE "%Ave%";

SELECT station_id, station_name, neighborhood
FROM stations
WHERE station_id LIKE "S2%";

SELECT station_id, neighborhood, station_name
FROM stations
WHERE neighborhood LIKE "%Knoxville";

SELECT station_id, neighborhood, station_name, docks
FROM stations
WHERE neighborhood LIKE "%Knoxville"
ORDER BY docks DESC
LIMIT 3;
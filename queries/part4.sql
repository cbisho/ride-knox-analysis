SELECT neighborhood, station_name
FROM stations
WHERE neighborhood = "Fort Sanders";

SELECT station_id, station_name, docks
FROM stations
WHERE docks >= 20;

SELECT station_name, docks, neighborhood
FROM stations
WHERE docks < 16
AND (neighborhood = "UT Campus"
OR neighborhood = "Fort Sanders");

SELECT station_name, docks, neighborhood
FROM stations
WHERE docks < 16
AND neighborhood = "UT Campus"
OR neighborhood = "Fort Sanders";

SELECT station_name, neighborhood
FROM stations
WHERE neighborhood 
IN ('South Knoxville','East Knoxville');

SELECT station_id, station_name, docks
FROM stations
WHERE docks BETWEEN 12 AND 16;

SELECT station_id, station_name, docks
FROM stations
WHERE docks >=12 
AND docks <=16;


# DATA 501; Assignment 7 SQL Log

**Name: Cora Bishop**
**Net ID: cbisho30**

**SQL tool used: VScode ext and CLI**

## Part 0

TODO 0: (base) cora@Coras-MacBook-Pro-2 SQL_HW % sqlite3 ride_knox.db
SQLite version 3.45.3 2024-04-15 13:34:05
Enter ".help" for usage hints.
sqlite> .schema
CREATE TABLE stations (
    station_id      TEXT PRIMARY KEY,
    station_name    TEXT NOT NULL,
    neighborhood    TEXT,
    latitude        REAL,
    longitude       REAL,
    docks           INTEGER,
    year_installed  INTEGER
);
CREATE TABLE trips (
    trip_id           TEXT PRIMARY KEY,
    start_time        TEXT NOT NULL,
    end_time          TEXT,
    start_station_id  TEXT REFERENCES stations(station_id),
    end_station_id    TEXT REFERENCES stations(station_id),
    rider_type        TEXT,
    bike_type         TEXT
);
sqlite> .table
stations  trips 


Q0: Shows the data-types and summarizes the metadata. Also, foreign keys point to overlapping data in columns.

## Part 1
TODO 1a: 
stations.station_id (primary key)
trips.trip_id (primary key)
trips.start_station_id (foreign key --> points to station_id in stations)
trips.end_station_id (foreign key --> points to station_id in stations)
TODO 1b:
In this module/SQL we split stations and trips into two designated entities; where stations contains station info and trips contain trip info. start_station_name is related to stations not to trips so it does not need to be stored in the trips table.

TODO 1c: If you rename or relabel something in a normalized database it is renamed everywhere, so you only have to change one row in one table. In a .csv you have to iterate over each row and change it "one-by-one" by a command.

Q1d: The fact that the trips were duplicates and already existed is why they were dropped. Better than Module 3 as it keeps the data source clean and does not have to be reporduced on different machines.

## Part 2 
TODO 2a: 
SELECT station_id, neighborhood, longitude
FROM stations LIMIT 5;

"station_id","neighborhood","longitude"
"S01","Downtown",-83.9197
"S02","Downtown",-83.9184
"S03","Downtown",-83.9186
"S04","Old City",-83.9151
"S05","World's Fair Park",-83.9265

TODO 2b:
SELECT station_id, station_name, year_installed, 
2026 - year_installed AS age_years from stations LIMIT 5;

 "station_id","station_name","year_installed","age_years"
"S01","Market Square",2022,4
"S02","Gay Street & Union Ave",2022,4
"S03","Krutch Park",2022,4
"S04","Old City - Jackson Ave",2022,4
"S05","World's Fair Park",2022,4

TODO 2c:
"trip_id","start_time","end_time","duration_hr"
"T0057984","2025-01-01 00:06:48","2025-01-01 00:19:16",0.21
"T0073896","2025-01-01 00:40:20","2025-01-01 01:20:19",0.67
"T0206129","2025-01-01 00:42:40","2025-01-01 01:10:30",0.46
"T0163585","2025-01-01 00:42:54","2025-01-01 00:57:56",0.25
"T0094124","2025-01-01 01:19:33","2025-01-01 01:50:22",0.51

Q2d:
It exists in my outputs console, but not in added to the table in the loaded database. A result set is a tempory data set made by your query.






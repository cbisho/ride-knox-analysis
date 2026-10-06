
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



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

Q2e: 
Give one concrete reason the ops team should not ask you for SELECT * FROM trips; when what they want is 2c's three columns.

Becaue the "duration_hr" is a result set so it is not added to the database only an output of the users query, it is not a commited change.

# Part 3

TODO 3a:
"neighborhood"
"Downtown"
"Old City"
"World's Fair Park"
"UT Campus"
"UT Ag Campus"
"Fort Sanders"
"South Knoxville"
"North Knoxville"
"East Knoxville"
"West Knoxville"
"Bearden"
"Sequoyah Hills"

TODO 3b:
25 
"start_station_id"
"S99"
"S24"
"S16"

Q3c: Your 3b result contains a station ID that does not appear in stations. Name it, say what it is, and explain in one sentence why the database allowed a trip to reference a station that doesn't exist.

S99, is not a real station but a bug from the app which resulted in a fake station. The database references a station that does not exist because it's an ID/foriegn key with nothing on the other end, which makes it an orphan row. SQL does not enforce removing these unless you select. 

Q3d:
In class, SELECT DISTINCT rider_type returned six values instead of two. State the general rule this illustrates about databases and data quality; in your own words, not the slide's

Data bases are not exactly clean but SQL allows some logical choices which "normalizes" some objects in columns. Such as rider_type is all the same phrases with different casing, thus it gets normalized to a lower casing. How well this works needs to managed column by column as you cannot trust the database to be completely clean.

# Part 4
TODO 4a. Return all stations in the Fort Sanders neighborhood.

"neighborhood","station_name"
"Fort Sanders","Cumberland Ave & 17th St"
"Fort Sanders","Fort Sanders - Laurel Ave"


TODO 4b. Return station_id, station_name, and docks for stations with 20 or more docks.

"station_id","station_name","docks"
"S01","Market Square",20
"S05","World's Fair Park",20
"S06","Hodges Library",24
"S08","Student Union - UT",24


TODO 4c. Return the stations that are in UT Campus or Fort Sanders and have 16 or more docks. Your query must use parentheses.

"station_name","docks","neighborhood"
"The Hill - Ayres Hall",12,"UT Campus"
"Fort Sanders - Laurel Ave",12,"Fort Sanders"


TODO 4d. Write 4c a second time without the parentheses, run it, and paste that result too.

"station_name","docks","neighborhood"
"The Hill - Ayres Hall",12,"UT Campus"
"Cumberland Ave & 17th St",16,"Fort Sanders"
"Fort Sanders - Laurel Ave",12,"Fort Sanders"


TODO 4e. Return all stations in South Knoxville or East Knoxville, using IN rather than a chain of ORs.

"station_name","neighborhood"
"South Waterfront","South Knoxville"
"Suttree Landing Park","South Knoxville"
"Ijams Nature Center","South Knoxville"
"Zoo Knoxville","East Knoxville"
"Caswell Park","East Knoxville"


TODO 4f. Return station_id, station_name, and docks for stations whose dock count is between 12 and 16 inclusive, using BETWEEN.

"station_id","station_name","docks"
"S02","Gay Street & Union Ave",16
"S03","Krutch Park",12
"S04","Old City - Jackson Ave",16
"S07","The Hill - Ayres Hall",12
"S09","Neyland Stadium",16
"S10","Ag Campus - Morgan Hall",12
"S11","Cumberland Ave & 17th St",16
"S12","Fort Sanders - Laurel Ave",12
"S14","South Waterfront",12
"S17","Happy Holler",12
"S19","Broadway & Central",12
"S22","Tyson Park",12
"S23","Bearden - Kingston Pike",12


Q4g: Compare your 4c and 4d results. How many rows does each return, which one answers the ops lead's question, and what does this tell you about operator precedence in SQL?

4c; 2
4d; 3 
4d without paratheses, because it is 16 or more. AND gets get evaluated before OR.


Q4h: Rewrite 4f as an equivalent WHERE clause using only >=, <=, and AND. Which version would you rather hand a colleague, and why?

SELECT station_id, station_name, docks
FROM stations
WHERE docks BETWEEN 12 AND 16;

SELECT station_id, station_name, docks
FROM stations
WHERE docks >=12 
AND docks <=16;

Second option, is an explicit operator.

# Part 5 

TODO 5a. Return trip_id, start_time, and rider_type for all trips that started in September 2025, using the half-open rangepattern from class. Paste the row count and the first 3 rows.

22343

"trip_id","start_time","rider_type"
"T0083627","2025-09-29 23:52:31","casual"
"T0007532","2025-09-29 23:49:31","member"
"T0174241","2025-09-29 23:36:16","casual"




TODO 5b. Now write the tempting wrong version: the same query using BETWEEN '2025-09-01' AND '2025-09-30'. Paste its row count.
22343

"trip_id","start_time","rider_type"
"T0083627","2025-09-29 23:52:31","casual"
"T0007532","2025-09-29 23:49:31","member"
"T0174241","2025-09-29 23:36:16","casual"



TODO 5c. Not every question is about a whole month. Return trip_id and start_time for trips that started in the second half of March 2025; March 15 through March 31 inclusive. Paste the row count and the first 3 rows. (Think carefully about the upper bound; the 5b trap applies here too.)

10264
"trip_id","start_time","rider_type"
"T0241055","2025-03-15 00:25:55","member"
"T0179889","2025-03-15 00:31:29","casual"
"T0134722","2025-03-15 00:51:01","member"


TODO 5d. The ops lead suspects the casing problem you found in Module 3 is distorting her own spreadsheets. Run two versions of "member trips in October 2025": one using rider_type = 'member', and one using LOWER(rider_type) = 'member'. Paste both row counts.

1st --> 134881
2nd --> 139732


Q5e: How many trips did 5b lose compared with 5a, and exactly why; what is true of a value like '2025-09-30 18:04:11'that excludes it?

I did not lose any trips, there were no trips on the 30th when I sort them by descending. 
'2025-09-30 18:04:11' is exlcuded from the range as it is larger than '2025-09-30'.

Q5f: How many trips did the naive version in 5d miss? The ops lead says "it's only a rounding error, ignore it." Give her a one-sentence reason that is about correctness, not size.

4851 trips.
Even though 4851 trips may seem like a rounding error, it is best to keep the pipeline precise because it needs to evaluate trends and identify changes in Ride Knox customer behavior.

# Part 6
TODO 6a. Return station_id and station_name for every station whose name contains Ave.
"station_id","station_name"
"S02","Gay Street & Union Ave"
"S04","Old City - Jackson Ave"
"S11","Cumberland Ave & 17th St"
"S12","Fort Sanders - Laurel Ave"


TODO 6b. Return station_id, station_name, and neighborhood for stations whose station_id matches the pattern S2_ (the _wildcard, exactly one character).

"station_id","station_name","neighborhood"
"S20","Zoo Knoxville","East Knoxville"
"S21","Caswell Park","East Knoxville"
"S22","Tyson Park","West Knoxville"
"S23","Bearden - Kingston Pike","Bearden"
"S24","Sequoyah Hills Park","Sequoyah Hills"

TODO 6c. Return station_id and neighborhood for stations whose neighborhood ends with the word Knoxville. Your pattern must anchor at the end; no leading-and-trailing % shortcut.

IDK how to do without leading shortcut, but is anchored at end.

"station_id","neighborhood","station_name"
"S14","South Knoxville","South Waterfront"
"S15","South Knoxville","Suttree Landing Park"
"S16","South Knoxville","Ijams Nature Center"
"S17","North Knoxville","Happy Holler"
"S18","North Knoxville","Fourth & Gill"
"S19","North Knoxville","Broadway & Central"
"S20","East Knoxville","Zoo Knoxville"
"S21","East Knoxville","Caswell Park"
"S22","West Knoxville","Tyson Park"


TODO 6d. (Combines LIKE with ORDER BY and LIMIT; a combination the slides never showed together.) Of the stations matching 6c, return the 3 with the most docks, showing station_name, neighborhood, and docks.

"station_id","neighborhood","station_name","docks"
"S14","South Knoxville","South Waterfront",12
"S17","North Knoxville","Happy Holler",12
"S19","North Knoxville","Broadway & Central",12

Q6e: You run WHERE station_name LIKE '%park%' (lowercase) in SQLite and get the same rows as '%Park%'. Would that still be true if Ride Knox's production PostgreSQL database ran the identical query? What should you write instead if you mean "case-insensitive"?

Not be the same is PostgreSQL.

WHERE LOWER(station_name) LIKE '%park%'









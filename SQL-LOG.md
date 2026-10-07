
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

# Part 7
TODO 7a. Return trip_id, start_station_id, and start_time for trips with no recorded end station. Paste the row count and the first 3 rows. (It should reconcile with the 3,767 anchor above.)

3767
"trip_id","start_station_id","start_time","end_station_id"
"T0168031","S06","2025-01-01 08:17:12",""
"T0043727","S12","2025-01-01 10:24:35",""
"T0237204","S03","2025-01-01 16:18:45",""


TODO 7b. The ops lead asks for "every trip that did not end at Market Square (S01)." Write the naive version first: WHERE end_station_id <> 'S01'. Paste the row count.

223918

TODO 7c. Now write the version that also keeps the never-docked trips, and paste its row count.

227685

TODO 7d. (Combines IS NULL with IN; not combined in class.) Return trip_id and start_station_id for trips that started at one of the three South Knoxville stations (S14, S15, S16) and have no recorded end station. Paste the row count and the first 3 rows.

238

"trip_id","start_station_id"
"T0084969","S16"
"T0197506","S14"
"T0238948","S15"

Q7e: Subtract 7b from 7c. Explain in 2–3 sentences why the naive <> filter silently dropped exactly that many rows; your answer must use the word unknown.

3,767
Because there are end_station_ids that are empty making them unknown values. So when we add in "OR end_station_id IS NULL" than those 3,767 "stations get added back in to the count. It is more specific as we are only excluding S01 and not S01 and empty end_station_id rides.

Q7f: Which of 7b or 7c actually answers the ops lead's question as she asked it? Defend your choice; there is a reasonable case either way, so say what you would confirm with her.

7c Because the rides that have no end station were still rides so and may or may not have ended at Market-Square. They do not point to ending at Market-Square or any other station so they do not add to the market square metric comparison. However both metrics should be noted.

# Part 8:

TODO 8a. Return station_id, station_name, docks, and year_installed for all stations, oldest first, breaking ties by largest dock count first. (Class sorted by docks then name; this is the other way around, in the other directions.)
"station_id","station_name","docks","year_installed"
"S06","Hodges Library",24,2022
"S08","Student Union - UT",24,2022
"S01","Market Square",20,2022
"S05","World's Fair Park",20,2022
"S02","Gay Street & Union Ave",16,2022
"S04","Old City - Jackson Ave",16,2022
"S11","Cumberland Ave & 17th St",16,2022
"S03","Krutch Park",12,2022
"S07","The Hill - Ayres Hall",12,2022
"S09","Neyland Stadium",16,2023
"S10","Ag Campus - Morgan Hall",12,2023
"S12","Fort Sanders - Laurel Ave",12,2023
"S14","South Waterfront",12,2023
"S17","Happy Holler",12,2023
"S22","Tyson Park",12,2023
"S13","Second Creek Greenway",10,2023
"S19","Broadway & Central",12,2024
"S15","Suttree Landing Park",10,2024
"S16","Ijams Nature Center",10,2024
"S18","Fourth & Gill",10,2024
"S20","Zoo Knoxville",10,2024
"S21","Caswell Park",10,2024
"S23","Bearden - Kingston Pike",12,2025
"S24","Sequoyah Hills Park",10,2025


TODO 8b. Using that same ordering, return rows 6 through 10 only; not the first 5.

"station_id","station_name","docks","year_installed"
"S04","Old City - Jackson Ave",16,2022
"S11","Cumberland Ave & 17th St",16,2022
"S03","Krutch Park",12,2022
"S07","The Hill - Ayres Hall",12,2022
"S09","Neyland Stadium",16,2023


TODO 8c. Return the 3 newest stations, showing station_name, neighborhood, and year_installed.

"station_name","neighborhood","year_installed"
"Bearden - Kingston Pike","Bearden",2025
"Sequoyah Hills Park","Sequoyah Hills",2025
"Suttree Landing Park","South Knoxville",2024


Q8d: A colleague sends you SELECT station_name FROM stations LIMIT 3; and calls it "the three biggest stations." Give the two-part reason this is wrong, and write the query that would be right.

That is incorrect because SQL rows have no order so they are just showing a random sample of 3 rows from their query. By biggest, I am unsure whether they mean in area or docks, but I am going to assume docks because that is represenative a bit to traffic.

Right:
SELECT station_name, docks
FROM stations, 
ORDER BY docks DESC; 

# Part 9
"The campus stations were rebuilt over spring break. Show me the shortest completed member trips on classic bikes that started at a UT Campus station in the second half of March; I want to see whether people are just fumbling the docks."

TODO 9a. Write one query, in queries/part9.sql, that returns trip_id, start_station_id, start_time, and duration_hr (your Part 2c computed column) for trips meeting all of the following, and paste the full result:
•	rider type is member, counting all spellings in the raw data
•	bike_type is classic
•	started at a UT Campus station; use the station IDs you can read out of stations (S06, S07, S08, S09) with an INlist
•	started March 15–31, 2025 inclusive
•	the trip has a recorded end station
•	sorted shortest duration first
•	limited to 8 rows

"trip_id","start_station_id","start_time","duration_hr"
"T0163787","S09","2025-03-22 08:51:23",-0.2
"T0042244","S08","2025-03-20 13:32:03",0.03
"T0088672","S06","2025-03-27 17:11:30",0.03
"T0124681","S08","2025-03-18 19:35:31",0.04
"T0162779","S09","2025-03-15 09:05:45",0.05
"T0202713","S06","2025-03-16 06:50:47",0.05
"T0101111","S06","2025-03-16 14:43:44",0.05
"T0224454","S08","2025-03-16 17:25:21",0.05


TODO 9b. Look hard at the top row of your result. Something is wrong with it in a way that is not a dock fumble. Say what, and name the Module 3 data-quality problem it is.

Some trips have negative values due to a bug in the app. The data-quality of those trips make them impossible trips. In this case end_time is before start_time. 

TODO 9c. Add one more condition to your query so that the impossible rows are excluded, keeping everything else the same. Paste the corrected query and its result.

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

"trip_id","start_station_id","start_time","duration_hr"
"T0042244","S08","2025-03-20 13:32:03",0.03
"T0088672","S06","2025-03-27 17:11:30",0.03
"T0124681","S08","2025-03-18 19:35:31",0.04
"T0162779","S09","2025-03-15 09:05:45",0.05
"T0202713","S06","2025-03-16 06:50:47",0.05
"T0101111","S06","2025-03-16 14:43:44",0.05
"T0224454","S08","2025-03-16 17:25:21",0.05
"T0051651","S06","2025-03-23 08:44:56",0.05



TODO 9d. Commit queries/ and SQL-LOG.md on a branch named feature/sql-week7-queries, push it, and open a pull requestinto main with a description saying what the queries answer. Merge it. Paste the PR URL into the log (and submit it on Canvas).

branch is called M7, I already made all my commits on this branch...


Q9e: List the clauses of your 9c query in the order the database evaluates them, and explain why ORDER BY can sort by duration_hr by name. Then try WHERE duration_hr > 0 and report what actually happened in your tool; and say what a portable version of that filter would look like.

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

My order
SELECT --> FROM --> WHERE --> ORDER BY --> LIMIT
Database
FROM --> WHERE --> SELECT --> ORDER BY --> LIMIT

Order by can sort duration by name because it has been selected.

With WHERE duration_hr > 0
"trip_id","start_station_id","start_time","duration_hr"
"T0042244","S08","2025-03-20 13:32:03",0.03
"T0088672","S06","2025-03-27 17:11:30",0.03
"T0124681","S08","2025-03-18 19:35:31",0.04
"T0162779","S09","2025-03-15 09:05:45",0.05
"T0202713","S06","2025-03-16 06:50:47",0.05
"T0101111","S06","2025-03-16 14:43:44",0.05
"T0224454","S08","2025-03-16 17:25:21",0.05
"T0051651","S06","2025-03-23 08:44:56",0.05

Looks the same.

Q9f: Which single condition in 9a would you defend most vigorously if the ops lead asked you to drop it "to get more rows"? Why?

The time decimal point, there could be mistakes or bugs of very short rides that would not be relevant to the analysis.






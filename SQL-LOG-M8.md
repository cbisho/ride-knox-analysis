## Name: Cora Bishop 
## netid: cbisho30

## Part 0:
Four anchors you can check yourself against: trips has 250,000 rows; 3,767 of them have no end_station_id; stations has 24 rows; those 24 stations have 330 docks between them. If a query's numbers can't be reconciled with those, something is off
# TODOa:
"total_trips","COUNT(end_station_id)","COUNT(DISTINCT start_station_id)","COUNT(DISTINCT rider_type)"
250001,246234,26,7

# Q0: 
End station ID --> does not match trip count so there is missing data for end station for some trips.
Distinct start station ID does not match station #, there are only 24 stations in station table. Extra station in data.

## Part 1: Capacity summary (docks)
# TODO 1a:
"total_docks","avg_dock_per_station","largest_dock_count","smallest_dock_count"
330,13.8,24,10

# TODO 1b:
"COUNT(trip_id)","avg_trip_duration_hr","shortest_trip_hr","longest_trip_hr"
250001,0.47,-1.75,71.81

# TODO 1c:
"COUNT(trip_id)","avg_trip_duration_hr","shortest_trip_hr","longest_trip_hr"
248230,0.28,0.02,3

# Q1e: 
I would put 1c in the report, with a sentence saying that outlier trips of durations longer than 6 hours or less than one minute were excluded from calculations.

## Part 2:

# TODO 2a:
"start_station_id","trip_count_per_station"
"S06",26058
"S08",24959
"S01",22606
"S11",18934
"S02",16542

"COUNT(trip_count_per_station)"
26

# TODO 2b:
"hour","trip_count_per_hour"
"17",25178
"08",21766
"18",21404
"16",19220
"12",16690
"07",14910

# TODO 2c:
"rider_type","bike_type","trip_count_per_rider_and_bike"
"member","classic",98379
"member","electric",60163
"casual","classic",56538
"casual","electric",34920

# TODO 2d:
"rider_type","bike_type","trip_count_per_rider_and_bike"
"member","classic",94928
"member","electric",58089
"casual","classic",54498
"casual","electric",33692
"Member","classic",1970
"MEMBER","classic",1481
"Member","electric",1192
"Casual","classic",1188
"MEMBER","electric",882
"CASUAL","classic",852
"Casual","electric",710
"CASUAL","electric",518

12 rows

# Q2e:
2d returned 12 rows, the rider-types all exist but they differ in syntax. There is only 'member' and 'casual' but the data contains "MEMBER" "CASUAL" "Casual" "Member" as separate inputs when not normalized. 

GROUPBY is organizing the values in rider_type which has 12 separate variations, each variation becomes a value to GROUPBY to organize the data.

# Q2f:
The wide form is the data transposed so the rows become columns. 
For python/pandas it is a pivot_table.

## Part 3:
# TODO 3a:
"rider_type","electric_bike","classic_bike"
"member",60163,98379
"casual",34920,56538
"rider_type:text",0,0

# TODO 3b
"bike_type","rider_type","trip_count"
"bike_type:TEXT","rider_type:TEXT",1
"classic","casual",154917
"electric","casual",95083

# Q3c:
Clean-looking answer.
rider_type column is just a text value, selected arbitrary by SQL. Reader would not be able to tell anything is wrong because it looks like they were grouped, even though each bike_type contains every rider_type.

# Q3d:
If you ran 3b in PostgreSQL tou would get an error. In SQL the grouping rule aggregates values into one-roew per group, each selected column needs to be defined in the GROUP BY command so it is aggregated properly.









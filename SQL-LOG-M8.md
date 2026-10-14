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







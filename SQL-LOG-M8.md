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




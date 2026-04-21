## SQL queries

### Question 3
SELECT COUNT(trip_distance)

FROM green_taxi_data

WHERE lpep_pickup_datetime >= '2025-11-01' 

AND lpep_pickup_datetime < '2025-12-01'

AND trip_distance <= 1
<br>
<br>

### Question 4
SELECT DATE_TRUNC('day', lpep_pickup_datetime) AS pickup_day, 

MAX(trip_distance) AS max_trip_distance

FROM green_taxi_data

WHERE trip_distance < 100

GROUP BY lpep_pickup_datetime

ORDER BY max_trip_distance DESC

LIMIT 1
<br>
<br>

### Question 5
SELECT zp."Zone", SUM(total_amount) AS sum_all_trips

FROM green_taxi_data g JOIN zones zp

ON g."PULocationID" = zp."LocationID"

JOIN zones zd

ON g."DOLocationID" = zd."LocationID"

WHERE lpep_pickup_datetime::date = '2025-11-18'

GROUP BY zp."Zone"

ORDER BY sum_all_trips DESC

LIMIT 1
<br>
<br>

### Question 6
SELECT zd."Zone", MAX(tip_amount) AS max_tip

FROM green_taxi_data g JOIN zones zp

ON g."PULocationID" = zp."LocationID"

JOIN zones zd

ON g."DOLocationID" = zd."LocationID"

WHERE lpep_pickup_datetime::date BETWEEN '2025-11-01' 

AND '2025-11-30'

AND zp."Zone" = 'East Harlem North'

GROUP BY zd."Zone"

ORDER BY max_tip DESC

LIMIT 1






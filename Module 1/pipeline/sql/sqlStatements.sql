--INNER JOIN

select 

t.tpep_pickup_datetime,
t.tpep_dropoff_datetime,
t.total_amount,
CONCAT(zpu."Borough", ' / ', zpu."Zone") AS "pick_up_loc",
CONCAT(zdo."Borough", ' / ', zdo."Zone") AS "drop_off_loc"
from 
	yellow_taxi_trips t,
	zones zpu,
	zones zdo
WHERE
	t."PULocationID" = zpu."LocationID" AND
	t."DOLocationID" = zdo."LocationID"
LIMIT 100

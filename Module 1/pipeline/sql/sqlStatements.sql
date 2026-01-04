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

--USE JOIN

select 

t.tpep_pickup_datetime,
t.tpep_dropoff_datetime,
t.total_amount,
CONCAT(zpu."Borough", ' / ', zpu."Zone") AS "pick_up_loc",
CONCAT(zdo."Borough", ' / ', zdo."Zone") AS "drop_off_loc"

from
	yellow_taxi_trips t JOIN zones zpu 
		ON t."PULocationID" = zpu."LocationID" 
	JOIN zones zdo
		ON t."DOLocationID" = zdo."LocationID"
LIMIT 100

-- LEFT JOIN look for missing DO Location Ids

select 

t.tpep_pickup_datetime,
t.tpep_dropoff_datetime,
t.total_amount,
CONCAT(zpu."Borough", ' / ', zpu."Zone") AS "pick_up_loc",
CONCAT(zdo."Borough", ' / ', zdo."Zone") AS "drop_off_loc"

from
	yellow_taxi_trips t JOIN zones zpu 
		ON t."PULocationID" = zpu."LocationID" 
	JOIN zones zdo
		ON t."DOLocationID" = zdo."LocationID"

WHERE
	"DOLocationID" NOT IN (SELECT "LocationID" from zones)
LIMIT 100
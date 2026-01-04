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

--USE JOIN (LEFT/RIGHT/OUTER)

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

-- GROUP/ ORDERBY look for missing DO Location Ids

select 

CAST(tpep_dropoff_datetime AS DATE) as "day",
"DOLocationID",
COUNT(1) as "count",
MAX(total_amount) as "Fare",
MAX(passenger_count) as "Passengers"

from
	yellow_taxi_trips t 

GROUP BY
	1,2
	--CAST(tpep_dropoff_datetime AS DATE)
--ORDER BY "Fare" DESC

ORDER BY 
	"day" ASC,
	"DOLocationID" ASC;
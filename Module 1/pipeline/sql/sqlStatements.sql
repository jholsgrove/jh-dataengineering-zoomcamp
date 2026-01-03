-- SELECT TRIPS WHERE Pickup and Dropoff Ids match (Join without the JOIN statement)

select * 
from 
	yellow_taxi_trips t,
	zones zpu,
	zones zdo
WHERE
	t."PULocationID" = zpu."PULocationID" AND
	t."DOLocationID" = zdo."DOLocationID"
LIMIT 100

-- LEFT JOIN

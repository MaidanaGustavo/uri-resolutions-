select 
	   temperature , 
	   count(temperature) as number_of_records
from
records r 
group by temperature,mark
order by mark

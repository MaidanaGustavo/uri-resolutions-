select distinct
c.name,
c.investment,
ceiling((c.investment) / avg(o.profit)) as "month_of_payback",
((select sum(profit) from operations where client_id = c.id 
and month <=ceiling((c.investment) / avg(o.profit)))-c.investment) as "return"
from clients c inner join operations o 
on o.client_id = c.id
where  
	investment <= (select sum(profit) from operations where client_id = c.id)
group by c.name,c.investment,c.id
order by "return" desc

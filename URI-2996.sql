select
p.year,
s.name,
r.name
from users s
inner join packages p 
on s.id = p.id_user_sender
inner join users r
on r.id = p.id_user_receiver
where (p.color like '%blue%' or p.year = 2015)
and ( r.address not like '%Taiwan%')
order by  p.year desc

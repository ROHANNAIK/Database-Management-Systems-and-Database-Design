

select email_id,dob from passenger;


##augue.id@in.ca

select * from ticket;

Select date(now());


create view age_group_of_passenger_vw
as
Select p.Full_name, rs.email_id, rs.PNR,p.Gender, ceil(datediff(date(now()),p.dob)/365) as 'Age'
from reservation_status rs
inner join passenger p
on rs.email_id = p.email_id;

drop view age_group_of_passenger_vw;

Select * from age_group_of_passenger_vw;

truncate  age_group_of_passenger_vw;
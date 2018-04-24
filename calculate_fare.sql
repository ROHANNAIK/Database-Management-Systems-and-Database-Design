delimiter &&
create procedure calculate_fare (in pnr varchar(10), in class_type varchar(10))
begin
declare temp_fare float;
 insert into fare_per_journey (PNR, train_id, seat_number, class_type, fare)   
select @pnr, t.train_id, t.seat_number, @class_type, 
(CASE  
 WHEN @class_type = 'First' THEN 
     tc.fare_type1 
 WHEN @class_type = 'Business' THEN
      tc.fare_type2
 WHEN @class_type = 'Second' THEN
     tc.fare_type3
     END ) as 'fare'
from ticket t
inner join train_class_type tc
where t.train_id = tc.train_id
and t.class_type = @class_type;

end ;&&
delimiter ;

create table fare_per_journey
(
PNR varchar(50),
train_id int,
seat_number varchar(20),
class_type varchar(20),
Fare int
);



drop procedure calculate_fare;

Set @pnr = '9622VU', @class_type = 'First' ;
call calculate_fare (@pnr, @class_type);

Select * from fare_per_journey;

truncate table fare_per_journey;
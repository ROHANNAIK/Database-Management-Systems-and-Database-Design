create view passenger_track_using_pnr_vw
As
select p.full_name, p.email_id, p.gender, pt.pnr, pt.seat_number , pt.train_id, r.reservation_date, r.reservation_status
from passenger p
inner join passenger_track_using_pnr pt
inner join reservation_status r
where p.email_id = r.email_id
and r.pnr = pt.pnr;

ALTER TABLE passenger_track_using_pnr MODIFY Passenger_name varchar(50) NULL DEFAULT NULL; 
ALTER TABLE passenger_track_using_pnr MODIFY gender varchar(10) NULL DEFAULT NULL; 

Select * from passenger_track_using_pnr_vw;

drop view passenger_track_using_pnr_vw;

desc passenger_track_using_pnr;


delimiter &&
create trigger insert_passenger_vw
after insert on passenger_track_using_pnr for each row
begin
insert into passenger_track_using_pnr_vw (full_name, email_id, gender, pnr, seat_number,train_id, reservation_date, reservation_status) 
(select p.full_name, p.email_id, p.gender, pt.pnr, concat('A',pt.seat_number), pt.train_id, r.reservation_date, r.reservation_status
from passenger p
inner join passenger_track_using_pnr pt
inner join reservation_status r
where p.email_id = r.email_id
and r.pnr = pt.pnr);
end; &&
delimiter ;

drop trigger insert_passenger_vw;
----------------------------------------------------------------------------------------------------------------------

## TICKET BOOKING MODULE 
----------------------------------------------------------------------------------------------------------------------

delimiter &&
create trigger status_update
before update on train_booking_status for each row
begin
if available_seat_status > 5 AND waiting_seat_status = 0
then
Set @trn_id = 4, @email_id = 'urna@euismodest.co.uk', @src_station = 'Goa',@destination_st = 'Punjab' ;
call reserve (@trn_id, @email_id, @src_station, @destination_st);
else
INSERT INTO messages(message) VALUES ('No Tickets Available'); 
end if; 
end; &&
delimiter ;



drop trigger status_update;

drop procedure reserve;

------------------------------------------------------------------------------------------------------------------
## INSERTION INTO RESERVATION_STATUS & TICKET TABLES
## ACTUAL TICKET BOOKING PHASE

delimiter &&
create procedure reserve (in trn_id int, in email_id varchar(30), in src_station varchar(30), in destination_st varchar(30), in class_type varchar(10))
begin
start transaction;
set @PNR := lpad(conv(floor(rand()*pow(36,6)), 10, 36), 6, 0);
set @seat_no := lpad(conv(floor(rand()*pow(4,2)), 10, 4), 2, 0);
set @coach_no :=lpad(conv(floor(rand()*pow(4,2)), 10, 4), 2, 0);
set @passenger_name = (Select full_name from passenger p where p.email_id = @email_id );
set @gender = (Select gender from passenger p where p.email_id = @email_id );
##set @zone = (Select repairs_zone from train_repairs where train_train_id = @trn_id) ;
##set @fare = (Select fare_type1 from train_class_type where class_type1 = @class_type OR class_type2 = @class_type or class_type3 = @class_type) ;
insert into ticket (PNR, source_station_name, destination_station_name, ticket_status, train_id, seat_number, class_type) select @PNR, @src_station, @destination_st, 'Booked', @trn_id, concat('A',@seat_no), @class_type ;
insert into reservation_status (train_id, available_date, email_id, PNR, reservation_date, reservation_status) select @trn_id, date(now()), @email_id, @PNR, date(now()), 'Confirmed' ;
insert into passenger_track_using_pnr (pnr,coach_number, passenger_name, gender, train_id) Select @PNR, concat('S',@coach_no),@passenger_name,@gender,@trn_id ;
update train_booking_status tbs
set tbs.seat_booked_status = tbs.seat_booked_status + 1 , tbs.available_seat_status = tbs.available_seat_status - 1 
where tbs.train_id = @trn_id
##insert into railway_earnings ( zone ,train_id,class_type,fare) Select @zone, @trn_id, @class_type, @fare
##select @trn_id, @email_id, @src_station, @destination_st, @PNR
limit 1;
commit;
end; &&
delimiter ;

SET FOREIGN_KEY_CHECKS=0;
## USER INPUT STEP
delimiter &&
create procedure call_booking_proc ()
begin
##DECLARE EXIT HANDLER FOR SQLEXCEPTION
Set @trn_id = 5,  @email_id = 'augue.id@in.ca', @src_station = 'Bandra',@destination_st = 'Howrah', @class_type = 'First' ;
call reserve (@trn_id, @email_id, @src_station, @destination_st, @class_type);

end; &&
delimiter ;

call call_booking_proc();

drop procedure call_booking_proc;
SET foreign_key_checks = 0;
## GET USER TICKET

select * from ticket;
-------------------------------------------------------------------------------------------------------------------
truncate table ticket;

-------------------------------------------------------------------------------------------------------------------
## GET TICKET RESERVATION STATUS

select * from reservation_status;

truncate table reservation_status;

-------------------------------------------------------------------------------------------------------------------
## GET TRAIN BOOKING_STATUS

select * from train_booking_status;

desc train_booking_status;

update  train_booking_status
set available_seat_status = 50, seat_booked_status = 0
where train_id = 5;

drop trigger `railway_operations_management`.`train_booking_status_BEFORE_UPDATE`;
------------------------------------------------------------------------------------------------------------------

Select * from passenger_track_using_pnr;

truncate table passenger_track_using_pnr;

alter table passenger_track_using_pnr
drop column seat_number;


Select * from messages;
truncate table messages;

alter table messages
drop column trn_id;
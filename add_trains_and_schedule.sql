
delimiter &&
create procedure add_train ( in tname varchar(50), in ttype varchar(50), in o_station varchar(50), in d_station varchar(50))
begin
declare message_text varchar(50);
insert into train (train_id, train_name, train_type, orignating_station, destination_station) select @tname, @ttype, @o_station, @d_station;
set @message_text = 'Train details added successfully';
Select @message_text;
##limit 1
commit;
end; &&
delimiter ;

drop procedure add_passengers;

SET FOREIGN_KEY_CHECKS=0;
set @tname = 'Pawan Express', @ttype = 'Express', @o_station = 'Mumbai', @d_station = 'Delhi' ;
call add_train (@tname, @ttype, @o_station, @d_station);


delimiter &&
create procedure add_train_schedule ( in tname varchar(50),in days_running_on varchar(10), in start_time time)
begin
declare message_text varchar(50);
insert into train_schedule (train_name, days_running_on, start_time) select @tname, @days_running_on, @start_time;
set @message_text = 'Train Schedule added successfully';
Select @message_text;
##limit 1
commit;
end; &&
delimiter ;

drop procedure add_train_schedule;

set @tname = 'Pawan Express', @days_running_on = 'Tuesday', @start_time = '14:15:46' ;
call add_train_schedule (@tname, @days_running_on, @start_time);
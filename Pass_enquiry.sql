------------------------------------------------------------------------------------------------------------------
## ENQUIRY MODULE

delimiter &&
create procedure get_trains (in source_station varchar(50), in destination varchar(50))
Begin
Select concat('AC1010',t.train_id) as 'Train Number',t.train_name, t.train_type, t.orignating_station, t.destination_station, tc.class_type1, tc.fare_type1, tc.class_type2, tc.fare_type2, tc.class_type3, tc.fare_type3, ts.start_time, ts.days_running_on, tb.available_seat_status, t.route_id, r.number_of_stops, r.total_distance, r. Total_journey_time  from train t
inner join  train_class_type tc
inner join train_schedule ts
inner join train_booking_status tb
inner join route r
where orignating_station = source_station
AND destination = destination_station
and tc.train_id = t.train_id
and ts.train_id = t.train_schedule_train_id
and tb.train_id = t.train_id
and t.route_id = r.route_id;
end;&&
delimiter ; 

drop procedure get_trains;

delimiter &&
create procedure get_info ()
begin
Set @source_station = 'Bandra', @destination = 'Howrah';
call get_trains (@source_station, @destination);
end;&&
delimiter ;

drop procedure get_info;
call get_info();



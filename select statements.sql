Select * from train_schedule;
Select * from train_class_type;
select * from train;
Select * From train_repairs;
select * from department;
select * from passenger;
Select * from railway_zones;
select * from repairs_supervisor;
select * from station;
Select * from station_on_route;
select * from ticket;
select * from time_table_for_station;
Select * from train_booking_status;
Select * from train_class_type;
Select * from train_repairs;
select * from train_repairs_has_railway_zones;
select * from train_repairs_has_repairs_supervisor;
Select * from train_schedule;
Select * from reservation_status;
Select * from route;
select * from passenger_track_using_pnr;
select * from department;
select * from railway_earnings;


drop table employee_department;

alter table train
drop column train_schedule_train_id;
desc reservation_status;
desc ticket;

GET DIAGNOSTICS @p1 = NUMBER, @p2 = ROW_COUNT;
Select @p1, @p2;

GET DIAGNOSTICS CONDITION 1
  @p3 = RETURNED_SQLSTATE, @p4 = MESSAGE_TEXT;
  
  Select @p3, @p4;
  
  Delimiter &&
  CREATE PROCEDURE do_insert(value INT)
BEGIN
  -- Declare variables to hold diagnostics area information
  DECLARE code CHAR(5) DEFAULT '00000';
  DECLARE msg TEXT;
  DECLARE rows INT;
  DECLARE result TEXT;
  -- Declare exception handler for failed insert
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
      GET DIAGNOSTICS CONDITION 1
        code = RETURNED_SQLSTATE, msg = MESSAGE_TEXT;
    END;

  -- Perform the insert
  INSERT INTO station (station_id, station_name) VALUES(12, 'Thane');
  -- Check whether the insert was successful
  IF code = '00000' THEN
    GET DIAGNOSTICS rows = ROW_COUNT;
    SET result = CONCAT('insert succeeded, row count = ',rows);
  ELSE
    SET result = CONCAT('insert failed, error = ',code,', message = ',msg);
  END IF;
  -- Say what happened
  SELECT result;
END; &&
delimiter ;

call do_insert(1);
call do_insert(NULL);
desc passenger;

alter table ticket
add column seat_number varchar(10);

alter table ticket
add column class_type varchar(10);

desc train;

update  passenger
set gender = 'Female'
where gender = 'Unknown';
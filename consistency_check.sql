delimiter &&
create procedure consistency_check ()
begin
truncate table ticket;
truncate table reservation_status;
truncate table passenger_track_using_pnr;
truncate table cancellations;
truncate table train_repairs_status_tracking;
truncate table fare_per_journey;
truncate table railway_earnings;
truncate table `logs`;
end; &&
delimiter ;

call consistency_check();
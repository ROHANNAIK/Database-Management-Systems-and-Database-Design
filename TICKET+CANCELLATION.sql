----------------------------------------------------------------------------------------------------------
##TICKET CANCELLATION MODULE

delimiter &&
create procedure cancellation (in trn_id int, in email_id varchar(30), in pnr varchar(20))
begin
insert into cancellations (train_id, email_id, PNR, date_cancelled, `status`) select @trn_id, @email_id, @PNR, date(now()), 'Cancelled' ;
delete from ticket where train_id = @trn_id;
delete from reservation_status where train_id = @trn_id and email_id = @email_id;
update train_booking_status tbs
set tbs.seat_booked_status = tbs.seat_booked_status - 1 , tbs.available_seat_status = tbs.available_seat_status + 1 
where tbs.train_id = @trn_id
##select @trn_id, @email_id, @src_station, @destination_st, @PNR
limit 1;
end; &&
delimiter ;

SET FOREIGN_KEY_CHECKS=0;
## USER INPUT STEP
Set @trn_id = 5, @email_id = 'augue.id@in.ca', @pnr = 'Y0FF69' ;
call cancellation (@trn_id, @email_id, @pnr);

select * from cancellations;

truncate table cancellations;
------------------------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `railway_operations_management`.`cancellations` (
  `train_id` INT(11) NOT NULL,
  ##`available_date` VARCHAR(20) NOT NULL,
  `email_id` VARCHAR(30) NOT NULL,
  `PNR` VARCHAR(20) NOT NULL,
  `date_cancelled` DATE NOT NULL,
  `status` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`train_id`, `email_id`, `PNR`),
  CONSTRAINT `rstatus_ibfk_1`
    FOREIGN KEY (`email_id`)
    REFERENCES `railway_operations_management`.`passenger` (`email_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
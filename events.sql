CREATE EVENT IF NOT EXISTS `session_cleaner_event`
ON SCHEDULE
  EVERY 1 DAY_HOUR
  COMMENT 'Clean up sessions at 1 am daily!'
  DO
  DELETE FROM site_activity.sessions;
    
drop event `session_cleaner_event`;

create table Logs
(
train_id int,
Number_of_tickets_booked int,
Time_stamp timestamp
);

alter table Logs
add column log_time timestamp;

DELIMITER $$
CREATE EVENT `logs` 
	ON SCHEDULE EVERY 1 minute 
    ON COMPLETION PRESERVE
	DO BEGIN
    insert into `logs` (train_id, Number_of_tickets_booked, log_time) Select train_id, count(PNR), now() from ticket group by train_id ;
	END; $$
DELIMITER ;

drop event `logs`;

Select * from `logs`;
truncate table `logs`;

set global event_scheduler = ON;

SHOW EVENTS ;

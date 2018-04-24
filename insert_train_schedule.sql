delimiter $$
create trigger for_train_schedule before insert on train_schedule
for each row
begin
 if new.train_id = '' then
 signal sqlstate '45000';
 end if;
end;$$
delimiter ;


INSERT IGNORE INTO train_schedule (train_id,train_name,days_running_on,start_time) VALUES (9,"August Kranti Express","Friday","19:49:15");
INSERT IGNORE INTO train_schedule (train_id,train_name,days_running_on,start_time) VALUES (4,"Deccan Express","Friday","19:54:11");
INSERT IGNORE INTO train_schedule (train_id,train_name,days_running_on,start_time) VALUES (6,"North Express","Friday","10:27:20");
INSERT IGNORE INTO train_schedule (train_id,train_name,days_running_on,start_time) VALUES (3,"Mumbai Mail","Monday","02:07:17");
INSERT IGNORE INTO train_schedule (train_id,train_name,days_running_on,start_time) VALUES (5,"East Express","Monday","17:24:13");
INSERT IGNORE INTO train_schedule (train_id,train_name,days_running_on,start_time) VALUES (1,"Shatabdi Express","Sunday","13:25:51");
INSERT IGNORE INTO train_schedule (train_id,train_name,days_running_on,start_time) VALUES (2,"Chennai Mail","Tuesday","12:18:58");
INSERT IGNORE INTO train_schedule (train_id,train_name,days_running_on,start_time) VALUES (10,"West Express","Monday","05:23:58");
INSERT IGNORE INTO train_schedule (train_id,train_name,days_running_on,start_time) VALUES (8,"Udyan Express","All","16:57:03");
INSERT IGNORE INTO train_schedule (train_id,train_name,days_running_on,start_time) VALUES (7,"Jammu Tawi Express","All","23:58:58");
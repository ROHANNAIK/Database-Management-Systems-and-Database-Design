delimiter $$
create trigger for_train before insert on train
for each row
begin
 if new.train_id = '' then
 signal sqlstate '45000';
 end if;
end;$$
delimiter ;

INSERT IGNORE INTO train (train_id,train_name,train_type,orignating_station,Destination_Station,train_class_type_train_id,train_schedule_train_id) VALUES (10,"North Express","Super Fast","Bangalore","Chruchgate",8,5);
INSERT IGNORE INTO train (train_id,train_name,train_type,orignating_station,Destination_Station,train_class_type_train_id,train_schedule_train_id) VALUES (3,"Jammu Tawi Express","Super Fast","Mumbai","Hyderabad",4,7);
INSERT IGNORE INTO train (train_id,train_name,train_type,orignating_station,Destination_Station,train_class_type_train_id,train_schedule_train_id) VALUES (2,"August Kranti Express","Duronto","Goa","Chruchgate",2,7);
INSERT IGNORE INTO train (train_id,train_name,train_type,orignating_station,Destination_Station,train_class_type_train_id,train_schedule_train_id) VALUES (9,"West Express","Super Fast","Hyderabad","Delhi",6,10);
INSERT IGNORE INTO train (train_id,train_name,train_type,orignating_station,Destination_Station,train_class_type_train_id,train_schedule_train_id) VALUES (8,"East Express","Shatabdi","Hyderabad","Bangalore",7,9);
INSERT IGNORE INTO train (train_id,train_name,train_type,orignating_station,Destination_Station,train_class_type_train_id,train_schedule_train_id) VALUES (6,"Udyan Express","Super Fast","Bandra","Mumbai",10,5);
INSERT IGNORE INTO train (train_id,train_name,train_type,orignating_station,Destination_Station,train_class_type_train_id,train_schedule_train_id) VALUES (7,"Chennai Mail","Duronto","Howrah","Surat",10,10);
INSERT IGNORE INTO train (train_id,train_name,train_type,orignating_station,Destination_Station,train_class_type_train_id,train_schedule_train_id) VALUES (5,"Mumbai Mail","Shatabdi","Bandra","Howrah",4,7);
INSERT IGNORE INTO train (train_id,train_name,train_type,orignating_station,Destination_Station,train_class_type_train_id,train_schedule_train_id) VALUES (4,"Deccan Express","Express","Goa","Punjab",5,3);
INSERT IGNORE INTO train (train_id,train_name,train_type,orignating_station,Destination_Station,train_class_type_train_id,train_schedule_train_id) VALUES (1,"Shatabdi Express","Express","Pune","Hyderabad",10,7);


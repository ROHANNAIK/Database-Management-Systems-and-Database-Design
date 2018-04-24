delimiter $$
create trigger for_train before insert on train
for each row
begin
 if new.train_id = '' then
 signal sqlstate '45000';
 elseif
 new.train_name = '' then
 signal sqlstate '45000';
 elseif
 new.train_type = '' then
 signal sqlstate '45000';
 end if;
end;$$


delimiter $$
create trigger for_train_null before insert on train
for each row
begin
 if new.train_id = '' then
 set new.train_id = NULL;
 elseif
 new.train_name = '' then
 set new.train_name = NULL;
 elseif
 new.train_type = '' then
 set new.train_type = NULL;
 end if;
end;$$



INSERT into train values (10101,'Jan Shatabdi Express','Shatabdi','Mumbai-CST','GOA');
Insert into train values (10102,'Intercity Express','Normal','Mumbai-CST','PUNE');
INSERT into train values (10103,'Shatabdi Express','Shatabdi','Chruchgate','DELHI');
INSERT into train values (10104,'Kamayani Express','Express','Mumbai-CST','GORAKHPUR');
INSERT into train values (10105,'Udyan Express','Super Fast','Mumbai-CST','Bangalore');
INSERT into train values (10106,'Chennai Mail','Express','Chennai','Mumbai-CST');
INSERT into train values (10107,'Mumbai Mail','Super Fast','Mumbai-CST','DELHI');
INSERT into train values (10108,'August Kranti Express','Super Fast','Bandra','Surat');
INSERT into train values (10109,'Deccan Express','Express','Mumbai-CST','PUNE');
INSERT into train values (10110,'Jammu Tawi Express','Shatabdi','Jammu','DELHI');

Select * from train;

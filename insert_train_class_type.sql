delimiter $$
create trigger for_train_class_type before insert on train_class_type
for each row
begin
 if new.train_id = '' then
 signal sqlstate '45000';
 end if;
end;$$
delimiter ;

INSERT IGNORE INTO train_class_type (train_id,class_type1,fare_type1,class_type2,fare_type2,class_type3,fare_type3) VALUES (4,"First Class","100","Business Class","200","Second Class","300");
INSERT IGNORE INTO train_class_type (train_id,class_type1,fare_type1,class_type2,fare_type2,class_type3,fare_type3) VALUES (6,"First Class","100","Business Class","200","Second Class","300");
INSERT IGNORE INTO train_class_type (train_id,class_type1,fare_type1,class_type2,fare_type2,class_type3,fare_type3) VALUES (2,"First Class","100","Business Class","200","Second Class","300");
INSERT IGNORE INTO train_class_type (train_id,class_type1,fare_type1,class_type2,fare_type2,class_type3,fare_type3) VALUES (9,"First Class","100","Business Class","200","Second Class","300");
INSERT IGNORE INTO train_class_type (train_id,class_type1,fare_type1,class_type2,fare_type2,class_type3,fare_type3) VALUES (1,"First Class","100","Business Class","200","Second Class","300");
INSERT IGNORE INTO train_class_type (train_id,class_type1,fare_type1,class_type2,fare_type2,class_type3,fare_type3) VALUES (5,"First Class","100","Business Class","200","Second Class","300");
INSERT IGNORE INTO train_class_type (train_id,class_type1,fare_type1,class_type2,fare_type2,class_type3,fare_type3) VALUES (10,"First Class","100","Business Class","200","Second Class","300");
INSERT IGNORE INTO train_class_type (train_id,class_type1,fare_type1,class_type2,fare_type2,class_type3,fare_type3) VALUES (8,"First Class","100","Business Class","200","Second Class","300");
INSERT IGNORE INTO train_class_type (train_id,class_type1,fare_type1,class_type2,fare_type2,class_type3,fare_type3) VALUES (7,"First Class","100","Business Class","200","Second Class","300");
INSERT IGNORE INTO train_class_type (train_id,class_type1,fare_type1,class_type2,fare_type2,class_type3,fare_type3) VALUES (3,"First Class","100","Business Class","200","Second Class","300");


Select * from train_class_type;
update train_class_type 
set fare_type1 =200
where train_id = 2;


update train_class_type 
set fare_type3 = 700
where train_id = 10;
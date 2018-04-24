delimiter $$
create trigger for_train_repairs before insert on train_repairs
for each row
begin
 if new.repairs_id = '' then
 signal sqlstate '45000';
 end if;
end;$$
delimiter ;
update  train_repairs  
set  train_train_class_type_train_id = 0;



SET FOREIGN_KEY_CHECKS=0;

INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (182,"Rail Align",1265,"North","Brent Mcfadden",1,1,1);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (127,"Rail sleepers replacement",1049,"East","Brent Mcfadden",2,2,2);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (109,"Side Lifting",1731,"North","Grady Lester",3,3,3);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (136,"Side Lifting",1541,"North","Grady Lester",4,4,4);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (141,"Side Lifting",1676,"West","Ralph Charles",5,5,5);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (178,"Wheels replacement",1619,"East","Nicholas Maddox",6,6,6);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (121,"Side Lifting",1802,"West","Burton Joyce",7,7,7);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (185,"Side Lifting",1171,"West","Simon Carroll",8,8,8);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (119,"Painting",1313,"West","Simon Carroll",9,9,9);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (197,"Rail Align",1288,"West","Chaim Carrillo",10,10,10);

/*
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (185,"Side Lifting",1759,"South","Chaim Carrillo",1,5,3);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (162,"Rail Align",1954,"East","Allen Moore",5,5,4);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (142,"Painting",1872,"North","Allen Moore",3,6,9);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (109,"Side Lifting",1421,"West","Allen Moore",8,3,10);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (183,"Wheels replacement",1681,"East","Hayes Farmer",6,6,1);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (157,"Painting",1220,"South","Zachary Bernard",6,5,3);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (174,"Wheels replacement",1480,"East","Zachary Bernard",3,1,7);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (162,"Painting",1502,"East","Zachary Bernard",9,1,2);
INSERT IGNORE INTO train_repairs (repairs_id,repirs_type,repairs_cost,repairs_zone,repairs_supervisor,train_train_id,train_train_class_type_train_id,train_train_schedule_train_id) VALUES (140,"Rail sleepers replacement",1372,"West","Zachary Bernard",3,8,2);
delimiter $$
create trigger for_repairs_supervisor before insert on repairs_supervisor
for each row
begin
 if new.supervisor_id = '' then
 signal sqlstate '45000';
 end if;
end;$$
delimiter ;

INSERT IGNORE INTO repairs_supervisor (supervisor_id,supervisor_name,supervisor_department,Supervisor_zone,department_department_id) VALUES (10,"Brent Mcfadden","Repairs","north","2");
INSERT IGNORE INTO repairs_supervisor (supervisor_id,supervisor_name,supervisor_department,Supervisor_zone,department_department_id) VALUES (4,"Grady Lester","Manufacturing","east","4");
INSERT IGNORE INTO repairs_supervisor (supervisor_id,supervisor_name,supervisor_department,Supervisor_zone,department_department_id) VALUES (1,"Ralph Charles","Repairs","east","3");
INSERT IGNORE INTO repairs_supervisor (supervisor_id,supervisor_name,supervisor_department,Supervisor_zone,department_department_id) VALUES (3,"Nicholas Maddox","Repairs","north","1");
INSERT IGNORE INTO repairs_supervisor (supervisor_id,supervisor_name,supervisor_department,Supervisor_zone,department_department_id) VALUES (5,"Burton Joyce","Repairs","north","3");
INSERT IGNORE INTO repairs_supervisor (supervisor_id,supervisor_name,supervisor_department,Supervisor_zone,department_department_id) VALUES (6,"Simon Carroll","Repairs","west","1");
INSERT IGNORE INTO repairs_supervisor (supervisor_id,supervisor_name,supervisor_department,Supervisor_zone,department_department_id) VALUES (2,"Chaim Carrillo","maintenance","south","3");
INSERT IGNORE INTO repairs_supervisor (supervisor_id,supervisor_name,supervisor_department,Supervisor_zone,department_department_id) VALUES (7,"Allen Moore","Field Services","east","2");
INSERT IGNORE INTO repairs_supervisor (supervisor_id,supervisor_name,supervisor_department,Supervisor_zone,department_department_id) VALUES (8,"Hayes Farmer","maintenance","west","1");
INSERT IGNORE INTO repairs_supervisor (supervisor_id,supervisor_name,supervisor_department,Supervisor_zone,department_department_id) VALUES (9,"Zachary Bernard","Field Services","east","2");
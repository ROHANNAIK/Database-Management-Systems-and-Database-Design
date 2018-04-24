delimiter $$
create trigger for_railway_zones before insert on railway_zones
for each row
begin
 if new.zone_id = '' then
 signal sqlstate '45000';
 end if;
end;$$
delimiter ;


INSERT IGNORE INTO railway_zones (zone_id,zone_name) VALUES (1,"south");
INSERT IGNORE INTO railway_zones (zone_id,zone_name) VALUES (2,"north");
INSERT IGNORE INTO railway_zones (zone_id,zone_name) VALUES (3,"west");
INSERT IGNORE INTO railway_zones (zone_id,zone_name) VALUES (4,"east");
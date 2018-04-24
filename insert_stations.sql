delimiter $$
create trigger for_station before insert on station
for each row
begin
 if new.station_id = '' then
 signal sqlstate '45000';
 end if;
end;$$
delimiter ;

INSERT IGNORE INTO station (station_id,station_name) VALUES (2,"Goa");
INSERT IGNORE INTO station (station_id,station_name) VALUES (6,"Hyderabad");
INSERT IGNORE INTO station (station_id,station_name) VALUES (8,"Punjab");
INSERT IGNORE INTO station (station_id,station_name) VALUES (1,"Chruchgate");
INSERT IGNORE INTO station (station_id,station_name) VALUES (5,"Pune");
INSERT IGNORE INTO station (station_id,station_name) VALUES (4,"Howrah");
INSERT IGNORE INTO station (station_id,station_name) VALUES (3,"Surat");
INSERT IGNORE INTO station (station_id,station_name) VALUES (10,"Bandra");
INSERT IGNORE INTO station (station_id,station_name) VALUES (9,"Bangalore");
INSERT IGNORE INTO station (station_id,station_name) VALUES (11,"Mumbai");
INSERT IGNORE INTO station (station_id,station_name) VALUES (7,"Delhi");

delimiter $$
create trigger for_station before insert on station
for each row
begin
 if new.station_id = '' then	
 set new.station_id = NULL;
 elseif
 new.station_name = '' then
 set new.station_name = NULL;
 end if;
end$$
delimiter ;


INSERT into station values (200101,'Mumbai-CST');
INSERT into station values (200102,'DELHI');
INSERT into station values (200103,'PUNE');
INSERT into station values (200104,'GOA');
INSERT into station values (200105,'Jammu');
INSERT into station values (200106,'GORAKHPUR');
INSERT into station values (200107,'Surat');
INSERT into station values (200108,'Bangalore');
INSERT into station values (200109,'Chruchgate');
INSERT into station values (200110,'Chennai');
INSERT into station values (200111,'Bandra');

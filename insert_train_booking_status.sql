delimiter $$
create trigger for_train_booking_status before insert on train_booking_status
for each row
begin
 if new.train_id = '' then
 signal sqlstate '45000';
 end if;
end;$$
delimiter ;

INSERT IGNORE INTO train_booking_status (train_id,available_date,seat_booked_status,waiting_seat_status,available_seat_status) VALUES (1, date(now()+1),0,0,50);
INSERT IGNORE INTO train_booking_status (train_id,available_date,seat_booked_status,waiting_seat_status,available_seat_status) VALUES (2, date(now()+2),0,0,100);
INSERT IGNORE INTO train_booking_status (train_id,available_date,seat_booked_status,waiting_seat_status,available_seat_status) VALUES (3, date(now()+3),0,0,200);
INSERT IGNORE INTO train_booking_status (train_id,available_date,seat_booked_status,waiting_seat_status,available_seat_status) VALUES (4, date(now()+4),0,0,50);
INSERT IGNORE INTO train_booking_status (train_id,available_date,seat_booked_status,waiting_seat_status,available_seat_status) VALUES (5, date(now()+5),0,0,300);
INSERT IGNORE INTO train_booking_status (train_id,available_date,seat_booked_status,waiting_seat_status,available_seat_status) VALUES (6, date(now()+5),0,0,60);
INSERT IGNORE INTO train_booking_status (train_id,available_date,seat_booked_status,waiting_seat_status,available_seat_status) VALUES (7, date(now()+5),0,0,30);
INSERT IGNORE INTO train_booking_status (train_id,available_date,seat_booked_status,waiting_seat_status,available_seat_status) VALUES (8, date(now()+5),0,0,100);
INSERT IGNORE INTO train_booking_status (train_id,available_date,seat_booked_status,waiting_seat_status,available_seat_status) VALUES (9, date(now()+5),0,0,10);
INSERT IGNORE INTO train_booking_status (train_id,available_date,seat_booked_status,waiting_seat_status,available_seat_status) VALUES (10, date(now()+5),0,0,50);

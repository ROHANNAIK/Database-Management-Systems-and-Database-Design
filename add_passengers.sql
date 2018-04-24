##register to the system

delimiter &&
create procedure add_passengers ( in fname varchar(50), in mnumber int(11), in email varchar(50), in addr varchar(50), in cty varchar(50), in state varchar(50), in gdr varchar(10), in dob date)
begin
declare message_text varchar(50);
insert into passenger (full_name, mobile_number, email_id, address, city, state, gender, dob) select @fname, @mnumber, @email, @addr, @cty, @state, @gdr, @dob;
set @message_text = 'Passenger added successfully';
Select @message_text;
##limit 1
commit;
end; &&
delimiter ;

drop procedure add_passengers;

SET FOREIGN_KEY_CHECKS=0;
set @fname = 'Rohan Naik', @mnumber = 769095180 , @email = 'naikrohan2311@gmail.com', @addr = '75 St.Alphonsus' , @cty = 'Boston', @state = 'MA', @gdr = 'Male', @dob = '1993-11-23' ;
call add_passengers (@fname, @mnumber, @email, @addr, @cty,@state, @gdr, @dob);
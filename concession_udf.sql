delimiter &&
CREATE FUNCTION concession (e_id varchar(50))
RETURNS varchar(50) READS SQL DATA DETERMINISTIC
Begin
 DECLARE stringValue VARCHAR(50);
 declare age int;
 set age = (select ceil(datediff(date(now()),p.dob)/365) from passenger p where p.email_id = e_id);
if age > 25 <  30 then
 SET stringValue = 'Eligible for students concession' ;
 else                       
 SET stringValue = 'NOT Eligible for students concession';
 end if;
RETURN stringValue;
END ;&&
Delimiter ;

drop function concession;

SELECT concession('augue.id@in.ca') as 'Eligibility';
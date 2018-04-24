---------------------------------------------------------------------------------------------------
##user defined function
---------------------------------------------------------------------------------------------------

delimiter &&
CREATE FUNCTION perferformance (zn varchar(50), trn_id int)
RETURNS varchar(50) READS SQL DATA DETERMINISTIC
Begin
 DECLARE stringValue VARCHAR(50);
 declare total_earn int;
 declare total_exp int;
 set total_earn = (Select sum(fare) from fare_per_journey where train_id = trn_id group by train_id);
 Set total_exp = (Select sum(repairs_cost) from  train_repairs_status_tracking where repairs_zone = zn);
if Total_Earn > Total_Exp then
 SET stringValue = CONCAT('Zone',' ', zn, ' ', 'performed GOOD');
 else                       
 SET stringValue = CONCAT('Zone',' ', zn, ' ', 'performed BAD');
 end if;
RETURN stringValue;
END ;&&
Delimiter ;


drop function perferformance;

SELECT perferformance('West',5) as 'Performance index';
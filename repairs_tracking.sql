Select * from train_repairs;

select * from train_repairs_has_railway_zones;

Select * from train_repairs_has_repairs_supervisor;

Select * from railway_zones;

Select * from repairs_supervisor;

Select * from department;




Select t.train_name, r.train_train_id, r.repairs_zone, r.repirs_type, r.repairs_id, r.repairs_supervisor

delimiter &&
create procedure get_repairs_details (in train_id int)
Begin
insert into train_repairs_status_tracking (train_name, repairs_id, repirs_type, repairs_cost, repairs_zone, repairs_supervisor, train_train_id) (Select t.train_name, r.repairs_id, r.repirs_type, r.repairs_cost, r.repairs_zone, r.repairs_supervisor, @train_id from train_repairs r
							  inner join train t
							  where r.train_train_id = @train_id
							  and r.train_train_id = t.train_id) ;
update train_repairs r
set repairs_status = 'Completed'
where r.train_train_id = @train_id;

end;&&
delimiter ; 




show create table train_repairs;

drop procedure get_repairs_details;

set @train_id =5;
call get_repairs_details (@train_id);

Select * from train_repairs_status_tracking;
truncate table train_repairs_status_tracking;


DROP TABLE IF EXISTS `railway_operations_management`.`train_repairs_status_tracking` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `railway_operations_management`.`train_repairs_status_tracking` (
   train_name varchar(20) NOT NULL,
  `repairs_id` INT NOT NULL,
  `repirs_type` VARCHAR(45) NOT NULL,
  `repairs_cost` FLOAT NOT NULL,
  `repairs_zone` VARCHAR(45) NOT NULL,
  `repairs_supervisor` VARCHAR(45) NOT NULL,
  `train_train_id` INT(11) NOT NULL,
  PRIMARY KEY (`repairs_id`),
  CONSTRAINT `fk_train_repairs_tracking`
    FOREIGN KEY (`train_train_id`)
    REFERENCES `railway_operations_management`.`train` (`train_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


DROP TABLE IF EXISTS `railway_operations_management`.`railway_earnings` ;
CREATE TABLE IF NOT EXISTS `railway_operations_management`.`railway_earnings` (
  `zone` VARCHAR(45) ,
  `train_id` INT(11) NOT NULL,
   class_type varchar(50),
   fare int ,
  PRIMARY KEY (`train_id`),
  CONSTRAINT `fk_earnings`
    FOREIGN KEY (`train_id`)
    REFERENCES `railway_operations_management`.`tickets` (`train_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

Select * from railway_earnings;

truncate table railway_earnings;

create view earnings_vs_expense_vw
AS
Select tr.repairs_zone as 'Zone', sum(fp.fare) as 'Total Earnings', sum(tr.repairs_cost) as 'Total Expense'             
from train_repairs_status_tracking tr
inner join fare_per_journey fp
where tr.train_train_id = fp.train_id
group by repairs_zone ;


Select * from earnings_vs_expense_vw;



----------------------------------------------------------------------------------------------------

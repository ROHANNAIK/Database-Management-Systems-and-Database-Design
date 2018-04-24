##creating super admin user

CREATE USER 'Super_Admin' IDENTIFIED BY '1234';

GRANT ALL ON railway_operations_management.* TO 'Super_Admin';
-----------------------------------------------------------------------------------------
CREATE USER 'Passenger' IDENTIFIED BY 'pass';

GRANT Execute ON  PROCEDURE railway_operations_management.add_passengers TO 'Passenger';
GRANT Select,Update,delete ON   railway_operations_management.passenger TO 'Passenger';
GRANT Execute ON  PROCEDURE railway_operations_management.reserve TO 'Passenger';
-----------------------------------------------------------------------------------------
CREATE USER 'Enquiry_User' IDENTIFIED BY '1234';

GRANT Execute ON  PROCEDURE railway_operations_management.get_info TO 'Enquiry_User';
----------------------------------------------------------------------------------------
CREATE USER 'railway_admin' IDENTIFIED BY '1234';

GRANT Execute ON  PROCEDURE railway_operations_management.add_train TO 'railway_admin';
GRANT Execute ON  PROCEDURE railway_operations_management.add_train_schedule TO 'railway_admin';
GRANT Execute ON  PROCEDURE railway_operations_management.calculate_fare TO 'railway_admin';
GRANT Execute ON  PROCEDURE railway_operations_management.get_repairs_details TO 'railway_admin';
GRANT Execute ON  PROCEDURE railway_operations_management.get_trains TO 'railway_admin';
GRANT Execute ON  PROCEDURE railway_operations_management.reserve TO 'railway_admin';
----------------------------------------------------------------------------------------
flush privileges;

drop user Super_Admin;

SELECT User FROM mysql.user;

ALTER USER 'root'@'localhost' IDENTIFIED BY '1234';
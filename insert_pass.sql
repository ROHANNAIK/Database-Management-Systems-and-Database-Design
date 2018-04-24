delimiter $$
create trigger for_passenger before insert on passenger
for each row
begin
 if new.email_id = '' then
 signal sqlstate '45000';
 end if;
end;$$
delimiter ;

INSERT IGNORE INTO Passenger (full_name,mobile_number,email_id,address,city,state,gender,dob) VALUES ("Gage Harrell","4141663797","sed.sapien@liberoDonec.net","Ap #863-8574 Et, Street","Opgrimbie","L.","Unknown","2018-09-01");
INSERT IGNORE INTO Passenger (full_name,mobile_number,email_id,address,city,state,gender,dob) VALUES ("Aladdin Nixon","8290712804","mollis@justofaucibuslectus.com","379 Diam St.","Lo Prado","Metropolitana de Santiago","Unknown","2017-06-03");
INSERT IGNORE INTO Passenger (full_name,mobile_number,email_id,address,city,state,gender,dob) VALUES ("Sylvester Neal","8978346012","augue@Donectempor.com","Ap #735-3277 Mollis St.","Des Moines","Iowa","Unknown","2017-07-03");
INSERT IGNORE INTO Passenger (full_name,mobile_number,email_id,address,city,state,gender,dob) VALUES ("Allistair Jones","9663088036","augue.id@in.ca","9081 Magna Av.","Palma de Mallorca","BA","Unknown","2018-01-26");
INSERT IGNORE INTO Passenger (full_name,mobile_number,email_id,address,city,state,gender,dob) VALUES ("Beau Kane","2664202167","ligula.Donec.luctus@porttitortellusnon.co.uk","9561 Ultricies Rd.","Saint-Étienne-du-Rouvray","Haute-Normandie","Unknown","2017-01-17");
INSERT IGNORE INTO Passenger (full_name,mobile_number,email_id,address,city,state,gender,dob) VALUES ("Cyrus Mosley","9662214547","diam.lorem.auctor@magna.org","P.O. Box 700, 2183 Eget Av.","Täby","AB","Male","2017-08-18");
INSERT IGNORE INTO Passenger (full_name,mobile_number,email_id,address,city,state,gender,dob) VALUES ("Tucker Pitts","9160697226","ornare.egestas@enimEtiamimperdiet.edu","531-766 In St.","Timaru","South Island","Unknown","2017-05-18");
INSERT IGNORE INTO Passenger (full_name,mobile_number,email_id,address,city,state,gender,dob) VALUES ("Francis Crawford","1240196722","tellus.Aenean.egestas@justonecante.net","3876 Auctor St.","Galway","C","Unknown","2018-05-26");
INSERT IGNORE INTO Passenger (full_name,mobile_number,email_id,address,city,state,gender,dob) VALUES ("Caldwell Landry","5992417078","Integer.urna@hendreritidante.com","715-6919 Facilisis. Avenue","San José de Maipo","RM","Male","2018-09-09");
INSERT IGNORE INTO Passenger (full_name,mobile_number,email_id,address,city,state,gender,dob) VALUES ("Amos Lawson","4936737078","urna@euismodest.co.uk","P.O. Box 517, 6287 Morbi Road","Alcobendas","Madrid","Female","2018-10-26");


Select * from passenger;
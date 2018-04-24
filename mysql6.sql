----------------------------------------------------------------------------------------------
#Table - Train containing Train details
-----------------------------------------------------------------------------------------------
create table Train
(
train_id int not null,
train_name varchar(50) not null,
train_type varchar(50) not null,
orignating_station varchar(50),
destination_station varchar(50),
primary key(train_id)
);

----------------------------------------------------------------------------------------------
#Table - Station containing station details
----------------------------------------------------------------------------------------------
create table station
(
station_id int not null,
station_name varchar(50),
primary key(station_id)
);

----------------------------------------------------------------------------------------------
#Table - Route containing route details
----------------------------------------------------------------------------------------------
create table route
(
train_id int not null,
stop_id int not null,
station_id varchar(10) not null,
arrival_time time not null,
depart_time time not null,
source_distance int not null,
primary key (train_id,stop_id),
foreign key (train_id) references train(train_id) on update cascade on delete cascade
);

-----------------------------------------------------------------------------------------------
#Table - Train_Class_type containing class types and fare associated with each class types
-----------------------------------------------------------------------------------------------
create table train_class_type
(
train_id int not null,
class_type1 varchar(10) not null,
fare_type1 float not null,
class_type2 varchar(10) not null,
fare_type2 float not null,
class_type3 varchar(10) not null,
fare_type3 float not null,
primary key (train_id)
);

set foreign_key_checks=0;

--------------------------------------------------------------------------------------------------
#Table - Train_Schedule containing details of schedule of each train 
--------------------------------------------------------------------------------------------------
create table train_schedule
(
train_id int not null,
train_name varchar(50) not null,
days_running_on varchar(10) not null,
start_time time not null,
primary key (train_id)
);

--------------------------------------------------------------------------------------------------
#Table - Passenger containing details of passengers booking the tickets
--------------------------------------------------------------------------------------------------
create table Passenger
(
full_name varchar(50) not null,
mobile_number int not null,
email_id varchar(50) not null,
Address varchar(50) not null,
city varchar(50) not null,
state varchar(50) not null,
Gender varchar(10) not null,
dob date not null,
check(GENDER in ('Male', 'Female', 'Unknown')),
primary key (email_id)
);

--------------------------------------------------------------------------------------------------
#Table - Train_booking_status containing details of train booking status
--------------------------------------------------------------------------------------------------
create table train_booking_status
(
train_id int not null,
available_date varchar(20) not null,
seat_booked_status int,
waiting_seat_status int,
available_seat_status int,
primary key (train_id,available_date),
foreign key (train_id) references train(train_id) on update cascade on delete cascade
);


--------------------------------------------------------------------------------------------------
#Table - reservation_status	 containing details of schedule of each train 
--------------------------------------------------------------------------------------------------
create table reservation_status
(
train_id int not null,
available_date varchar(20) not null,
email_id varchar(30) not null,
PNR varchar(20) not null,
reservation_date date not null,
reservation_status varchar(10),
foreign key (train_id,available_date) references train_booking_status(train_id,available_date) on update cascade on delete cascade,
foreign key (email_id) references passenger(email_id) on update cascade on delete cascade,
primary key (train_id,available_date,email_id,PNR)
);

--------------------------------------------------------------------------------------------------
#Table - ticket contains details of schedule on a ticket
--------------------------------------------------------------------------------------------------
create table ticket
(
PNR varchar(20) not null,
source_station_name varchar(20) not null,
destination_station_name varchar(20) not null,
ticket_status varchar(10) not null,
train_id int not null,
foreign key (train_id) references Train (train_id) on update cascade on delete cascade,
primary key (PNR)
);

--------------------------------------------------------------------------------------------------
#Table - passenger_track_using_pnr contains details for each booking made
--------------------------------------------------------------------------------------------------
create table passenger_track_using_PNR
(
PNR varchar(20) not null,
seat_number int not null,
coach_number varchar(5) not null,
Passenger_name varchar(20) not null,
Gender varchar(10) 	not null,
train_id int not null,
foreign key (train_id) references train(train_id) on update cascade on delete cascade,
primary key(PNR, seat_number)
);

--------------------------------------------------------------------------------------------------
#Table - station_on_route contains details of stations present on a particular route 
--------------------------------------------------------------------------------------------------
create table station_on_route
(
train_id int not null,
station_id varchar(20) not null,
stop_number int not null,
primary key (Train_id, station_id)
);


select now()


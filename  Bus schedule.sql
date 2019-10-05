
Create database Create_db;

Use Create_db;

CREATE TABLE create_tables (

Id int auto_increment,
Created_date datetime
Default current_timestamp,
Bus_origin varchar(255) not null unique,
Bus_destination varchar(255) not null unique,
Trip_duration int not null,
Check(Trip_duration >= 5),
Primary key(Id)

);


Alter Table create_tables
Add COLUMN bus_comment varchar(255) AFTER Trip_duration;

Create table if not exists Bus_schedule_insert  
(
Id int auto_increment,
Created_date datetime
DEFAULT current_timestamp,
Bus_origin varchar(255) not null unique,
Bus_destination varchar(255) not null unique,
Trip_duration int not null,
Check(Trip_duration >= 5),
bus_comment varchar(255),
Primary Key(Id)

);

Insert into  Bus_schedule_insert
(
Bus_origin,
Bus_destination,
Trip_duration,
bus_comment
 )
 
 Values

("Helsinki", "Korso", 65, "delayed"),
("Kamppi", "Pori", 70, "on time"),
("Lahti", "Hakaniemi", 30, "delayed"),
("Oulu", "Kapyla", 35, "cancelled"),
("Vousaari", "Itakeskus", 15, "on time"),
("Matinkyla", "Isoomena", 15, "delayed"),
("Leppavaara", "Kera", 10, "cancelled"),
("kaisaniemi", "Olari", 45, "cancelled");


Create table Bus_schedule_not_null
(

Id int auto_increment,
Created_date datetime
DEFAULT current_timestamp,
Bus_origin varchar(255) not null unique,
Bus_destination varchar(255) not null unique,
Trip_duration int not null,
Check(Trip_duration >= 5),
bus_comment varchar(255) not null,
Primary Key(Id)

);

Insert into  Bus_schedule_not_null
(
Bus_origin,
Bus_destination,
Trip_duration,
bus_comment

 )
 
 Values

("", "Korso", 65, "delayed"),
("Kamppi", "Pori", 70, "on time"),
("Lahti", "Hakaniemi", 30, "delayed"),
("Oulu", "Kapyla", 35, "cancelled"),
("Vousaari", "Itakeskus", 35, "on time"),
("Matinkyla", "Isoomena", 15, "delayed"),
("Leppavaara", "", 10, "cancelled"),
("kaisaniemi", "Olari", 45, "cancelled");


create table Bus_schedule_check
 (

Id int auto_increment,
Created_date datetime
DEFAULT current_timestamp,
Bus_origin varchar(255) not null unique,
Bus_destination varchar(255) not null unique,
Trip_duration int,
Check(Trip_duration >= 5),
bus_comment varchar(255) not null,
Primary Key(Id)

);

Insert into  Bus_schedule_check
(
Bus_origin,
Bus_destination,
Trip_duration,
bus_comment
 )
 
 Values

("Helsinki", "Korso", 65, "delayed"),
("Kamppi", "Pori", 70, "on time"),
("Lahti", "Hakaniemi", 30, "delayed"),
("Oulu", "Kapyla", 35, "cancelled"),
("Vousaari", "Itakeskus", 15, "on time"),
("Matinkyla", "Isoomena", 15, "delayed"),
("Leppavaara", "Kera", 10, "cancelled"),
("kaisaniemi", "Olari", 4, "cancelled");

create table Bus_schedule_unique
 (

Id int auto_increment,
Created_date datetime
DEFAULT current_timestamp,
Bus_origin varchar(255) not null unique,
Bus_destination varchar(255) not null unique,
Trip_duration int,
Check(Trip_duration >= 5),
bus_comment varchar(255) not null,
Primary Key(Id)

);

Insert into  Bus_schedule_unique
(
Bus_origin,
Bus_destination,
Trip_duration,
bus_comment
 )
 
Values

("Helsinki", "Korso", 65, "delayed"),
("Kamppi", "Pori", 70, "on time"),
("Lahti", "Hakaniemi", 30, "delayed"),
("Oulu", "Kapyla", 35, "cancelled"),
("Vousaari", "Itakeskus", 15, "on time"),
("Matinkyla", "Isoomena", 15, "delayed"),
("Kapyla", "Kera", 10, "cancelled"),
("kaisaniemi", "Olari", 45, "cancelled");














 
 
 

 
 
 
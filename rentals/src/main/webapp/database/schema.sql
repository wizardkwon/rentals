
create database rentals;
use rentals;
create table venue (
venue_id int(4) PRIMARY KEY,
venue_name VARCHAR(20) not null,
date_time varchar(30) not null
);

create table vehicle (
vehicle_id int(4) PRIMARY KEY,
venue_id int(4) not null,
hour_rate VARCHAR(10) not null,
date_time varchar(30) not null,
FOREIGN KEY(venue_id) REFERENCES venue(venue_id)
);

create table `client`(
client_id VARCHAR(20) PRIMARY KEY,
client_password VARCHAR(20) NOT NULL,
client_name VARCHAR(20) NOT NULL,
date_time varchar(30) not null
);

create table booking (
vehicle_id int(4),
venue_id int(4),
client_id VARCHAR(20),
reg_date date not null,
date_time date not null,
hour VARCHAR(10) NOT NULL,
total_payment VARCHAR(10) NOT NULL,
PRIMARY KEY (vehicle_id, venue_id,client_id,date_time),
FOREIGN KEY(venue_id) REFERENCES venue(venue_id),
FOREIGN KEY(vehicle_id) REFERENCES vehicle(vehicle_id),
FOREIGN KEY(client_id) REFERENCES `client`(client_id)
);

create table board(
post_no int(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
client_id VARCHAR(20) not NULL,
post_title VARCHAR(20) NOT NULL,
contents VARCHAR(5000) NOT NULL,
date_time varchar(30) not null,
FOREIGN KEY(client_id) REFERENCES `client`(client_id)
);
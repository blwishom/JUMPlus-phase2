-- # CREATE DATABASE if not exists little_league; 
-- USE little_league;
-- CREATE TABLE if not exists Address (
-- id INT auto_increment,
-- street VARCHAR(255),
-- city VARCHAR(255),
-- state VARCHAR(255),
-- zip CHAR(5),
-- PRIMARY KEY (id)
-- );

-- CREATE TABLE if not exists School (
-- id INT auto_increment,
-- address_id INT,
-- PRIMARY KEY (id),
-- FOREIGN KEY (address_id) references Address(id)
-- );

-- CREATE TABLE if not exists Season (
-- id INT auto_increment,
-- start_date DATE,
-- end_date DATE,
-- PRIMARY KEY (id)
-- );

-- CREATE TABLE if not exists Team (
-- id INT auto_increment,
-- team_name VARCHAR(255),
-- PRIMARY KEY (id)
-- );

-- CREATE TABLE if not exists Player (
-- id INT auto_increment,
-- first_name VARCHAR(255),
-- last_name VARCHAR(255),
-- dob DATE,
-- player_number TINYINT(5),
-- address_id INT,
-- school_id INT,
-- PRIMARY KEY (id),
-- FOREIGN KEY(address_id) references Address(id),
-- FOREIGN KEY (school_id) references School(id)
-- );

-- CREATE TABLE if not exists Guardian (
-- id INT auto_increment,
-- first_name VARCHAR(255),
-- last_name VARCHAR(255),
-- phone CHAR(10),
-- email VARCHAR(255),
-- PRIMARY KEY (id)
-- );

-- CREATE TABLE if not exists Player_Guardian (
-- player_id INT,
-- guardian_id INT,
-- PRIMARY KEY (player_id, guardian_id),
-- FOREIGN KEY (player_id) references Player(id),
-- FOREIGN KEY (guardian_id) references Guardian(id)
-- );

-- CREATE TABLE if not exists Registration (
-- id INT auto_increment,
-- player_id INT,
-- season_team_id INT,
-- PRIMARY KEY (id),
-- FOREIGN KEY (player_id) references Player(id),
-- FOREIGN KEY (season_team_id) references Season_Team(id)
-- );

-- CREATE TABLE if not exists Season_Team (
-- id INT auto_increment,
-- season_id INT,
-- team_id INT,
-- coach_id INT,
-- PRIMARY KEY (id),
-- FOREIGN KEY (team_id) references Team(id),
-- FOREIGN KEY (coach_id) references Coach(id)
-- );

-- CREATE TABLE if not exists Coach (
-- id INT auto_increment,
-- first_name VARCHAR(255),
-- last_name VARCHAR(255),
-- phone CHAR(10),
-- email VARCHAR(255),
-- PRIMARY KEY (id)
-- );

-- SELECT * FROM player;

-- use little_league;

-- insert into address values(1, '123 Wallace Ln', 'Polk', 'California', '54321');
-- insert into address values(2, '45 Renassaince Way', 'Bank', 'California', '12345');
-- insert into coach values(1, 'Willie', 'Beamin', 3334445555, 'willieb@gmail.com');
-- insert into coach values(2, 'Archie', 'Bunker', 2221113333, 'archie.bunker@gmail.com');
-- insert into guardian values(1, 'John', 'Johnson', 5554443333, 'jjohnson@email.com');
-- insert into guardian values(2, 'Wendy', 'Jackson', 123456789, 'wendy.jackson@gmail.com');
-- insert into player values(1, 'John', 'Johnson Jr.', '2005-03-11', 5, 1, 1);
-- insert into player values(2, 'Paul', 'Wall', '2005-05-19', 3, 1, 1);
-- insert into school values(1, 1);
-- insert into season values(1, '2023-08-15', '2023-11-28');
-- insert into season_team values(1, 1, 1, 1);
-- insert into team values(1, 'East Bay Jaguars');
-- insert into team values(2, 'East Bay 49ers');
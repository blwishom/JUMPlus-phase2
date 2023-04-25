-- CREATE LITTLE LEAGUE DB AND TABLES

--CREATE DATABASE if not exists little_league;
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

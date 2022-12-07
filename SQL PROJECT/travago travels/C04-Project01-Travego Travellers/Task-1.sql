CREATE SCHEMA `travego` DEFAULT CHARACTER SET utf8mb4 ;
use travego;
CREATE TABLE `travego`.`passengers` (
  `Passenger_id` INT UNSIGNED NOT NULL,
  `Passenger_name` VARCHAR(20) NULL,
  `Category` VARCHAR(20) NULL,
  `Gender` VARCHAR(20) NULL,
  `Boarding_City` VARCHAR(20) NULL,
  `Destination_City` VARCHAR(20) NULL,
  `Distance` INT NULL,
  `Bus_Type` VARCHAR(20) NULL,
  PRIMARY KEY (`Passenger_id`),
  UNIQUE INDEX `passenger_id_UNIQUE` (`Passenger_id` ASC) VISIBLE)
COMMENT = 'passengers who travelled through sitting or sleeper bus_type';

CREATE TABLE `travego`.`price` (
  `id` INT UNSIGNED NOT NULL,
  `Bus_type` VARCHAR(20) NULL,
  `Distance` INT NULL,
  `Price` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


INSERT INTO passengers (Passenger_id, Passenger_name, Category, Gender , Boarding_City , Destination_City   , Distance   , Bus_Type) VALUES (1,"Sejal","AC","F", "Bengaluru", "Chennai", 350,"Sleeper");
INSERT INTO passengers (Passenger_id, Passenger_name, Category, Gender , Boarding_City , Destination_City   , Distance   , Bus_Type) VALUES (2,"Anmol","Non-AC","M","Mumbai", "Hyderabad",700, "Sitting");
INSERT INTO passengers (Passenger_id, Passenger_name, Category, Gender , Boarding_City , Destination_City   , Distance   , Bus_Type) VALUES (3, "Pallavi", "AC", "F", "Panaji", "Bengaluru",600, "Sleeper");
INSERT INTO passengers (Passenger_id, Passenger_name, Category, Gender , Boarding_City , Destination_City   , Distance   , Bus_Type) VALUES (4, "Khusboo", "AC", "F", "Chennai", "Mumbai",1500, "Sleeper");
INSERT INTO passengers (Passenger_id, Passenger_name, Category, Gender , Boarding_City , Destination_City   , Distance   , Bus_Type) VALUES (5, "Udit", "Non-AC", "M", "Trivandrum","Panaji",1000, "Sleeper");
INSERT INTO passengers (Passenger_id, Passenger_name, Category, Gender , Boarding_City , Destination_City   , Distance   , Bus_Type) VALUES (6, "Ankur", "AC", "M", "Nagpur", "Hyderabad",500, "Sitting");
INSERT INTO passengers (Passenger_id, Passenger_name, Category, Gender , Boarding_City , Destination_City   , Distance   , Bus_Type) VALUES (7, "Hemant", "Non-AC", "M", "Panaji", "Mumbai ",700, "Sleeper");
INSERT INTO passengers (Passenger_id, Passenger_name, Category, Gender , Boarding_City , Destination_City   , Distance   , Bus_Type) VALUES (8, "Manish", "Non-AC", "M", "Hyderabad", "Bengaluru",500, "Sitting");
INSERT INTO passengers (Passenger_id, Passenger_name, Category, Gender , Boarding_City , Destination_City   , Distance   , Bus_Type) VALUES (9, "Piyush", "AC", "M", "Pune", "Nagpur",700, "Sitting");
select * from passengers;

INSERT INTO price (id, Bus_type   , Distance, Price) VALUES (1, "Sleeper",350,770);
INSERT INTO price (id, Bus_type   , Distance, Price) VALUES (2, "Sleeper",500,1100);
INSERT INTO price (id, Bus_type   , Distance, Price) VALUES (3, "Sleeper",600,1320);
INSERT INTO price (id, Bus_type   , Distance, Price) VALUES (4, "Sleeper",700,1540);
INSERT INTO price (id, Bus_type   , Distance, Price) VALUES (5, "Sleeper",1000,2200);
INSERT INTO price (id, Bus_type   , Distance, Price) VALUES (6, "Sleeper",1200,2640);
INSERT INTO price (id, Bus_type   , Distance, Price) VALUES (7, "Sleeper",1500,2700);
INSERT INTO price (id, Bus_type   , Distance, Price) VALUES (8, "Sitting",500,620);
INSERT INTO price (id, Bus_type   , Distance, Price) VALUES (9, "Sitting",600,744);
INSERT INTO price (id, Bus_type   , Distance, Price) VALUES (10, "Sitting",700,868);
INSERT INTO price (id, Bus_type   , Distance, Price) VALUES (11, "Sitting",1000,1240);
INSERT INTO price (id, Bus_type   , Distance, Price) VALUES (12, "Sitting",1200,1488);
INSERT INTO price (id, Bus_type   , Distance, Price) VALUES (13, "Sitting",1500,1860);

select* from passengers;
select*from price;



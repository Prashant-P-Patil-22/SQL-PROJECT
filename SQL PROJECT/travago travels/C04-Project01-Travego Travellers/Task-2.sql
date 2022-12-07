
#a.How many females and how many male passengers traveled a minimum distance of 600 KMs?
select Gender,count(*) from Passengers where Distance <= 600 group by Gender;

#b Find the minimum ticket price of a Sleeper Bus.
select* from  price;
SELECT min(price),distance,bus_type from price where bus_type='sleeper';

# c.Select passenger names whose names start with character 'S' 
select passenger_name from passengers having passenger_name like 's%';

#d.Calculate price charged for each passenger displaying Passenger name, Boarding City, Destination City, Bus_Type, Price in the output
select passenger_name,boarding_city,destination_city,price.bus_type,price.price
from passengers join
price
on price.bus_type= passengers.bus_type  and price.distance=passengers.distance;

#e.What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus?  
select s.passenger_name, p.price
from passengers as s
inner join price as p
on s.bus_type=p.bus_type and s.distance = p.distance and s.distance<=1000 and s.passenger_name like '%s%';	

#f.What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?
-- check for pallavi to travel from bangalore to panaji is equal to panaji to bengaluru which is 600KM distance
select * from passengers where passenger_name = 'pallavi';

-- prices for sitting and sleeper based on 600KMs 
select Bus_type, price from price where distance = (select distance from passengers where passenger_name = 'Pallavi');

#g.List the distances from the "Passenger" table which are unique (non-repeated distances) in descending order. 
select distinct distance from passengers order by distance desc;

# h.Display the passenger name and percentage of distance traveled by that passenger from the total distance traveled by all passengers without using user variables 
select passenger_name, round((distance/(select sum(distance) from passengers))*100,2) as 'percentage' from passengers;


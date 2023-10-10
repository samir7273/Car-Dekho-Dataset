create schema cars;
use cars;

# Read Data
select * from car;

# To get a count/length of dataset.
select count(name) from car;
select count(*) from car;

# Car which has maximum selling price.
select max(selling_price) from car;

# Car which has minimun selling price.
select min(selling_price) from car;

# Average of car selling price.
select avg(selling_price) from car;

# Car which has maximum milage.
SELECT name, mileage FROM car
WHERE mileage = (SELECT MAX(mileage) FROM car) order by mileage desc limit 1;

# Car which has manimum milage.
SELECT name, mileage FROM car
WHERE mileage = (SELECT MIN(mileage) FROM car) order by mileage asc limit 1;

# check data where name and mileage is null.
SELECT 
    SUM(CASE WHEN name IS NULL THEN 1 ELSE 0 END) +
    SUM(CASE WHEN mileage IS NULL THEN 1 ELSE 0 END) 
    AS total_null_count
FROM car;

# Checking all the Distinct year.
select distinct(year) from car;

# Checking all the Distinct fule type.
select distinct(fuel) from car;

# Checking all the Distinct seller_type.
select distinct(seller_type) from car;

select * from car;
# Car which has maximum seats.
select name,seats from car where(select max(seats) from car) order by seats desc limit 1;

# How many cars will be available in 2023.
select count(*) from car where year=2023;
select count(*) from car where year=2023;

#How many cars will be available in 2020,2021,2022.
select count(*) from car where year in (2020,2021,2022);
select count(*) from car where year in (2020,2021,2022) group by year;

# Print the total of all cars by year, i dont want to see all details.
select year,count(*) from car group by year;

# How many diesel car will be there in 2020.
select count(*) from car where fuel='Diesel' and year= 2020;

# How many Petrol car will be there in 2020.
select count(*) from car where fuel='Petrol' and year= 2020;

# Print all the fuel car for all the years.
select year,count(*) from car where fuel='Petrol' group by year;
select year,count(*) from car where fuel='Diesel' group by year;
select year,count(*) from car where fuel='CNG' group by year;

# Which year have more than 100 cars.
select year,count(*) from car group by year having count(*)>100;
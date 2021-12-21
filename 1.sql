show databases;
use yulchiko;

show tables;
select * from cars;
select * from cars where year > 2000;
select * from cars where year < 2015;
select * from cars where year in (2008, 2009, 2010);
select * from cars where year not in (2008, 2009, 2010);
select * from cars where price = year;

select * from cars  model where year > 2014;
select * from cars limit 5;
select * from cars order by id desc limit 5;
select avg(price) from cars group by model = 'KIA';
select avg(price) from cars group by model;

select model, count(model) as 'amount' from cars group by model;

select * from cars where model like '_a%a_';

select * from cars where length(model) > 8;

select * from cars where model = 'bmw' and year > 2014;
select * from cars where model = 'audi' and year < 2014;
select count(model) as count, model as car from cars group by model order by count desc limit 1 ;

# select (select avg(price) from cars) as 'avgPriceAll',
#        select model, max(price) from cars
#        );
select (select avg(price) from cars) as 'avgAllCars',
       (select max(price) from cars where price > avgAllCars) as 'max';

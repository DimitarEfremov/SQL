use soft_uni;

-- task1

select first_name, last_name from employees
where substring(first_name, 1, 2) = 'Sa';

select first_name, last_name from employees
where lower(first_name) like 'sa%';

-- task2

select first_name, last_name from employees
where locate('ei', last_name) > 0;

select first_name, last_name from employees
where lower(last_name) like '%ei%';

-- task3

select first_name from employees
where year(hire_date) between 1995 and 2005
and 
department_id in (3,10)
order by employee_id;

-- task 4
select first_name, last_name from employees
where job_title not like '%engineer%'
order by employee_id;

-- task 5

select `name` from  towns
where length(`name`) in (5, 6)
order by `name` asc;

-- task 6
select * from  towns
where `name` like 'M%' or `name` like 'K%' or `name` like 'B%' or `name` like 'E%'
order by `name` asc;

select * from  towns
where lower(left (`name`, 1)) in ('m', 'k', 'b' , 'e')
order by `name` asc;

select * from  towns
where name regexp '^[MKBE]'
order by `name` asc;

-- task 7

select * from  towns
where `name` not like 'R%' and `name` not like 'B%' and `name` not like 'D%'
order by `name` asc;

select * from  towns
where lower(left (`name`, 1)) not in ('r', 'b', 'd')
order by `name` asc;

-- task 8

CREATE VIEW v_employees_hired_after_2000 AS
select first_name, last_name from  employees
where year(hire_date) > 2000;

select * from v_employees_hired_after_2000;

-- task 9

select first_name, last_name from  employees
where length(last_name) = 5;

-- task 10

use geography;

select country_name, iso_code from countries
where length( lower(country_name)) - length( replace (lower(country_name), 'a', '') ) > 2
order by iso_code asc;

-- task 11

SELECT 
    peak_name, river_name, lower(concat(p.peak_name, right(r.river_name, length(river_name)-1))) as mix
FROM
    rivers as r,
    peaks as p
    where upper(right(p.peak_name, 1)) = upper(left(r.river_name, 1))
    order by mix asc;
    
    -- task 12
    
    use diablo;
    
    select `name`, date_format(`start`,'%Y-%m-%d') as `start` from games
    where year(`start`) in (2011,2012)
    order by `start`
    limit 50;
    
    -- task 13
    
    select 
    user_name, 
    substring_index(email, '@', -1) as `email provider`
    from users
    order by `email provider`, user_name;
    
    -- task 14
    
    select 
    user_name, ip_address from users
    where ip_address like '___.1%.%.___'
    order by user_name;
    
    -- task 15
    
   SELECT 
    name AS games,
    CASE
        WHEN HOUR(start) BETWEEN 0 AND 11 THEN 'Morning'
        WHEN HOUR(start) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS 'Part of the Day',
    CASE
        WHEN duration <= 3 THEN 'Extra Short'
        WHEN duration BETWEEN 4 AND 6 THEN 'Short'
        WHEN duration BETWEEN 7 AND 10 THEN 'Long'
        ELSE 'Extra Long'
    END AS 'Duration'
FROM
    games;
    
    -- task 16
    
    use orders;
    
    select product_name, order_date,
    date_add(order_date, interval 3 day ) as pay_due, 
    date_add(order_date, interval 1 month ) as deliver_due 
    from orders;
    
    
    
    
    
    
    
    
    
    
    








							 



























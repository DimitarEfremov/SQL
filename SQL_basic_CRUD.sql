use soft_uni;

-- task 1

SELECT * FROM departments
ORDER BY department_id;

-- task 2

SELECT `name` FROM departments
ORDER BY department_id;

-- task 3

SELECT first_name, last_name, salary FROM employees
ORDER BY employee_id asc;

-- task 4

SELECT first_name, middle_name, last_name FROM employees
ORDER BY employee_id asc;

-- task 5

SELECT concat(first_name, '.', last_name, '@softuni.bg') as 'full_email_address' FROM employees
ORDER BY employee_id asc;

-- task 6

SELECT DISTINCT salary FROM employees
ORDER BY salary asc;

-- task 7

SELECT * FROM employees
where job_title = 'Sales Representative'
order by employee_id;

-- task 8 

SELECT first_name, last_name, job_title FROM employees
where salary between 20000 and 30000
order by employee_id;

-- task 9

SELECT concat_ws(' ', first_name, middle_name, last_name) as 'Full Name' FROM employees
where salary = 25000 or salary = 14000 or salary = 12500  or salary = 23600
order by employee_id;

-- task 10

SELECT first_name, last_name FROM employees
where manager_id is null
order by employee_id;

-- task 11

SELECT first_name, last_name, salary FROM employees
where salary > 50000
order by salary desc;

-- task 12

SELECT first_name, last_name FROM employees
order by salary desc
limit 5;

-- task 13

SELECT first_name, last_name FROM employees
where department_id != 4;

-- task 14

select * from employees
order by salary desc,
first_name asc,
last_name desc,
middle_name asc;

-- task 15

create view v_employees_salaries as
select first_name, last_name, salary from employees;

select * from v_employees_salaries;

-- task 16

create view v_employees_job_titles as
select concat_ws(' ', first_name, middle_name, last_name ) as 'full name',job_title  from employees;

-- task 17

select distinct job_title  from employees
order by job_title asc;

-- task 18

select * from projects
order by start_date,
name
limit 10;

-- task 19

select first_name, last_name, hire_date from employees
order by hire_date desc
limit 7;

-- task 20

update employees as e
set salary = salary * 1.12
where department_id in (1,2,4,11);

select salary from employees;

-- task 21

use geography;

select peak_name from peaks
order by peak_name asc;

-- task 22

select country_name, population from countries
where continent_code = 'EU'
order by population desc,
country_name asc
limit 30;

-- task 23

select country_name, country_code, if(currency_code = 'EUR', 'Euro', 'Not Euro') as 'currency' from countries
order by country_name;

-- task 24

use diablo;

select name from characters
order by name asc;


































































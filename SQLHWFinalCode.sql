--1.
select employees.emp_no, employees.last_name, employees.first_name, salaries.salary
from employees 
left join salaries
on (employees.emp_no = salaries.emp_no)
order by employees.emp_no;
--2.
select *
from employees
where hire_date between '1986-01-01' and '1986-12-31' 

--3.
select 
departments.dept_name,
employees.first_name,
employees.last_name,
dept_manager.dept_no,
dept_manager.emp_no,
dept_manager.from_date,
dept_manager.to_date
from dept_manager
	inner join departments 
	on (dept_manager.dept_no = departments.dept_no)
	inner join employees
	on(dept_manager.emp_no = employees.emp_no);

--4.
select
employees.first_name,
employees.last_name,
dept_employees.emp_no,
dept_employees.dept_no,
departments.dept_name
from employees
	inner join dept_employees
	on(employees.emp_no = dept_employees.emp_no)
	inner join departments
	on (dept_employees.dept_no = departments.dept_no);
--5.
select first_name, last_name
from employees
where first_name = 'Hercules' and last_name like 'B%';

--6.
select
employees.first_name,
employees.last_name,
dept_employees.emp_no,
departments.dept_name
from employees
	inner join dept_employees
	on (employees.emp_no = dept_employees.emp_no)
	inner join departments
	on (dept_employees.dept_no = departments.dept_no)
	where dept_name = 'Sales';
	
--7.

select
employees.first_name,
employees.last_name,
dept_employees.emp_no,
departments.dept_name
from employees
	inner join dept_employees
	on (employees.emp_no = dept_employees.emp_no)
	inner join departments
	on (dept_employees.dept_no = departments.dept_no)
	where dept_name in ('Sales', 'Development');

--8.
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name);

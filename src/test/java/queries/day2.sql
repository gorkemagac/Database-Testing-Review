select JOB_ID from EMPLOYEES;

select JOB_ID from EMPLOYEES
group by JOB_ID;

select distinct JOB_ID from EMPLOYEES;

select JOB_ID, count(FIRST_NAME) from EMPLOYEES
group by JOB_ID;

select JOB_ID, sum(SALARY) from EMPLOYEES
group by JOB_ID;

select JOB_ID, avg(SALARY) from EMPLOYEES group by JOB_ID;

select avg(salary), JOB_ID from EMPLOYEES group by JOB_ID having avg(SALARY)>8000;

select DEPARTMENT_ID, count(FIRST_NAME) from EMPLOYEES group by DEPARTMENT_ID order by count(FIRST_NAME);

select FIRST_NAME from EMPLOYEES where ROWNUM<10;

select FIRST_NAME,HIRE_DATE from EMPLOYEES order by HIRE_DATE;

select FIRST_NAME from EMPLOYEES;

select avg(SALARY) from EMPLOYEES;

select FIRST_NAME, SALARY from EMPLOYEES
where SALARY>(select avg(SALARY) from EMPLOYEES);

select FIRST_NAME, SALARY from EMPLOYEES
where SALARY<(select max(SALARY) from EMPLOYEES);

select max(SALARY) from EMPLOYEES
where SALARY<>(select max(SALARY) from EMPLOYEES);

select SALARY from (select salary from EMPLOYEES order by SALARY desc) where ROWNUM<11;

select FIRST_NAME || ' ' ||LAST_NAME from EMPLOYEES;

select FIRST_NAME, length(FIRST_NAME) from EMPLOYEES where length(FIRST_NAME) <6;

select  LAST_NAME, substr(LAST_NAME,1,3) from EMPLOYEES;
select  city, substr(city,1,3) from LOCATIONS;

select  initcap(lower(FIRST_NAME)) from EMPLOYEES;

create view fullemail as select FIRST_NAME || '.' || LAST_NAME || '@gmail.com' as EMAIL_ADDRESS from EMPLOYEES;

select * from fullemail;
select COUNTRY_ID from COUNTRIES;

select EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID from JOB_HISTORY;

select distinct EMPLOYEE_ID from EMPLOYEES;

select FIRST_NAME from EMPLOYEES;

select  FIRST_NAME from EMPLOYEES where FIRST_NAME='David';

select EMPLOYEE_ID from EMPLOYEES where EMPLOYEE_ID = 107;

SELECT JOB_ID from JOB_HISTORY where EMPLOYEE_ID>150;

select FIRST_NAME, HIRE_DATE from EMPLOYEES where EMPLOYEE_ID<>111;

select FIRST_NAME, SALARY from EMPLOYEES where SALARY>=5000 and SALARY<=10000;

select FIRST_NAME, SALARY from EMPLOYEES where salary between 10000 and 5000;


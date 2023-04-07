CREATE TABLE employees(
    first_name      character varying(50),
    last_name       character varying(50),
    phone_number    character(8),
    office_number   character(3),
    hire_date       date,
    annual_salary   numeric(10,2)
);

INSERT INTO employees
VALUES('Adam', 'Gilbert', '555-0123', '201', '2020-10-15', 45000.00);

SELECT * FROM employees;
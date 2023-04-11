SELECT * FROM Employees;

-- First and LastName columns NOT NULL
ALTER TABLE Employees
ALTER COLUMN FirstName varchar(50) NOT NULL;

--Default value for phone
ALTER TABLE Employees
ADD CONSTRAINT default_phone DEFAULT '555-0001' FOR phone_number;

-- Salaries are above 30000
ALTER TABLE Employees
    ADD CONSTRAINT check_salary
    CHECK (AnnualSalary > 30000.00);

-- Test it out!
INSERT INTO Employees (FirstName, LastName, AnnualSalary)
VALUES ('Page', 'McElroy', 55000);

SELECT * FROM Employees;
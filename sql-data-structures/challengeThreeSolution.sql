SELECT * FROM Employees;

CREATE TABLE QuarterlyBonus(
    bonus_id INT generated ALWAYS AS IDENTITY(START with 1 INCREMENT BY 1) NOT NULL PRIMARY KEY,
    bonus_amount DECIMAL(10,2),
    quarter char(7),
    empolyee_id INT
);

-- Rename an existing column's name 
ALTER TABLE QuarterlyBonus
RENAME empolyee_id TO employee_id;

SELECT * from QuarterlyBonus;

-- ALTER TABLE QuarterlyBonus
-- ADD CONSTRAINT fk_employees_employeeid FOREIGN KEY (employee_id)
-- REFERENCES Employees (employeeid);

ALTER TABLE QuarterlyBonus
ADD CONSTRAINT fk_employees_employee_id FOREIGN KEY (employee_id)
REFERENCES Employees (employeeid);


ALTER TABLE QuarterlyBonus
DROP CONSTRAINT fk_employees_employeeid;

-- Test the foreign key constraint
INSERT INTO QuarterlyBonus (bonus_amount, Quarter, employee_id)
VALUES ('500.00', '2020-Q1', 1000);

SELECT * FROM Employees;
SELECT * FROM QuarterlyBonus;

-- Try to add a bonus for a non-existing employee ID
INSERT INTO QuarterlyBonus (Bonus_Amount, Quarter, Employee_ID)
VALUES ('500.00', '2020-Q1', 2000);
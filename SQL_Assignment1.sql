CREATE DATABASE ASSIGNMENT1 DEFAULT CHARACTER SET utf8mb4;
USE ASSIGNMENT1;


CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100),
    Age INT CHECK (Age >= 18),
    Email VARCHAR(255) UNIQUE NOT NULL
);

#Insert records to Students table

INSERT INTO Students (StudentID, FirstName, LastName, Age, Email)
VALUES
    (1, 'John', 'Doe', 20, 'john.doe@example.com'),
    (2, 'Jane', 'Smith', 22, 'jane.smith@example.com'),
    (3, 'Michael', 'Brown', 19, 'michael.brown@example.com');
    
#add new column

ALTER TABLE Students
ADD EnrollmentDate DATE;


#modify email
ALTER TABLE Students
ALTER COLUMN Email VARCHAR(300);

#drop Lastname column
ALTER TABLE Students
DROP COLUMN LastName;
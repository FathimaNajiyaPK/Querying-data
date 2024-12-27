# CREATE THE DATBASE
create database countieswithpopulation ;
use countieswithpopulation;

# CREATE TABLE 'COUNTRY'

 CREATE TABLE Country(
Id  INT PRIMARY KEY,
Country_name  VARCHAR(100),
Population INT,
Area INT);

# CREATE TABLE 'PERSONS'

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(100),
    Lname VARCHAR(100),
    Population INT,
    Rating DECIMAL(3,1),
    Country_Id INT,
    Country_name VARCHAR(100),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
    );
    
    SELECT* FROM Country;
    SELECT* FROM  Persons;
    
    
    -- Insert 10 rows into the Country table
    
INSERT INTO Country (Id, Country_name, Population, Area)
VALUES
(1, 'USA', 331002651, 9833517),
(2, 'Canada', 37742154, 9984670),
(3, 'India', 15004385, 3287263),
(4, 'Australia', 1299884, 7692024),
(5, 'UK', 67886011, 243610),
(6, 'Germany', 83783942, 357022),
(7, 'France', 65273511, 551695),
(8, 'Italy', 60244639, 301340),
(9, 'Spain', 46719142, 505992),
(10, 'Mexico', 128933395, 1964375);

-- Insert 10 rows into the Persons table

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
VALUES
(1, 'John', 'Doe', 331002651, 4.8, 1, 'USA'),
(2, 'Jane', 'Smith', 37742154, 4.5, 2, 'Canada'),
(3, 'Raj', 'Kumar', 1380004385, 3.9, 3, 'India'),
(4, 'Emily', 'Johnson', 25499884, 4.7, 4, 'Australia'),
(5, 'Michael', 'Brown', 67886011, 4.2, 5, 'UK'),
(6, 'Laura', 'Williams', 83783942, 5.0, 6, 'Germany'),
(7, 'David', 'Jones', 65273511, 4.6, 7, 'France'),
(8, 'Sophia', 'Davis', 60244639, 3.8, 8, 'Italy'),
(9, 'Liam', 'Miller', 46719142, 5.0, 9, 'Spain'),
(10, 'Olivia', 'Taylor', 128933395, 4.9, 10, 'Mexico');


# List the distinct country names from the Persons table

SELECT DISTINCT Country_name FROM Persons;

# Select first names and last names from the Persons table with aliases. 
    
    SELECT Fname AS First_Name, Lname AS Last_Name FROM Persons;
    
# Find all persons with a rating greater than 4.0. 

SELECT * FROM Persons where rating>4.0;
    
# Find countries with a population greater than 10 lacks
 
 SELECT * FROM Country where population > 1000000;
 
 # Find persons who are from 'USA' or have a rating greater than 4.5.
 
 SELECT * FROM Persons where Country_name = 'USA' OR Rating > 4.5;
 
 #  Find all persons where the country name is NULL.
 
 SELECT * FROM Persons where Country_name IS NULL;
 
 # Find all persons from the countries 'USA', 'Canada', and 'UK'. 
 
 SELECT * FROM Persons where Country_name IN ('USA','Canada','UK');
 
 # Find all persons not from the countries 'India' and 'Australia'. 
 
 SELECT * FROM Persons where Country_name NOT IN ('India', 'Australia');
 
# Find all countries with a population between 5 lakhs and 20 lakhs
 
  SELECT Country_name FROM Country WHERE Population BETWEEN 500000 AND 2000000;
  
  # Find all countries whose names do not start with 'C'.
 
 SELECT Country_name FROM Country WHERE Country_name NOT LIKE 'C%';
 
 
 
 
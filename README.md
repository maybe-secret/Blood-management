``
CREATE TABLE info(
	roll_no INT PRIMARY KEY,
    class INT,
    name VARCHAR(50),
    sec VARCHAR(1),
    age INT NOT NULL,
    std_id INT NOT NULL
    );
    
INSERT INTO info VALUES(1, 10, "Rajesh Verma", "A", 15, 204);
INSERT INTO info VALUES(2, 10, "Rakesh Roshan", "A", 16, 209);
INSERT INTO info VALUES(3, 10, "Riya Jogi", "A", 15, 193);
INSERT INTO info VALUES(4, 10, "Rahul Dey", "A", 16, 242);
INSERT INTO info VALUES(5, 10, "Mukul Sharma", "A", 16, 215);

SELECT * FROM info;

TRUNCATE TABLE info;

USE std_class_x;


CREATE DATABASE IF NOT EXISTS bloodBank;
USE bloodbank;
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    Type VARCHAR(50) DEFAULT "User"
);

INSERT INTO Users (Name, Email, Password, Type) VALUES ("Soumyajit Chakraborty", "soumyajitchakraborty556@gmail.com", "soumyajit2007", "Admin");
INSERT INTO Users (Name, Email, Password) VALUES ("Souvik Chakraborty", "souvik2003@gmail.com", "souvik03");

USE bloodbank;
SELECT * FROM users;
DROP TABLE users;
TRUNCATE users;



CREATE TABLE donor_info (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DOB VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    BloodGroup VARCHAR(10) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Country VARCHAR(50) NOT NULL,
    State VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    PIN VARCHAR(10) NOT NULL,
    CurrentAddress NVARCHAR(255) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

    

DROP TABLE donor_info;
SELECT * FROM donor_info;
TRUNCATE donor_info;
INSERT INTO donor_info (FirstName, LastName, DOB, Age, BloodGroup, Gender, Phone, Country, State, City, PIN, CurrentAddress, Email) VALUES ("Soumyajit", "Chakraborty", "31-05-2007", 17, "O-", "Male", "7980365161", "India", "West Bengal", "Howrah", "711101", "22/9 Kalachand Nandi Lane", "soumyajitchakraborty556@gmail.com");



CREATE TABLE blood_stocks(
	SQ INT AUTO_INCREMENT PRIMARY KEY,
	Blood_Group VARCHAR(10),
    Blood_Stocks VARCHAR(10),
    Collect_Date VARCHAR(10),
    Expirey_Date VARCHAR(10)
);
``


DROP TABLE blood_stocks;
SELECT * FROM blood_stocks;
INSERT INTO blood_stocks(Blood_Group, Blood_Stocks, Collect_Date, Expirey_Date) VALUES ("B-", "60", "20-03-2024", "25-02-2025");

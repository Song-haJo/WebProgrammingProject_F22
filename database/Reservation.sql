use SNC
IF OBJECT_ID('Reservation', 'U') IS NOT NULL
	DROP TABLE Reservation;

CREATE TABLE Reservation(
R_Number int NOT NULL IDENTITY PRIMARY KEY,
Serial_Number VARCHAR(40),
Customer_Number int,
R_Start_date date,
R_End_date date,
Visitor_Number int,
FOREIGN KEY(Serial_Number) REFERENCES Accommodation_Info(A_Number),
FOREIGN KEY(Customer_Number) REFERENCES Customer(Customer_Number)
);

INSERT INTO Reservation VALUES('A1-S1','3','2022-12-17','2022-12-18',3);
INSERT INTO Reservation VALUES('A3-D', '2','2019-04-10','2019-04-11',3);
INSERT INTO Reservation VALUES('A3-D', '3','2019-04-11','2019-04-13',2);
INSERT INTO Reservation VALUES('A3-D', '4','2019-04-12','2019-04-13',4);
INSERT INTO Reservation VALUES('A1-S1','2','2019-04-06','2019-04-07',3);
INSERT INTO Reservation VALUES('A6-S','3','2019-03-30','2019-03-31',1);
INSERT INTO Reservation VALUES('A4-D', '5','2019-04-06','2019-04-07',5);
INSERT INTO Reservation VALUES('A9-S2','4','2019-04-20','2019-04-21',3);
INSERT INTO Reservation VALUES('A10-S1','5','2019-03-30','2019-03-31',2);
INSERT INTO Reservation VALUES('A8-O','5','2019-03-23','2019-03-24',2);
INSERT INTO Reservation VALUES('A8-O','3','2019-03-26','2019-03-28',4);

CREATE TABLE Reservation(
R_Number VARCHAR(40) PRIMARY KEY,
Serial_Number VARCHAR(40),
Customer_Number VARCHAR(40),
R_Start_date date,
R_End_date date,
Visitor_Number int,
FOREIGN KEY(Serial_Number) REFERENCES Accommodation_Info(A_Number) ON DELETE CASCADE,
FOREIGN KEY(Customer_Number) REFERENCES Customer(Customer_Number) ON DELETE CASCADE
);

INSERT INTO Reservation VALUES('R1','A1-S1','C1','2022-12-17','2022-12-18',3);
/*
INSERT INTO Reservation VALUES('R1','A3-D', 'C2','2019-04-10','2019-04-11',3);
INSERT INTO Reservation VALUES('R2','A3-D', 'C3','2019-04-11','2019-04-13',2);
INSERT INTO Reservation VALUES('R3','A3-D', 'C4','2019-04-12','2019-04-13',4);
INSERT INTO Reservation VALUES('R4','A1-S1','C1','2019-04-06','2019-04-07',3);
INSERT INTO Reservation VALUES('R5','A6-S2','C1','2019-03-30','2019-03-31',1);
INSERT INTO Reservation VALUES('R6','A4-D', 'C6','2019-04-06','2019-04-07',5);
INSERT INTO Reservation VALUES('R7','A9-S2','C7','2019-04-20','2019-04-21',3);
INSERT INTO Reservation VALUES('R8','A10-S1','C8','2019-03-30','2019-03-31',2);
INSERT INTO Reservation VALUES('R9','A8-O','C9','2019-03-23','2019-03-24',2);
INSERT INTO Reservation VALUES('R10','A8-O','C10','2019-03-26','2019-03-28',4);
*/
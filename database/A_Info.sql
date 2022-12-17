CREATE TABLE Accommodation_Info(
A_Number VARCHAR(40) PRIMARY KEY,
A_Address VARCHAR(40),
Room_type VARCHAR(40),
Room_Numer VARCHAR(40),
Price VARCHAR(40),
FOREIGN KEY(A_Address) REFERENCES Accommodation_Name(A_Address) ON DELETE CASCADE
);


INSERT INTO Accommodation_Info VALUES('A1-S1', '서울시 중구 동호로 249', '스위트', 6, 70000);
INSERT INTO Accommodation_Info VALUES('A1-D', '서울시 중구 동호로 249', '디럭스', 5, 60000);
INSERT INTO Accommodation_Info VALUES('A1-S2', '서울시 중구 동호로 249', '스탠다드', 6,50000);

INSERT INTO Accommodation_Info VALUES('A2-O', '제주시 첨단남길 34-1', '독채', 1, 100000);

INSERT INTO Accommodation_Info VALUES('A3-S1', '부산시 해운대구 해운대로 608-59', '스위트', 7, 50000);
INSERT INTO Accommodation_Info VALUES('A3-D', '부산시 해운대구 해운대로 608-59', '디럭스', 8,40000);
INSERT INTO Accommodation_Info VALUES('A3-S2', '부산시 해운대구 해운대로 608-59', '스탠다드', 6, 30000);

INSERT INTO Accommodation_Info VALUES('A4-S1', '대전시 중구 수침로 67', '스위트', 5, 60000);
INSERT INTO Accommodation_Info VALUES('A4-D', '대전시 중구 수침로 67', '디럭스', 6, 50000);
INSERT INTO Accommodation_Info VALUES('A4-S2', '대전시 중구 수침로 67', '스탠다드', 3, 40000);

INSERT INTO Accommodation_Info VALUES('A5-S1', '강원도 평창군 대관령면 오목길 107', '스위트', 5,60000);
INSERT INTO Accommodation_Info VALUES('A5-D', '강원도 평창군 대관령면 오목길 107', '디럭스', 6,50000);

INSERT INTO Accommodation_Info VALUES('', '서울시 용산구 한남동 747-7', '스탠다드', 2,65000);
INSERT INTO Accommodation_Info VALUES('', '서울시 용산구 한남동 747-7', '프리미엄', 2,70000);

INSERT INTO Accommodation_Info VALUES('', '서울시 영등포구 양평동5가 62-3', '슈페리어', 2,40000);
INSERT INTO Accommodation_Info VALUES('', '서울시 영등포구 양평동5가 62-3', '디럭스', 3,50000);
INSERT INTO Accommodation_Info VALUES('', '서울시 영등포구 양평동5가 62-3', '스위트', 2,60000);

INSERT INTO Accommodation_Info VALUES('', '서울시 구로구 경인로 229', '디럭스', 2,40000);
INSERT INTO Accommodation_Info VALUES('', '서울시 구로구 경인로 229', '슈페리어', 3,50000);
INSERT INTO Accommodation_Info VALUES('', '서울시 구로구 경인로 229', '스위트', 2,60000);
INSERT INTO Accommodation_Info VALUES('', '서울시 구로구 경인로 229', '온돌', 4,60000);

INSERT INTO Accommodation_Info VALUES('', '서울시 마포구 서강로 128', '스위트', 4,50000);
INSERT INTO Accommodation_Info VALUES('', '서울시 마포구 서강로 128', '스탠다드', 4,30000);

INSERT INTO Accommodation_Info VALUES('', '서울시 관악구 봉천로12길 36', '스위트', 4,30000);
INSERT INTO Accommodation_Info VALUES('', '서울시 관악구 봉천로12길 36', '스탠다드', 4,20000);

INSERT INTO Accommodation_Info VALUES('', '서울 종로구 율곡로5길 3-19', '독채', 6,70000);

INSERT INTO Accommodation_Info VALUES('', '부산시 해운대구 송정중앙로6번길 86', '오션뷰', 4, 60000);

INSERT INTO Accommodation_Info VALUES('', '부산시 해운대구 중동 1137-4', '스위트', 4, 80000);
INSERT INTO Accommodation_Info VALUES('', '부산시 해운대구 중동 1137-4', '스탠다드', 2, 60000);
INSERT INTO Accommodation_Info VALUES('', '부산시 해운대구 중동 1137-4', '슈페리어', 3, 70000);
INSERT INTO Accommodation_Info VALUES('', '부산시 해운대구 중동 1137-4', '디럭스', 6, 60000);
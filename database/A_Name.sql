CREATE TABLE Accommodation_Name(
Owner_Number VARCHAR(40),
A_Name VARCHAR(40),
A_Address VARCHAR(40),
PRIMARY KEY(A_Address),
FOREIGN KEY(Owner_Number) REFERENCES Business_Owner(Owner_Number) ON DELETE CASCADE
);

INSERT INTO Accommodation_Name VALUES('M1','신라호텔','서울시 중구 동호로 249');
INSERT INTO Accommodation_Name VALUES('M3','제주힐하우스','제주시 첨단남길 34-1');
INSERT INTO Accommodation_Name VALUES('M5','MU모텔','부산시 해운대구 해운대로 608-59');
INSERT INTO Accommodation_Name VALUES('M6','달빛스테이','대전시 중구 수침로 67');
INSERT INTO Accommodation_Name VALUES('M2','라마다호텔','강원도 평창군 대관령면 오목길 107');
INSERT INTO Accommodation_Name VALUES('M1','그랜드 인터컨티넨탈 서울 파르나스','서울시 강남구 테헤란로 521');
INSERT INTO Accommodation_Name VALUES('M7','렉스모텔','인천시 미추홀구 경인로 333-26');
INSERT INTO Accommodation_Name VALUES('M9','온나게스트하우스','대구시 중구 남성로 4');
INSERT INTO Accommodation_Name VALUES('M4','벨류호텔','충청북도 청주시 흥덕구 오송읍 오송생명로 178');
INSERT INTO Accommodation_Name VALUES('M8','황금모텔','전라북도 전주시 덕진수 용산 3길 25');

INSERT INTO Accommodation_Name VALUES('M11','그램드 하얏트 서울','서울시 용산구 한남동 747-7');
INSERT INTO Accommodation_Name VALUES('','더 스테이트 선유 호텔','서울시 영등포구 양평동5가 62-3');
INSERT INTO Accommodation_Name VALUES('','호텔 베르누이 서울','서울시 구로구 경인로 229');
INSERT INTO Accommodation_Name VALUES('','신촌 S','서울시 마포구 서강로 128');
INSERT INTO Accommodation_Name VALUES('','신림 릴','서울시 관악구 봉천로12길 36');
INSERT INTO Accommodation_Name VALUES('','종로 서울이야기한옥펜션','서울시 종로구 율곡로5길 3-19');

INSERT INTO Accommodation_Name VALUES('','부산 폴마레펜션','부산시 해운대구 송정중앙로6번길 86');
INSERT INTO Accommodation_Name VALUES('','해운대 센트럴 호텔','부산시 해운대구 중동 1137-4');
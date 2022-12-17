CREATE TABLE Customer(
Customer_Number varchar(40) primary key,
Customer_Name varchar(40),
PhoneNumber varchar(20),
Customer_SocialNumber varchar(40),
Customer_EMail varchar(40),
Customer_Password varchar(80),
Customer_Address varchar(80)
);

INSERT INTO Customer VALUES('C1','최학준','010-2898-9819','951007-1455241','cgw981@naver.com','gkrEnsldi','대전광역시 서구 둔산북로 56');
INSERT INTO Customer VALUES('C2', '백창경','010-2245-6353','950908-1452452','qwre@naver.com','zizon1234@','경상북도 구미시 송정동 461-6');
INSERT INTO Customer VALUES('C3', '허나영', '010-4255-4776','970907-2424141','gjskdud@naver.com','skdiddl123!','경상북도 울진군 근남면 성류남길 4');
INSERT INTO Customer VALUES('C4','양희창', '010-2746-6373','961007-1455241','gmckddl@naver.com','dkrncks@!','전라북도 전주시 완산구 풍남동3가 23-10');
INSERT INTO Customer VALUES('C5','홍문기','010-6603-5355','950502-1455241','ans@daum.net', 'dpdnbjsk!','충청남도 당진시 순성면 순성로 473');
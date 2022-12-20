IF OBJECT_ID('board', 'U') IS NOT NULL
	DROP TABLE board;

CREATE TABLE board(
	serial_no int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	writer varchar(50) NOT NULL,
	password varchar(50) NOT NULL,
	title varchar(250) NOT NULL,
	message varchar(max) NULL,
	ref_id varchar(50) NULL,
	inner_id varchar(50) NULL,
	depth int NULL,
	read_count int NULL,
	del_flag char(1) NULL,
	reg_date datetime NULL
);
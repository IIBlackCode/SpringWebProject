CREATE SEQUENCE REPLY_AOTOKEY START WITH 1 INCREMENT BY 1 MAXVALUE 99999 CYCLE NOCACHE;
CREATE SEQUENCE REPLY_AUTOKEY START WITH 1 INCREMENT BY 1 MAXVALUE 99999 CYCLE NOCACHE;
CREATE SEQUENCE MAIN_BOARD_AUTOKEY START WITH 1 INCREMENT BY 1 MAXVALUE 99999 CYCLE NOCACHE;
CREATE SEQUENCE FREE_BOARD_AUTOKEY START WITH 1 INCREMENT BY 1 MAXVALUE 99999 CYCLE NOCACHE;
CREATE SEQUENCE qna_BOARD_AUTOKEY START WITH 1 INCREMENT BY 1 MAXVALUE 99999 CYCLE NOCACHE;

drop sequence MAIN_BOARD_AUTOKEY;
drop sequence FREE_BOARD_AUTOKEY;
drop sequence qna_BOARD_AUTOKEY;
drop sequence REPLY_AUTOKEY;


SELECT * FROM main_board_table where boardid<=10 and board_member_name like '내%' order by boardid desc;

SELECT * FROM reply_table;
/* Drop Tables */
INSERT INTO reply_table VALUES(REPLY_AUTOKEY,'ccc','내가',11,'main',sysdate,'이럴수가');

DROP TABLE main_board_table CASCADE CONSTRAINTS;
DROP TABLE free_board_table CASCADE CONSTRAINTS;
DROP TABLE qna_board_table CASCADE CONSTRAINTS;
DROP TABLE like_table CASCADE CONSTRAINTS;
DROP TABLE reply_table CASCADE CONSTRAINTS;
DROP TABLE member_table CASCADE CONSTRAINTS;
DROP TABLE test_table CASCADE CONSTRAINTS;

/*Test Table*/
CREATE TABLE test_table
(
	test_num number,
	test_char varchar2(20)
);
INSERT into TEST_TABLE values(2,'나');
INSERT into TEST_TABLE values(3,'다');
INSERT into TEST_TABLE values(6,'라');
INSERT into TEST_TABLE values(7,'마');
INSERT into TEST_TABLE values(8,'바');
INSERT into TEST_TABLE values(9,'사');
INSERT into TEST_TABLE values(10,'아');
INSERT into TEST_TABLE values(12,'자');
SELECT * FROM (SELECT * FROM test_table where test_num=<(예전 글 마지막 숫자) 
order by test_num desc) WHERE ROWNUM=<(글 갯수);

select * from TEST_TABLE order by test_num desc;

SELECT * FROM (SELECT * FROM test_table where test_num<=50 order by test_num desc) WHERE ROWNUM<=10;

/* Create Tables */
insert into main_board_table(board_member_id,boardtype,boardid,board_member_name,board_title,board_context,writedate,readcount) values('ccc','main',2,'내가','타이틀2','내용',sysdate,0);
insert into main_board_table(board_member_id,boardtype,boardid,board_member_name,board_title,board_context,writedate,readcount) values('ccc','main',3,'내가','타이틀3','내용',sysdate,0);
insert into main_board_table(board_member_id,boardtype,boardid,board_member_name,board_title,board_context,writedate,readcount) values('ccc','main',4,'내가','타이틀4','내용',sysdate,0);
insert into main_board_table(board_member_id,boardtype,boardid,board_member_name,board_title,board_context,writedate,readcount) values('ccc','main',5,'내가','타이틀5','내용',sysdate,0);
insert into main_board_table(board_member_id,boardtype,boardid,board_member_name,board_title,board_context,writedate,readcount) values('ccc','main',6,'내가','타이틀6','내용',sysdate,0);
insert into main_board_table(board_member_id,boardtype,boardid,board_member_name,board_title,board_context,writedate,readcount) values('ccc','main',7,'내가','타이틀7','내용',sysdate,0);
insert into main_board_table(board_member_id,boardtype,boardid,board_member_name,board_title,board_context,writedate,readcount) values('ccc','main',8,'내가','타이틀8','내용',sysdate,0);
insert into main_board_table(board_member_id,boardtype,boardid,board_member_name,board_title,board_context,writedate,readcount) values('ccc','main',9,'내가','타이틀9','내용',sysdate,0);
insert into main_board_table(board_member_id,boardtype,boardid,board_member_name,board_title,board_context,writedate,readcount) values('ccc','main',10,'내가','타이틀10','내용',sysdate,0);
insert into main_board_table(board_member_id,boardtype,boardid,board_member_name,board_title,board_context,writedate,readcount) values('ccc','main',11,'내가','타이틀11','내용',sysdate,0);
insert into free_board_table(board_member_id,boardtype,boardid,board_member_name,board_title,board_context,writedate,readcount) values('ccc','main',100,'내가','자유게시판 1번','내용',sysdate,0);

select boardid from main_board_table order by boardid desc;
SELECT * FROM (SELECT * FROM main_board_table where boardid<=2 order by boardid desc) WHERE ROWNUM<=10;
select count(*) from main_board_table;
update main_board_table SET readcount=(SELECT readcount from MAIN_BOARD_TABLE where boardid=5)+1 where boardid=5;
select * from main_board_table where boardid =2;
//게시판 이미지 업로드
update main_board_table SET board_file=? where boardid=?;
//게시판 이미지 불러오기
select board_file from main_board_table where boardid=14;
CREATE TABLE main_board_table
(
	board_member_id varchar2(15) NOT NULL,
	boardtype varchar2(20) NOT NULL,
	boardid number NOT NULL,
	board_member_name varchar2(20),
	board_title varchar2(100),
	board_context varchar2(4000),
	board_file varchar2(50),
	writedate date,
	readcount number,
	startdate date,
	enddate date
);
CREATE TABLE free_board_table
(
	board_member_id varchar2(15) NOT NULL,
	boardtype varchar2(20) NOT NULL,
	boardid number NOT NULL,
	board_member_name varchar2(20),
	board_title varchar2(100),
	board_context varchar2(4000),
	board_file varchar2(50),
	writedate date,
	readcount number,
	startdate date,
	enddate date
);
CREATE TABLE qna_board_table
(
	board_member_id varchar2(15) NOT NULL,
	boardtype varchar2(20) NOT NULL,
	boardid number NOT NULL,
	board_member_name varchar2(20),
	board_title varchar2(100),
	board_context varchar2(4000),
	board_file varchar2(50),
	writedate date,
	readcount number,
	startdate date,
	enddate date
);

CREATE TABLE main_board_table1
(
	board_member_id varchar2(15) NOT NULL,
	boardtype varchar2(20) NOT NULL,
	boardid number NOT NULL,
	board_member_name varchar2(20),
	board_title varchar2(100),
	board_context varchar2(4000),
	board_file varchar2(50),
	writedate date,
	readcount number,
	startdate date,
	enddate date
);


CREATE TABLE like_table
(
	like_member_id varchar2(15) NOT NULL,
	like_boardtype varchar2(15) NOT NULL,
	like_boardid number NOT NULL
);
SELECT MEMBER_ID,ACTIVITYPOINT,AUTHORITY,PASSWORD,IMAGESRC,EMAIL,NAME,GENDER,HOBBY,BIRTHDAY,START_IP,START_DAY  FROM MEMBER_TABLE WHERE MEMBER_ID='ccc';

select * from member_table where member_id like 'ccc';
select * from member_table;
SELECT AUTHORITY  FROM MEMBER_TABLE WHERE MEMBER_ID='ccc';
update member_table SET authority = 2 where member_id='admin';
CREATE TABLE member_table
(
	member_id varchar2(25) NOT NULL,
	activitypoint number DEFAULT 0,
	authority number DEFAULT 1,
	password varchar2(25) NOT NULL,
	imagesrc varchar2(100),
	email varchar2(30),
	name varchar2(20) NOT NULL,
	gender number NOT NULL,
	hobby varchar2(20),
	birthday date,
	start_ip varchar2(15) NOT NULL,
	start_day date NOT NULL,
	PRIMARY KEY (member_id)
);

SELECT * FROM reply_table;
CREATE TABLE reply_table
(
	reply_id number NOT NULL,
	reply_member_id varchar2(25) NOT NULL,
	reply_member_name varchar2(20) NOT NULL,
	table_id number NOT NULL,
	table_name varchar2(15) NOT NULL,
	write_date date NOT NULL,
	reply_context varchar2(1000)
);


update main_board_table SET readcount=(SELECT readcount from MAIN_BOARD_TABLE where boardid=5)+1 where boardid=5;
/* Create Foreign Keys */

ALTER TABLE board_table
	ADD FOREIGN KEY (board_member_id)
	REFERENCES member_table (member_id)
;


ALTER TABLE like_table
	ADD FOREIGN KEY (like_member_id)
	REFERENCES member_table (member_id)
;


ALTER TABLE reply_table
	ADD FOREIGN KEY (reply_member_id)
	REFERENCES member_table (member_id)
;


//게시판에서 오늘 가장 인기 있는글 3개
select * from (select * from main_board_table where TO_CHAR(WRITEDATE, 'YYYYMMDD') = TO_CHAR(sysdate, 'YYYYMMDD') UNION ALL 
select * from free_board_table where TO_CHAR(WRITEDATE, 'YYYYMMDD') = TO_CHAR(sysdate, 'YYYYMMDD') UNION ALL 
select * from qna_board_table where TO_CHAR(WRITEDATE, 'YYYYMMDD') = TO_CHAR(sysdate, 'YYYYMMDD')) where ROWNUM<=3 order by readcount asc;
 
//게시판에서 가장 인기 있는글 3개
select * from (select * from main_board_table where WriteDate UNION ALL 
select * from free_board_table UNION ALL
select * from qna_board_table) where ROWNUM<=3 order by readcount asc;

select * from main_board_table where TO_CHAR(WRITEDATE, 'YYYYMMDD') = TO_CHAR(sysdate, 'YYYYMMDD');

select * from (select * from main_board_table order by WriteDate desc) where ROWNUM<=5;
select * from (select * from free_board_table order by WriteDate desc) where ROWNUM<=5






CREATE TABLE member_table
(
	member_id varchar2(25) NOT NULL,
	activitypoint number DEFAULT 0,
	authority number DEFAULT 1,
	password varchar2(25) NOT NULL,
	imagesrc varchar2(100),
	email varchar2(30),
	name varchar2(20) NOT NULL,
	gender number NOT NULL,
	hobby varchar2(20),
	birthday date,
	start_ip varchar2(15) NOT NULL,
	start_day date NOT NULL,
	PRIMARY KEY (member_id)
);
CREATE TABLE main_board_table
(
	board_member_id varchar2(15) NOT NULL,
	boardtype varchar2(20) NOT NULL,
	boardid number NOT NULL,
	board_member_name varchar2(20),
	board_title varchar2(100),
	board_context varchar2(4000),
	board_file varchar2(50),
	writedate date,
	readcount number,
	startdate date,
	enddate date
);
CREATE TABLE free_board_table
(
	board_member_id varchar2(15) NOT NULL,
	boardtype varchar2(20) NOT NULL,
	boardid number NOT NULL,
	board_member_name varchar2(20),
	board_title varchar2(100),
	board_context varchar2(4000),
	board_file varchar2(50),
	writedate date,
	readcount number,
	startdate date,
	enddate date
);
CREATE TABLE qna_board_table
(
	board_member_id varchar2(15) NOT NULL,
	boardtype varchar2(20) NOT NULL,
	boardid number NOT NULL,
	board_member_name varchar2(20),
	board_title varchar2(100),
	board_context varchar2(4000),
	board_file varchar2(50),
	writedate date,
	readcount number,
	startdate date,
	enddate date
);
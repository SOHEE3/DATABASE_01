--소희-

CREATE TABLE GAME_TBL
(
	G_ID 				CHAR(4)   		PRIMARY KEY,
	G_NAME   			VARCHAR2(200)  	NOT NULL,
	G_MAKER  			CHAR(6)  		NOT NULL,
	G_RELEASE  			DATE   			NOT NULL,
	G_SALES_PRICE   	NUMBER(7)  		NOT NULL,
	G_SUPPLY_PRICE    	NUMBER(7)  		NOT NULL,
	G_GENRE  			CHAR(6)   		NOT NULL,
	G_SHOW  			VARCHAR2(1)  	DEFAULT 'Y' NOT NULL
	
);

INSERT INTO GAME_TBL VALUES ('G001', 'Dead by Daylight' , 'CMS016' , '20210204' , '21000' , '13000' , 'CMS006', 'Y');
INSERT INTO GAME_TBL VALUES ('G002', 'Green Hell ' , 'CMS015' , '20200622' , '26000', '14000' , 'CMS010', 'Y');
INSERT INTO GAME_TBL VALUES ('G003', '배틀그라운드' , 'CMS011' , '20191114' , '32000' , '20000', 'CMS006','Y');
INSERT INTO GAME_TBL VALUES ('G004', 'EA SPORTS™ FIFA 21' , 'CMS017' , '20191212' , '36000', '66000' , 'CMS013','Y');
INSERT INTO GAME_TBL VALUES ('G005', 'Among Us' , 'CMS019' , '20200501' , '5500' , '3000' , 'CMS018','Y' );
INSERT INTO GAME_TBL VALUES ('G006', 'DEATH STRANDING' ,'CMS022', '20210104','64800', '32000','CMS010',	'Y');
INSERT INTO GAME_TBL VALUES ('G007', 'It Takes Two' , 'CMS023',	'20190808',	'44000','25000','CMS010','Y');
INSERT INTO GAME_TBL VALUES ('G008', 'Stardew Valley' ,	'CMS024',	'20180062',	'16000','9000','CMS012','Y');
INSERT INTO GAME_TBL VALUES ('G009', 'Monster Hunter World: Iceborne' ,	'CMS025','20201003','46500','21000','CMS006','Y');
INSERT INTO GAME_TBL VALUES ('G010', 'Danganronpa: Trigger Happy Havoc' ,'CMS026',	'20170923',	'21000','13000','CMS010','Y');



--DROP TABLE GAME_TBL
SELECT * FROM GAME_TBL;
--COMMIT;
CREATE TABLE COMMONS_TBL
(
	CMS_ID 			 CHAR(6)  			PRIMARY KEY,
	CMS_NAME  		 VARCHAR2(120)  	NOT NULL,
	CMS_LVL  		 NUMBER(3)  		NOT NULL,
	CMS_SEQ   	 	 NUMBER(5)  		NOT NULL,
	PARENT_CMS_ID 	 CHAR(6)  			NULL,
	GROUP_NUM 		 NUMBER(3) 			NOT NULL,
	EXCEPT1     	VARCHAR2(100)  		NULL, 
	EXCEPT2     	VARCHAR2(100)  		NULL
);

INSERT INTO COMMONS_TBL VALUES('CMS001', '공통코드', 1 , 1, NULL, 0, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS002', '제조사', 2 , 1, 'CMS001', 1, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS003', '국가', 2 , 2, 'CMS001', 2, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS004', '장르', 2 , 3, 'CMS001', 3, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS005', '한국', 3 , 1, 'CMS003', 2, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS006', 'Action', 3 , 1, 'CMS004', 3, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS007', '미국', 3 , 2, 'CMS003', 2, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS008', '프랑스', 3 , 3, 'CMS003', 2, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS009', '중국', 3 , 4, 'CMS003', 2, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS010', 'Adventure', 3 , 2, 'CMS004', 3, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS011', 'KRAFTON', 3 , 1, 'CMS002', 1, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS012', 'RPG', 3 , 3, 'CMS004', 3, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS013', 'Sports', 3 , 4, 'CMS004', 3, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS014', 'Simulation', 3 , 5, 'CMS004', 3, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS015', 'Creepy Jar', 3 , 2, 'CMS002', 1, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS016', 'Behaviour Interactive Inc', 3 , 3, 'CMS002', 1, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS017', 'Electronic Arts', 3 , 4, 'CMS002', 1, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS018', 'Casual', 3 , 6, 'CMS004', 3, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS019', 'Innersloth', 3 , 5, 'CMS002', 1, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS020', 'UK', 3 , 5, 'CMS003', 2, NULL, NULL);
INSERT INTO COMMONS_TBL VALUES('CMS021', '일본', 3 , 6, 'CMS003', 2, NULL, NULL);

--INSERT INTO COMMONS_TBL VALUES('CMS021', '실험1', 3 , 1, 'CMS003', 3);
--INSERT INTO COMMONS_TBL VALUES('CMS022', '실험2', 3 , 2, 'CMS003', 3);
--INSERT INTO COMMONS_TBL VALUES('CMS023', '실험3', 2 , 7, 'CMS002', 2);
--INSERT INTO COMMONS_TBL VALUES('CMS024', '실험4', 3 , 3, 'CMS003', 3);

--DROP TABLE COMMONS_TBL; 

SELECT * FROM COMMONS_TBL;
--COMMIT;
CREATE TABLE POINT_TBL
(
	PT_ID  		CHAR(5)  		PRIMARY KEY,
	S_ID 		CHAR(4) 		NOT NULL,
	CT_ID  		CHAR(5)  		NOT NULL,
	PT_SCORE 	NUMBER(20)  	DEFAULT 0  NOT NULL,
	PT_SAVE_USE VARCHAR2(1) 	NOT NULL,
	PT_DATE  	DATE  			NOT NULL,
	PT_SHOW  	VARCHAR2(1)  	DEFAULT 'Y' NOT NULL
	
);

INSERT INTO POINT_TBL VALUES( 'PT001', 'S001', 'CT001', 1050, 'S', '20210404', 'Y');
INSERT INTO POINT_TBL VALUES( 'PT002', 'S002', 'CT005', 1300, 'S' , '20210501', 'Y' ); 
INSERT INTO POINT_TBL VALUES( 'PT003', 'S003', 'CT008', 1600, 'S', '20210501', 'Y'); 


--DROP TABLE POINT_TBL;

SELECT * FROM POINT_TBL;
SELECT * FROM COMMONS_TBL;
SELECT * FROM GAME_TBL;
----
SELECT * FROM SALE_APPLYS_TBL;
SELECT * FROM CUSTOMERS_TBL;
----
SELECT * FROM PAYMENT_TBL;
SELECT * FROM SALES_TBL;



--COMMIT;

-------------------------------------------------------------------------
-------------------------------------------------------------------------
--창목

CREATE TABLE SALES_TBL
(
        S_ID           CHAR(4)	            NOT NULL	 PRIMARY KEY,	
        G_ID	    CHAR(4)	            	NOT NULL,		
        CT_ID	     CHAR(5)	                NOT NULL,	
        S_DATE	      DATE	    	            NOT NULL,
        PY_ID	         CHAR(5)	            NOT NULL,
        S_GET_POINT       NUMBER(2)	    		DEFAULT 5	 NOT NULL,
        S_SHOW	         CHAR(1)                DEFAULT 'Y'	  NOT NULL,
        S_PROFIT	    NUMBER(7)	            NOT NULL,
        S_USE_POINT	      NUMBER(6)			NOT NULL
);

INSERT INTO SALES_TBL VALUES('S001', 'G001', 'CT003', '2021-05-04', 'PY006', 5,'Y' , 30000, 0);
INSERT INTO SALES_TBL VALUES('S002', 'G002', 'CT004', '2021-05-04', 'PY007', 5, 'Y', 45000 ,3000);
INSERT INTO SALES_TBL VALUES('S003', 'G001', 'CT001', '2021-05-04', 'PY009', 5,'Y' , 35000,1500);
INSERT INTO SALES_TBL VALUES('S004', 'G003', 'CT010', '2021-05-04', 'PY006', 5, 'Y', 13000,500);
INSERT INTO SALES_TBL VALUES('S005', 'G004', 'CT025', '2021-05-04', 'PY008', 5, 'Y', 15000,0);
INSERT INTO SALES_TBL VALUES('S006', 'G002', 'CT004', '2021-05-04', 'PY007', 5,'Y' , 78000,1000);
INSERT INTO SALES_TBL VALUES('S007', 'G001', 'CT011', '2021-05-04', 'PY006', 5,'Y', 13000, 0);
INSERT INTO SALES_TBL VALUES('S008', 'G009', 'CT008', '2021-05-04', 'PY010', 5, 'Y', 26000,0);
INSERT INTO SALES_TBL VALUES('S009', 'G010', 'CT010', '2021-05-04', 'PY006', 5,'Y', 29000, 2000);
INSERT INTO SALES_TBL VALUES('S010', 'G004', 'CT002', '2021-05-04', 'PY007', 5, 'Y', 30000, 0);

SELECT * FROM SALES_TBL;

--COMMIT;

-----영후

CREATE TABLE CUSTOMERS_TBL
(
    CT_ID       CHAR(5)                             PRIMARY KEY, -- CUSTOMER의 ID
    CT_NAME     VARCHAR2(30)                        NOT NULL,    -- CUSTOMER의 이름
    CT_BIRTH    VARCHAR2(24)                        NOT NULL,    -- CUSTOMER의 생년월일
    CT_REGION   CHAR(6)                             NOT NULL,    -- CUSTOMER의 국가
    CT_GENDER   CHAR(1)                             NOT NULL,    -- CUSTOMER의 성별
    CT_C_NUM    VARCHAR2(33)                        NOT NULL,    -- CUSTOMER의 전화번호
    CT_POINT    NUMBER(10)      DEFAULT 0           NULL,        -- CUSTOMER의 포인트
    CT_GRADE    VARCHAR2(30)    DEFAULT '브론즈'     NULL,        -- CUSTOMER의 등급(처음 가입하는 사람의 등급은 브론즈로 통일)
    CT_SHOW     CHAR(1)         DEFAULT 'Y'         NOT NULL     -- CUSTOMER의 삭제여부
);

INSERT INTO CUSTOMERS_TBL (CT_ID, CT_NAME, CT_BIRTH, CT_REGION, CT_GENDER, CT_C_NUM, CT_POINT, CT_GRADE, CT_SHOW)
VALUES('CT001', '박영훈', '19940214', 'CMS004', 'M', '01084762204', 0, '브론즈', 'Y');

INSERT INTO CUSTOMERS_TBL (CT_ID, CT_NAME, CT_BIRTH, CT_REGION, CT_GENDER, CT_C_NUM, CT_POINT, CT_GRADE, CT_SHOW)
VALUES('CT002', '김민영', '19900527', 'CMS004', 'M', '01025784952', 0, '브론즈', 'Y');

INSERT INTO CUSTOMERS_TBL (CT_ID, CT_NAME, CT_BIRTH, CT_REGION, CT_GENDER, CT_C_NUM, CT_POINT, CT_GRADE, CT_SHOW)
VALUES('CT003', '이주은', '19970811', 'CMS004', 'F', '01078334587', 0, '브론즈', 'Y');

INSERT INTO CUSTOMERS_TBL (CT_ID, CT_NAME, CT_BIRTH, CT_REGION, CT_GENDER, CT_C_NUM, CT_POINT, CT_GRADE, CT_SHOW)
VALUES('CT004', '민지환', '19960401', 'CMS004', 'M', '01017966985', 0, '브론즈', 'Y');

INSERT INTO CUSTOMERS_TBL (CT_ID, CT_NAME, CT_BIRTH, CT_REGION, CT_GENDER, CT_C_NUM, CT_POINT, CT_GRADE, CT_SHOW)
VALUES('CT005', '여희은', '19931205', 'CMS004', 'F', '01060513687', 0, '브론즈', 'Y');

INSERT INTO CUSTOMERS_TBL (CT_ID, CT_NAME, CT_BIRTH, CT_REGION, CT_GENDER, CT_C_NUM, CT_POINT, CT_GRADE, CT_SHOW)
VALUES('CT006', '류현영', '20000121', 'CMS004', 'F', '01076542291', 0, '브론즈', 'Y');

INSERT INTO CUSTOMERS_TBL (CT_ID, CT_NAME, CT_BIRTH, CT_REGION, CT_GENDER, CT_C_NUM, CT_POINT, CT_GRADE, CT_SHOW)
VALUES('CT007', '김민철', '20030302', 'CMS004', 'M', '01052410309', 0, '브론즈', 'Y');

INSERT INTO CUSTOMERS_TBL (CT_ID, CT_NAME, CT_BIRTH, CT_REGION, CT_GENDER, CT_C_NUM, CT_POINT, CT_GRADE, CT_SHOW)
VALUES('CT008', '전수현', '19990624', 'CMS004', 'M', '01080531698', 0, '브론즈', 'Y');

INSERT INTO CUSTOMERS_TBL (CT_ID, CT_NAME, CT_BIRTH, CT_REGION, CT_GENDER, CT_C_NUM, CT_POINT, CT_GRADE, CT_SHOW)
VALUES('CT009', '윤가혜', '19951006', 'CMS004', 'F', '01042789852', 0, '브론즈', 'Y');

INSERT INTO CUSTOMERS_TBL (CT_ID, CT_NAME, CT_BIRTH, CT_REGION, CT_GENDER, CT_C_NUM, CT_POINT, CT_GRADE, CT_SHOW)
VALUES('CT010', '이현', '20020909', 'CMS004', 'F', '01015947810', 0, '브론즈', 'Y');


SELECT * FROM CUSTOMERS_TBL;
--COMMIT;




/* # 채용공고등록 테이블

*/


/* #개인회원 테이블 */
INSERT INTO USERS VALUES( 'user1'
						  ,'user1'
						  ,'01012345678'
						  ,'000101'
						  ,'user1@joba.co.kr'
						  ,'서울특별시 강남구'
						  ,'사용자1');
						 
INSERT INTO USERS VALUES( 'user2'
						  ,'user2'
						  ,'01023456789'
						  ,'000102'
						  ,'user2@joba.co.kr'
						  ,'서울특별시 종로구'
						  ,'사용자2');
						 
						 
INSERT INTO USERS VALUES( 'user3'
						  ,'user3'
						  ,'01034567890'
						  ,'000103'
						  ,'user3@joba.co.kr'
						  ,'서울특별시 마포구'
						  ,'사용자3');

-- selectList
select USER_ID,USER_PHONE, USER_BIRTH, USER_NAME from USERS;

-- selectOne
select USER_ID,USER_PHONE, USER_BIRTH, USER_NAME from USERS where USER_ID='user1';

-- insert 
INSERT INTO USERS VALUES( 'user100'
						  ,'user100'
						  ,'100'
						  ,'000100'
						  ,'user100@joba.co.kr'
						  ,'서울특별시 관악구'
						  ,'user100');
-- update 
update USERS set USER_NAME='변경사용자1' where USER_ID = 'user100';

-- delete
delete from USERS where USER_ID='user100';		

commit;


/* JA_CATEGORY TABLE 	*/

--지역 코드 1단계 
INSERT INTO JA_CATEGORY (CATEGORY_ID, CATEGORY_NAME, CATEGORY_DEPT, CATEGORY_TYPE, REQ_CATEGORY_ID)
VALUES ('LO', '지역', '1', 'LO', NULL);


--지역 코드 2단계
INSERT INTO JA_CATEGORY (CATEGORY_ID, CATEGORY_NAME, CATEGORY_DEPT, CATEGORY_TYPE, REQ_CATEGORY_ID)
VALUES ('LO01', '서울', '2', 'LO', 'LO');
INSERT INTO JA_CATEGORY (CATEGORY_ID, CATEGORY_NAME, CATEGORY_DEPT, CATEGORY_TYPE, REQ_CATEGORY_ID)
VALUES ('LO02', '경기', '2', 'LO', 'LO');

--직종 코드 1단계
INSERT INTO JA_CATEGORY (CATEGORY_ID, CATEGORY_NAME, CATEGORY_DEPT, CATEGORY_TYPE, REQ_CATEGORY_ID)
VALUES ('JN', '직종', '1', 'JN', NULL);


--직종 코드 2단계
INSERT INTO JA_CATEGORY (CATEGORY_ID, CATEGORY_NAME, CATEGORY_DEPT, CATEGORY_TYPE, REQ_CATEGORY_ID)
VALUES ('JN01', '인터넷/IT/통신/모바일/게임', '2', 'JN', 'JN');
INSERT INTO JA_CATEGORY (CATEGORY_ID, CATEGORY_NAME, CATEGORY_DEPT, CATEGORY_TYPE, REQ_CATEGORY_ID)
VALUES ('JN02', '경영/인사/총무/사무', '2', 'JN', 'JN');



--회원 임시
-- 마스터 관리자
INSERT INTO USER_TABLE (USER_ID, USER_PW, USER_PHONE, USER_BIRTH, USER_EMAIL, USER_ADRESS, USER_NAME, USER_BS_TYPE, USER_BS_LICENSE, USER_ROLE, TERMS_ACT, TERMS_DATE, TERMS_PERIOD)
VALUES ('admin', '$2a$10$t27GWA4xK07TrCqxVF.ouuvIZJW1ldcgivH5yHr2W8hmyp1x5/nbi', '01012345678', '1990-01-01 00:00:00', 'johndoe@example.com', '123 Main St, Anytown USA', 'John Doe', 'Retail', '12345', 'ROLE_AM', 'Y', '2023-03-19 00:00:00', 3);
-- 기업 회원
INSERT INTO USER_TABLE (USER_ID, USER_PW, USER_PHONE, USER_BIRTH, USER_EMAIL, USER_ADRESS, USER_NAME, USER_BS_TYPE, USER_BS_LICENSE, USER_ROLE, TERMS_ACT, TERMS_DATE, TERMS_PERIOD)
VALUES ('buser11', '$2a$10$gohBEP3hvlo7j8B9vas49ucjYH9YLxrc1myDyerYG2aeu/hHrfn.a', '01012345678', '1990-07-07', 'buser@example.com', '123 Main St, 대한민국', '최민건', '모름', '12345', 'ROLE_B', 'Y', CURRENT_TIMESTAMP, 3);
-- 개인 회원
INSERT INTO USER_TABLE (USER_ID, USER_PW, USER_PHONE, USER_BIRTH, USER_EMAIL, USER_ADRESS, USER_NAME, USER_BS_TYPE, USER_BS_LICENSE, USER_ROLE, TERMS_ACT, TERMS_DATE, TERMS_PERIOD)
VALUES ('user11', '$2a$10$pLJeF.qJd2DaoYkgEzD2s.I13JUlypoYTtLHURW4P2xoojIoUoEsu', '01099995555', '1960-11-07', 'user11@example.com', '어디에있긴함, 대한민국', '최민건', '되는거같음', '88888', 'ROLE_P', 'Y', CURRENT_TIMESTAMP, 3);

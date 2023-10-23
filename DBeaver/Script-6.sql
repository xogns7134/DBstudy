use normalization;

desc totalstudent;

insert into totalstudent values ('601', '손흥민', '토트넘', '컴퓨터과',
'공학관101', null, null, null);

insert into totalstudent values ('701', '조규성', '토트넘2', '체육학과',
null, null, null, null);

select * from totalstudent t;

update totalstudent set 주소 = '서울' where 학생이름 = '박지성' and 강좌이름 = '자료구조';

delete from totalstudent where 학생이름 = '김연아';

-- 지우려고 했던 데이터가 아닌 것까지 연쇄적으로 지워지면
-- 정규화 해야한다 ==> 연쇄삭제(삭제이상)

CREATE TABLE  학생(
	학생번호 varchar(100) NULL,
	학생이름 varchar(100) NULL,
	주소 varchar(100) NULL,
	학과 varchar(100) NULL
);

desc 학생;

CREATE TABLE  강좌정보(
	강좌이름 varchar(100) NULL,
	강의실 varchar(100) NULL
);

desc 강좌정보;

CREATE TABLE  학과정보(
	학과 varchar(100) NULL,
	학과사무실 varchar(100) NULL
);

desc 학과정보;

CREATE TABLE  성적정보(
	학생번호 varchar(100) NULL,
	강좌이름 varchar(100) NULL,
	성적 varchar(100)
);

desc 성적정보;

select count(*) from 학생;

select * from 학생;

-- 삽입 ==> null이 생기는 이상이 사라짐.

insert into 학생 values ('601','손흥민','토트넘','체육학과');


-- 수정 ==> 정보의 불일치 이상이 사라짐. 

update 학생 set 주소 = '서울' where 학생이름 = '박지성';

select * from 학생;

-- 삭제 ==> 연쇄 삭제 이상현상이 사라짐.

select * from 성적정보;

delete from 성적정보 where 학생번호 = '401';

select * from 학생;

show tables;

select count(학과) as 전체학과개수 from 학과정보;

select s.학생번호, s.학생이름, s.학과, d.학과사무실 from 학생 s, 학과정보 d where s.학과 = d.학과;

select s.학생번호, s.학생이름, s.학과, d.학과사무실 from 학생 s
inner join 학과정보 d where s.학과 = d.학과;

select s.학생번호, s.학생이름, j.강좌이름, d.성적 from 학생 s
inner join 성적정보 j where s.학생번호 = d.학생번호;

select j.학생번호, j.강좌이름, c.강의실, j.성적 from 성적정보 j, 강좌정보 c
where j.강좌이름 = c.강좌이름;

-- 3개 이상 조인할 때 사용법

select s.학생번호, j.강좌이름, j.성적, c.강의실 from 학생 s
inner join 성적정보 j on s.학생번호 = j.학생번호
inner join 강좌정보 c on j.강좌이름 = c.강좌이름;

-- column 하나를 기준으로 다른걸 이어붙힐 때

select * from 학생 s left join 성적정보 j on s.학생번호 = j.학생번호;

select * from 학생 s where 학생번호 =
(select 학생번호 from 성적정보 j where j.학생번호 = '502');

select s.학생이름, s.학과 from 학생 s where 학생번호 in
(select 학생번호 from 성적정보 j where j.강좌이름 = '자료구조');

select j.학생번호, j.성적 from 성적정보 j where 강좌이름 in
(select 강좌이름 from 강좌정보 c where c.강의실 = '공학관110');

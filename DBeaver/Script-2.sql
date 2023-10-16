-- database 만들기

create database test

-- database 선택

use test

-- table 만들기

create table DEPT (
	DEPTNO int (100),
	DNAME varchar (100),
	LOC varchar (100)
)

create table STUDENT (
	ID varchar (100),
	NAME varchar (100),
	TEL varchar (100),
	DEPTID int (100),
	PROFESSORID varchar (100)
)

create table PROFESSOR (
	ID varchar (100),
	NAME varchar (100),
	TEL varchar (100),
	DEPTID int (100),
	ADDR varchar (100),
	ROOMNO varchar (100)
)

create table EMP (
	ENPNO int (100),
	ENAME varchar (100),
	JOB varchar (100),
	MGR int (100),
	HIREDATE date,
	SAL int (100),
	COMM int (100),
	DEPTNO int (100)
)

-- 값 넣기

insert into dept values ('1', 'ABC', '가나다')

insert into dept values ('2', 'DEF', '라마바')

insert into emp values ('1', 'ABC', 'JOB1', '1', null, '123', '123', '1')

insert into emp values ('2', 'DEF', 'JOB2', '2', null, '456', '456', '2')

insert into professor values ('1', '가나다라', '010', '1', '***@***.com', '101')

insert into professor values ('2', '마바사아', '011', '2', '###@###.com', '102')

insert into student values ('1', '가나다', '012', '1', '1')

insert into student values ('2', '라마바', '013', '1', '1')

insert into student values ('3', '사아자', '014', '2', '2')

insert into student values ('4', '차카타', '015', '2', '2')

-- PK

ALTER TABLE test.dept ADD CONSTRAINT dept_pk PRIMARY KEY (DEPTNO);

ALTER TABLE test.emp ADD CONSTRAINT emp_pk PRIMARY KEY (ENPNO);

ALTER TABLE test.professor ADD CONSTRAINT professor_pk PRIMARY KEY (ID);

ALTER TABLE test.student ADD CONSTRAINT student_pk PRIMARY KEY (ID);

-- FK

ALTER TABLE test.professor ADD CONSTRAINT professor_FK FOREIGN KEY (DEPTID) REFERENCES test.dept(DEPTNO);

ALTER TABLE test.emp ADD CONSTRAINT emp_FK FOREIGN KEY (DEPTNO) REFERENCES test.dept(DEPTNO);

ALTER TABLE test.student ADD CONSTRAINT student_FK FOREIGN KEY (DEPTID) REFERENCES test.dept(DEPTNO);


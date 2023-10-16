-- 주석/comments

-- 1. db 생성

create database book

use book

-- 2. table 생성 : 항목명 걸정
--  varchar == String

create table book (
	id varchar (100),
	title varchar (100),
	genre varchar (100),
	price varchar (100)
)

create table writer (
	id varchar (100),
	name varchar (100),
	publisher varchar (100),
	tel varchar (100)
)

-- 3. data 넣기

insert into book values ('b1', '퓨처 셀프', '자기계발>성공학', '17820')

insert into book values ('b2', '책으로 가는 문', '에세이>외국에세이', '15120')

insert into book values ('b3', '트렌드 코리아 2024', '경제경영>경영전략/혁신', '17100')

insert into writer values ('w1', '벤저민 하디', '상상스퀘어', '010-1234-5678')

insert into writer values ('w2', '미야자키 하야오', '다우출판사', '010-8765-4321')

insert into writer values ('w3', '김난도 외 10명', '미래의창', '010-1111-2222')

-- 검색/수정/삭제

select title from book where id = 'b1'

select price from book where title = '퓨처 셀프'

select name from writer where id = 'w2'

select publisher from writer where name = "미야자키 하야오"

update book set price = '19800' where id = 'b1'

update writer set genre = '자기계발>성공>성공학' where genre = '자기계발>성공학'

delete from book where price < 16000

delete from writer where id = 'w3'

use shop

show tables

desc member

insert into member values ('melon', '1234', 'melon', '010')

select * from member -- * : 모든 컬럼

insert into member values ('computer', '1234', 'com', null)

insert into `member`(id,pw,name) values ('com2', '1111', 'com2')

insert into `member` values ('ice2', '1234', 'ice2', '010', now())

delete from bbs

select * from bbs

insert into bbs values (null, 'db3', 'fun db', 'apple')
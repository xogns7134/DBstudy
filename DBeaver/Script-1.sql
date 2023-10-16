-- 주석

-- shop, shop2, sys

-- db > table > 항목(field, item, property, attribute)

-- shop을 선택 후, SQL버튼을 클릭한 경우, shop이 선택된 것.

-- creat table a ==> shop db에 만들어짐

-- 다른 db를 사용하고 싶은 경우

-- use shop2

-- creat table b ==> shop2 db에 만들어짐

-- DCL(Data Control Language) : 크게 create, alter, drop 세 종류

create user 'summer'@'localhost' identified by '1234'

grant all privileges on *.* to 'summer'@'localhost'

use shop3

CREATE TABLE `member3` (
  `id` varchar(100) DEFAULT NULL,
  `pw` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT null
  )

  CREATE TABLE `bbs3` (
  `no` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `writer` varchar(100) DEFAULT null
  )
  
CREATE TABLE `reply3` (
  `id` varchar(100) DEFAULT NULL,
  `oriid` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `writer` varchar(100) DEFAULT null
  )

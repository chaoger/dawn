DROP DATABASE IF EXISTS uchoose;
create database uchoose;
use uchoose;

DROP TABLE IF EXISTS user;
CREATE TABLE `user`(
  `id` int(12) not null primary key auto_increment,
  `username` varchar(20) NOT NULL COMMENT '用户昵称',
  `password` varchar(20) NOT NULL COMMENT '用户密码',
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into user(username,password)values('buyer','reyub'),('seller','relles');

DROP TABLE IF EXISTS content;
CREATE TABLE `content`(
  `id` int(12) not null primary key auto_increment,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `abstracts` varchar(512) NOT NULL COMMENT '摘要',
  `url` VARCHAR(128) NOT NULL COMMENT '资源地址',
  `body`  text NOT NULL COMMENT '正文',
  `price` float(5,2) NOT NULL COMMENT '价格',
  `buy_flag` BIT NOT NULL DEFAULT b'0' COMMENT '是否购买',
  `buy_quantity` int NOT NULL DEFAULT 0 COMMENT '购买数量',
  `buy_price` float(5,2) NOT NULL DEFAULT 0 COMMENT '购买价格',
  UNIQUE KEY `title` (`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO content(title, abstracts, url, body, price,
                    buy_flag,buy_quantity,buy_price) VALUES
  ("effective java","effective java的摘要","/images/effective_java.jpg",
   "effective java的正文",66.88,1,3,66.88),
  ("重构 改善既有代码的设计","重构的摘要","/images/refactoring.jpg",
      "重构的该文",55.00,1,5,55.00),
  ("netty 权威指南","netty的摘要","/images/netty.jpg",
      "netty的正文",48.68,0,0,0),
  ("ZooKeeper分布式一致性原理","ZooKeeper的摘要","/images/zookeeper.jpg",
      "ZooKeeper的正文",66.88,0,0,0),
  ("云原生应用架构实践","云原生的摘要","/images/nativecloud.jpg",
      "云原生的正文",78.6,0,0,0);

DROP TABLE IF EXISTS cart;
CREATE TABLE `cart`(
  `id` int(12) PRIMARY KEY ,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `price` float(5,2) NOT NULL COMMENT '价格',
  `quantity` int(12) not null COMMENT '数量',
  UNIQUE KEY `title` (`title`) USING BTREE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO cart(id, title, price, quantity) VALUES
  (3,"netty 权威指南",48.68,15),
  (5,"云原生应用架构实践",78.6,30);

DROP TABLE IF EXISTS account;
CREATE TABLE `account`(
  `id` int(12) PRIMARY KEY ,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `url` VARCHAR(128) NOT NULL COMMENT '图片',
  `create_time` timestamp NOT NULL COMMENT '时间',
  `price` float(5,2) NOT NULL COMMENT '价格',
  `quantity` int(12) not null COMMENT '数量',
  UNIQUE KEY `title` (`title`) USING BTREE
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO account(id,title, url, create_time, quantity, price) VALUES
  (1,"effective java","/images/effective_java.jpg",NOW(),3,66.88),
  (2,"重构 改善既有代码的设计","/images/refactoring.jpg",NOW(),5,55.00);
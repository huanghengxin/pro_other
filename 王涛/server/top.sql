set names utf8;
drop database if exists top;
create database top charset=utf8;
use top;
create table user(
    uid int(11) not null auto_increment unique primary key,
    uname varchar(64) null,
    upwd varchar(64) null
);
insert into user values
(null,'wangtao','wt5201314');

create table shop(
    sid INT(11) not null auto_increment UNIQUE PRIMARY KEY,
    simg VARCHAR(128) null
);
INSERT into shop VALUES
(null,'01.jpg'),
(null,'02.jpg'),
(null,'03.jpg');

create table meau(
    mid int(11) not null auto_increment unique primary key,
    mimg varchar(128) null,
    title varchar(60) null,
    price int(30) null,
    pricea int(30) null,
    counts int(10) null
);
INSERT into meau VALUES
(null,'1.jpg','nike耐克2020','499','399',1),
(null,'2.jpg','nike耐克2020','499','399',1),
(null,'3.jpg','nike耐克2020','499','399',1),
(null,'4.jpg','nike耐克2020','499','399',1),
(null,'5.jpg','nike耐克2020','499','399',1);

create table noods(
   id int(11) not null auto_increment unique primary key,
   nname VARCHAR(20) NOT NULL,
   nme VARCHAR(20) NOT NULL,
   nimg varchar(128) null,
   nprice int(30) null,
   npricea int(30) null,
   counts int(10) null
);
insert into noods VALUES
(null,'nike-flexexperience rn 9','跑步鞋','xz/1.jpg','299','599',1),
(null,'nike-revolution5','篮球鞋','xz/2.jpg','299','599',1),
(null,'nike-zoomwinflo6','板鞋','xz/3.jpg','299','599',1),
(null,'nike-zoomwinflo7','运动鞋','xz/4.jpg','299','599',1);

create table aoods(
   id int(11) not null auto_increment unique primary key,
   aname VARCHAR(20) NOT NULL,
   aimg varchar(128) null,
   aprice int(30) null,
   apricea int(30) null
);

insert into aoods VALUES
(null,'衣服','yz/1.jpg','299','599');


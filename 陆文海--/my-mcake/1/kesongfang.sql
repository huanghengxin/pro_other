SET names UTF8;
DROP DATABASE IF EXISTS kesongfang;
CREATE DATABASE kesongfang CHARSET=UTF8;
USE kesongfang;

-- 创建用户表格
CREATE TABLE user(
    id INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(11),
     uname VARCHAR(16),
     upwd VARCHAR(12),
     cpwd VARCHAR(12)
);
-- 创建首页商品表格
CREATE TABLE kelobtop(
    lid INT PRIMARY KEY AUTO_INCREMENT,
    tite VARCHAR(26),
    ttle VARCHAR(26),
    price DECIMAL(6,2),
    src VARCHAR(56)
);
-- 首页轮播图
CREATE TABLE ketitle(
    id INT PRIMARY KEY AUTO_INCREMENT,
    src VARCHAR(56)
);
-- 底部图片
CREATE TABLE kefooter(
    id INT PRIMARY KEY AUTO_INCREMENT,
    src VARCHAR(56)
);
-- -- 详情页
-- CREATE TABLE kedetails(
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     names VARCHAR(12),
--     title VARCHAR(28),
--     hour VARCHAR(24),

-- );
-- 轮播图数据
INSERT INTO  ketitle VALUES(null,'./img/header/background.jpg');
-- 轮播图数据
INSERT INTO  kefooter VALUES(null,'./img/header/lunbo1.jpg');
INSERT INTO  kefooter VALUES(null,'./img/header/lunbo2.jpg');
INSERT INTO  kefooter VALUES(null,'./img/header/lunbo3.jpg');
-- 用户列表
INSERT INTO user VALUES(1,'13345678912','小亮','12345678','12345678');
INSERT INTO user VALUES(NULL,'13284554589','小张','12345678','12345678');
INSERT INTO user VALUES(NULL,'15155755425','小东','12345678','12345678');
INSERT INTO user VALUES(NULL,'18912542145','小李','12345678','12345678');
INSERT INTO user VALUES(NULL,'17811255522','小飞','12345678','12345678');
INSERT INTO user VALUES(NULL,'13478457851','小哎','12345678','12345678');
INSERT INTO user VALUES(NULL,'15358541225','小能','12345678','12345678');
-- 首页商品列表
INSERT INTO kelobtop VALUES
(NULL,'约瑟芬玫瑰','Josephine',398.00,'cake5.jpg'),
(NULL,'爱之风物诗','poeme damour',218.00,'cake6.jpg'),
(NULL,'甜愿·生日蛋糕','Souhaiter Un Joyeux Anniversai',298.00,'cake7.jpg'),
(NULL,'阳光心芒','Le Soleil',298.00,'cake8.jpg'),
(NULL,'男友力','Charmes masculins',298.00,'cake9.jpg'),
(NULL,'浓巧·迷情冰淇淋蛋糕','Choco~mariage',298.00,'cake10.jpg'),
(NULL,'约瑟芬玫瑰','Josephine',398.00,'cake10.jpg');


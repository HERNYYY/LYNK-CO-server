-- #db.sql 数据库脚本文件
SET NAMES UTF8;
DROP DATABASE IF EXISTS lk;
CREATE DATABASE lk CHARSET=UTF8;
USE lk;
CREATE TABLE user(
 id INT PRIMARY KEY AUTO_INCREMENT,
 uname VARCHAR(25),
 upwd VARCHAR(32),
 phone VARCHAR(32)
);
INSERT INTO user VALUES(null,'herny',md5('123'),13260551380);

CREATE TABLE product(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(32),
    price DECIMAL(5,2),
    pimg VARCHAR(32),
    dp1img VARCHAR(32),
    dp2img VARCHAR(32),
    dp3img VARCHAR(32),
    dp4img VARCHAR(32)
);
INSERT INTO product VALUES(null,"LynkCo Magic Disk 无线充电发射板",168,"p1","d1-p1","d1-p2","d1-p3","d1-p4");
INSERT INTO product VALUES(null,"领克魔方",299,"p2","d2-p1","d2-p2","d2-p3","d2-p4");
INSERT INTO product VALUES(null,"LynkCo 手动力空气沙发",298,"p3","d3-p1","d3-p2","d3-p3","d3-p4");
INSERT INTO product VALUES(null,"LynkCo 03 TCR 赛车帽",109,"p3","d4-p1","d4-p2","d4-p3","d4-p4");

CREATE TABLE cart (
    cid INT PRIMARY KEY AUTO_INCREMENT,
    p_id INT,
    u_id INT,
    count INT,
    FOREIGN KEY (p_id) REFERENCES product(pid),
    FOREIGN KEY (u_id) REFERENCES user(id)
)

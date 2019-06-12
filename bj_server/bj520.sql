
-- #设置客户端连接服务器端的编码
SET NAMES UTF8;
-- #丢弃数据库如果存在
DROP DATABASE IF EXISTS bj520;
-- #创建数据库设置编码UTF8
CREATE DATABASE bj520 CHARSET=UTF8;
-- #进入数据库
USE bj520;
-- #创建客照欣赏表，通过展示客照显示公司的专业水平和实力
CREATE TABLE customerPhoto(
  cid INT PRIMARY KEY NOT NULL AUTO_INCREMENT, #某月某季的ID，为此季度的唯一标识，由系统自动生成
  pname VARCHAR(256),
  ptime VARCHAR(256),
  pics VARCHAR(1024)    #某月某季的照片
);



INSERT INTO customerPhoto VALUES(NULL,"augfourth","8月第4季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg");
INSERT INTO customerPhoto VALUES(NULL,"mayfourth","5月第4季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg");
INSERT INTO customerPhoto VALUES(NULL,"maythird","5月第3季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg");
INSERT INTO customerPhoto VALUES(NULL,"maysecond","5月第2季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg");
INSERT INTO customerPhoto VALUES(NULL,"mayfirst","5月第1季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg");
INSERT INTO customerPhoto VALUES(NULL,"aprfourth","4月第4季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg,28.jpg,29.jpg");
INSERT INTO customerPhoto VALUES(NULL,"aprthird","4月第3季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg,28.jpg,29.jpg,30.jpg,31.jpg,32.jpg");
INSERT INTO customerPhoto VALUES(NULL,"aprsecond","4月第2季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg,28.jpg,29.jpg");
INSERT INTO customerPhoto VALUES(NULL,"aprfirst","4月第1季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg,28.jpg,29.jpg,30.jpg");


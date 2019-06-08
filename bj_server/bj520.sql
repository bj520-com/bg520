
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
  pics VARCHAR(1024)    #某月某季的照片
);
-- INSERT INTO customerPhoto VALUES(NULL,"augfourth","cuspho/augfourth/1.jpg,cuspho/augfourth/2.jpg,cuspho/augfourth/3.jpg,cuspho/augfourth/4.jpg,cuspho/augfourth/5.jpg,cuspho/augfourth/6.jpg,cuspho/augfourth/7.jpg,cuspho/augfourth/8.jpg,cuspho/augfourth/9.jpg,cuspho/augfourth/10.jpg,cuspho/augfourth/11.jpg,cuspho/augfourth/12.jpg,cuspho/augfourth/13.jpg,cuspho/augfourth/14.jpg,cuspho/augfourth/15.jpg,cuspho/augfourth/16.jpg,cuspho/augfourth/17.jpg,cuspho/augfourth/18.jpg,cuspho/augfourth/19.jpg,cuspho/augfourth/20.jpg,cuspho/augfourth/21.jpg,cuspho/augfourth/22.jpg,cuspho/augfourth/23.jpg,cuspho/augfourth/24.jpg,cuspho/augfourth/25.jpg,cuspho/augfourth/26.jpg,cuspho/augfourth/27.jpg");

-- INSERT INTO customerPhoto VALUES(NULL,"augfourth","augfourth/1.jpg,augfourth/2.jpg,augfourth/3.jpg,augfourth/4.jpg,augfourth/5.jpg,augfourth/6.jpg,augfourth/7.jpg,augfourth/8.jpg,augfourth/9.jpg,augfourth/10.jpg,augfourth/11.jpg,augfourth/12.jpg,augfourth/13.jpg,augfourth/14.jpg,augfourth/15.jpg,augfourth/16.jpg,augfourth/17.jpg,augfourth/18.jpg,augfourth/19.jpg,augfourth/20.jpg,augfourth/21.jpg,augfourth/22.jpg,augfourth/23.jpg,augfourth/24.jpg,augfourth/25.jpg,augfourth/26.jpg,augfourth/27.jpg");


INSERT INTO customerPhoto VALUES(NULL,"augfourth","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg");
INSERT INTO customerPhoto VALUES(NULL,"mayfourth","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg");
INSERT INTO customerPhoto VALUES(NULL,"maythird","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg");
INSERT INTO customerPhoto VALUES(NULL,"maysecond","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg");
INSERT INTO customerPhoto VALUES(NULL,"mayfirst","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg");
INSERT INTO customerPhoto VALUES(NULL,"aprfourth","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg,28.jpg,29.jpg");
INSERT INTO customerPhoto VALUES(NULL,"aprthird","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg,28.jpg,29.jpg,30.jpg,31.jpg,32.jpg");
INSERT INTO customerPhoto VALUES(NULL,"aprsecond","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg,28.jpg,29.jpg");
INSERT INTO customerPhoto VALUES(NULL,"aprfirst","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg,28.jpg,29.jpg,30.jpg");


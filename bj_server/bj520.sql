SET NAMES UTF8;
#丢弃数据库如果存在
#设置客户端连接服务器端的编码
SET NAMES UTF8;
#丢弃数据库如果存在
DROP DATABASE IF EXISTS bj520;
#创建数据库设置编码UTF8
CREATE DATABASE bj520 CHARSET=UTF8;
#进入数据库
USE bj520;
#创建客照欣赏表，通过展示客照显示公司的专业水平和实力
CREATE TABLE customerPhoto(
  cid INT PRIMARY KEY NOT NULL AUTO_INCREMENT, #某月某季的ID，为此季度的唯一标识，由系统自动生成
  pname VARCHAR(256),
  pics VARCHAR(1024)   #某月某季的照片
);
INSERT INTO customerPhoto VALUES(NULL,"augfourth","cuspho/augfourth/1.jpg,cuspho/augfourth/2.jpg,cuspho/augfourth/3.jpg,cuspho/augfourth/4.jpg,cuspho/augfourth/5.jpg,cuspho/augfourth/6.jpg,cuspho/augfourth/7.jpg,cuspho/augfourth/8.jpg,cuspho/augfourth/9.jpg,cuspho/augfourth/10.jpg,cuspho/augfourth/11.jpg,cuspho/augfourth/12.jpg,cuspho/augfourth/13.jpg,cuspho/augfourth/14.jpg,cuspho/augfourth/15.jpg,cuspho/augfourth/16.jpg,cuspho/augfourth/17.jpg,cuspho/augfourth/18.jpg,cuspho/augfourth/19.jpg,cuspho/augfourth/20.jpg,cuspho/augfourth/21.jpg,cuspho/augfourth/22.jpg,cuspho/augfourth/23.jpg,cuspho/augfourth/24.jpg,cuspho/augfourth/25.jpg,cuspho/augfourth/26.jpg,cuspho/augfourth/27.jpg");

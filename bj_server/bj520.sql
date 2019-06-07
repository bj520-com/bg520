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
  cid INT NOT NULL AUTO_INCREMENT, #某月某季的ID，为此季度的唯一标识，由系统自动生成
  pics VARCHAR(1024)   #某月某季的照片
);
INSERT INTO customerPhoto VALUES(NULL,"cuspho/augfirst/1.jpg,cuspho/augfirst/2.jpg,cuspho/augfirst/3.jpg,cuspho/augfirst/4.jpg,cuspho/augfirst/5.jpg,cuspho/augfirst/6.jpg,cuspho/augfirst/7.jpg,cuspho/augfirst/8.jpg,cuspho/augfirst/9.jpg,cuspho/augfirst/10.jpg,cuspho/augfirst/11.jpg,cuspho/augfirst/12.jpg,cuspho/augfirst/13.jpg,cuspho/augfirst/14.jpg,cuspho/augfirst/15.jpg,cuspho/augfirst/16.jpg,cuspho/augfirst/17.jpg,cuspho/augfirst/18.jpg,cuspho/augfirst/19.jpg,cuspho/augfirst/20.jpg,cuspho/augfirst/21.jpg,cuspho/augfirst/22.jpg,cuspho/augfirst/23.jpg,cuspho/augfirst/24.jpg,cuspho/augfirst/25.jpg,cuspho/augfirst/26.jpg,cuspho/augfirst/27.jpg");

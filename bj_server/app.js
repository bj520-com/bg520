// 1.引入两个模块
const express=require('express');
const mysql=require('mysql');
// 2.创建连接池
var pool=mysql.createPool({
  host:"127.0.0.1",
  user:"root",
  port:"3306",
  password:"",
  database:"xz",
  connectionLimit:15
})
// 3.创建express对象
var server=express();
// 4.指定静态目录
server.use(express.static("public"));
// 5.处理跨域请求
const cors=require('cors');
server.use(cors({
  origin:["http://127.0.0.1:8080","http://localhost:8080"],
  credentials:true   //验证
}));
// 6.添加session功能
const session=require('express-session');
server.use(session({
  secret:"eternalhouri",
  resave:true,
  saveUninitialized:true
}));
// 9.绑定监听端口
server.listen(3000);

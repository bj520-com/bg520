// 1.引入两个模块
const express = require('express');
const mysql = require('mysql');
// 2.创建连接池
var pool = mysql.createPool({
        host: "127.0.0.1",
        user: "root",
        port: "3306",
        password: "",
        database: "bj520",
        connectionLimit: 15
    })
    // 3.创建express对象
var server = express();
// 4.指定静态目录
server.use(express.static("public"));
// 5.处理跨域请求
const cors = require('cors');
server.use(cors({
    origin: ["http://127.0.0.1:8080", "http://localhost:8080"],
    credentials: true //验证
}));
// 6.添加session功能
const session = require('express-session');
server.use(session({
    secret: "eternalhouri",
    resave: true,
    saveUninitialized: true
}));
// 9.绑定监听端口
server.listen(3000);

// 功能一：请求客照欣赏照片
server.get("/photoShow", (req, res) => {
    // 1.接收脚手架参数
    var pname = req.query.pname == "" ? augfourth : req.query.pname;
    //SQL
    var sql = "SELECT pics FROM customerPhoto WHERE pname=?";
    pool.query(sql, [pname], (err, result) => {
        if (err) throw err;
        res.send({ code: 1, msg: 'succeed', data: result });
    })
})

//功能二：请求客照列表
server.get("/photoList", (req, res) => {
    var pno = req.query.pno;
    var psize = req.query.size;
    if (!pno) { pno = 1 }
    if (!psize) { psize = 9 }
    var start = parseInt((pno - 1) * psize);
    var count = parseInt(psize);
    pool.query("SELECT cid,pics,ptime,pname FROM customerPhoto LIMIT ?,?", [start, count], (err, result) => {
        if (err) throw err;
        res.send({ code: 1, msg: "succeed", data: result });
    })
})
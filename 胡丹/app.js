const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const bodyParser = require("body-parser");
const { compile } = require("morgan");

const server = express();

//创建连接池
const pool = mysql.createPool({
  host: "127.0.0.1",
  port: 3306,
  user: "root",
  password: "",
  database: "beast_mobile",
  charset: "utf8",
  connectionLimit: 20,
});

//使用body-parser中间件
server.use(
  bodyParser.urlencoded({
    extended: false,
  })
);

//解决跨域
server.use(
  cors({
    origin: ["http://127.0.0.1:8080", "http://localhost:8080"],
  })
);

//获取轮播图
server.get("/banna", (req, res) => {
  let sql = "select * from banna";
  pool.query(sql, (err, results) => {
    if (err) throw err;
    res.send(results);
    //console.log(results)
  });
});

//获取首页商品
server.get("/index", (req, res) => {
  let sql = "select * from index1";
  pool.query(sql, (err, results) => {
    if (err) throw err;
    res.send(results);
  });
});

//获取导航栏
server.get("/nav", (req, res) => {
  let sql = "select * from nav";
  pool.query(sql, (err, results) => {
    if (err) throw err;
    res.send(results);
  });
});

//获取分类图片
server.get("/class", (req, res) => {
  let nid = req.query.nid;
  let sql = "select * from class where nid=?";
  pool.query(sql, [nid], (err, results) => {
    if (err) throw err;
    res.send(results);
    // console.log(res)
  });
});

//根据cid获取分类列表
server.get("/list", (req, res) => {
  let cid = req.query.cid;
  let sql = "select * from products where cid=?";
  pool.query(sql, [cid], (err, results) => {
    if (err) throw err;
    res.send(results);
    //console.log(res)
  });
});

//获取商品详情
server.get("/details", (req, res) => {
  let pid = req.query.pid;
  let sql = "select * from products where pid=?";
  pool.query(sql, [pid], (err, result) => {
    if (err) throw err;
    //console.log(result)
    res.send(result);
  });
});

//添加进购物车
server.post("/add_car", (req, res) => {
  let pid = req.body.pid;
  let uname = req.body.uname;
  //console.log(req.body);
  let sql1 = "select * from cart where pid=? and uname=?";
  let sql2 = "insert into cart set ?";
  let sql3 = "update cart set num=num+1 where pid=? and uname=?";
  pool.query(sql1, [pid, uname], (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      pool.query(sql2, [req.body], (err, result) => {
        if (err) throw err;
        if (result.affectedRows > 0) {
          res.send("1");
        } else {
          res.send("0");
        }
      });
    } else {
      pool.query(sql3, [pid, uname], (err, result) => {
        if (err) throw err;
        if (result.affectedRows > 0) {
          res.send("2");
        } else {
          res.send("3");
        }
      });
    }
  });
});

//获取购物车
server.get("/car", (req, res) => {
  // let pid=req.query.pid
  let uname = req.query.uname;
  let sql = "select * from cart where uname=?";
  pool.query(sql, [uname], (err, results) => {
    //console.log(results);
    res.send(results);
  });
});

//增加数量
server.post('/addNum',(req,res)=>{
  let pid=req.body.pid
  let uname=req.body.uname
  let sql="update cart set num=num+1 where pid=? and uname=?"
  pool.query(sql,[pid,uname],(err,result)=>{
    if(err) throw err
    //console.log(result)
    if(result.changedRows!=0){
      res.send("1")
    }else{
      res.send("0")
    }
  })
})

//减少数量
server.post('/jianNum',(req,res)=>{
  let pid=req.body.pid
  let uname=req.body.uname
  let sql="update cart set num=num-1 where pid=? and uname=?"
  pool.query(sql,[pid,uname],(err,result)=>{
    if(err) throw err
    console.log(result)
    if(result.changedRows!=0){
      res.send("1")
    }else{
      res.send("0")
    }
  })
})

//删除
server.post('/delete',(req,res)=>{
  let pid=req.body.pid
  let uname=req.body.uname
  let sql="delete from cart where pid=? and uname=?" 
  pool.query(sql,[pid,uname],(err,result)=>{
    if(err) throw err
    if(result.changedRows>0){
      res.send("1")
    }else{
      res.send("0")
    }
  })
})


//注册
server.post("/reg", (req, res) => {
  let { uname } = req.body;
  let sql = "select * from users where uname=?";
  //console.log(req.body);
  pool.query(sql, [uname], (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      let sql2 = "insert into users set ?";
      pool.query(sql2, [req.body], (err, result) => {
        if (err) throw err;
        if (result.affectedRows > 0) {
          res.send("1");
        } else {
          res.send("2");
        }
      });
    } else {
      res.send("0");
    }
  });
});

//登录
server.post("/login", (req, res) => {
  // let obj=req.body;
  var { uname, upwd } = req.body;
  //console.log(uname);
  //console.log(upwd);
  //console.log(req.body);
  let sql = "select * from users where uname=? and upwd=?";
  pool.query(sql, [uname, upwd], (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      res.send("1");
    } else {
      res.send("0");
    }
  });
});

//搜索
server.get("/search", (req, res) => {
  let value = req.query.value;
  let sql = "select * from products where title like ?";
  pool.query(sql, ["%" + value + "%"], (err, results) => {
    if (err) throw err;
    res.send(results);
    console.log(results);
  });
});

server.listen(3000, () => {
  console.log(`running...`);
});

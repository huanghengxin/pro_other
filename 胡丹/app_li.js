const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
//加载body-parser中间件,因为是post请求，不能用req.query来获取请求，所有引入body-parser中间件来获取请求信息，let username=req.body.username;
const bodyParser = require("body-parser");

const pool = mysql.createPool({
  host: "127.0.0.1",
  port: 3306,
  user: "root",
  password: "",
  database: "two",
  charset: "utf8",
  connectionLimit: 20,
});
const server = express();
//使用body-parser中间件
server.use(
  bodyParser.urlencoded({
    extended: false,
  })
);
server.use(
  cors({
    origin: ["http://127.0.0.1:8080", "http://localhost:8080"],
  })
);

// 获取首页分类信息的接口
server.get("/merchant", (req, res) => {
  let sql = "SELECT lid,img,store,addr FROM index_store";
  //  执行语句
  pool.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    res.send({ message: "查询成功", code: 1, results: results });
  });
});

// 获取首页分类信息的接口
server.get("/product", (req, res) => {
  let sql =
    "SELECT lid,title,title_img,title_describe,price_new FROM commodity_list";
  //  执行语句
  pool.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    res.send({ message: "查询成功", code: 1, results: results });
  });
});
//  登录接口
server.post("/login", (req, res) => {
  //获取客户端提交的用户名和密码
  let username = req.body.username;
  let userpassword = req.body.userpassword;

  let sql =
    "select username,userpassword from user_list where username=? and userpassword=?";
  pool.query(sql, [username, userpassword], (err, results) => {
    if (err) throw err;
    if (results.length == 0) {
      res.send({ message: "密码或用户名错误", code: 0 });
    } else {
      res.send({ message: "登录成功", code: 1 });
    }
  });
});
//注册接口
server.post("/register", (req, res) => {
  //获取客户端提交的用户名和密码
  let username = req.body.username;
  let userphone = req.body.userphone;
  let userpassword = req.body.userpassword;

  //以当前的用户名为前提条件查找操作，若没找到
  let sql = "select lid,username from user_list where username=?";
  pool.query(sql, [username], (err, results) => {
    if (err) throw err;
    //根据用户名是否存在进行不同操作
    if (results.length == 0) {
      //将用户信息写入数据表(还需注意将密码变成md5的结果)
      sql =
        "insert into user_list(username,userphone,userpassword) values(?,?,?)";
      //sql='insert xzqa_author set username=?,password=MD5(?)';
      pool.query(sql, [username, userphone, userpassword], (err, results) => {
        if (err) throw err;
        res.send({ message: "注册成功", code: 1 });
        /* select id,username from xzqa_author; 查询数据表中的数据*/
      });
    } else {
      //如果已经存在用户信息则返回提示至客户端
      res.send({ message: "用户名已存在", code: 0 });
    }
  });
});
//商品列表接口
server.get("/commodity", (req, res) => {
  let sql =
    "SELECT lid,title,title_img,price_old,price_new,sell_number FROM commodity_list";
  pool.query(sql, (err, results) => {
    if (err) throw err;
    res.send({ message: "查询成功", code: 1, results: results });
  });
});
//商品详情接口
server.get("/details", (req, res) => {
  let lid = req.query.lid;
  let sql =
    "SELECT title_img,title,title_describe,price_old,price_new,sell_number,details_img1,details_img2,details_img3,details_img4 FROM commodity_list where lid=?";
  pool.query(sql, [lid], (err, results) => {
    if (err) throw err;
    res.send({ message: "查询成功", code: 1, results: results });
  });
});

server.post("/shopingcar", (req, res) => {
  let username = req.body.username;
  console.log(req.body);
  let sql =
    "SELECT lid,username,img,title,number,price FROM  shoping_car  where username=?";

  pool.query(sql, [username], (err, results) => {
    if (err) throw err;
    res.send({ message: "查询成功", code: 1, res: results });
  });
});
// 判断添加到购物车的接口
server.post("/addcar", (req, res) => {
  let lid = req.body.lid;
  console.log(req.body);
  let username = req.body.username;
  let sql1 = "select * from shoping_car where lid=? and username=?";
  let sql2 = "insert into shoping_car set ?";
  let sql3 =
    "update shoping_car set number=number+1 where lid=? and username=?";
  pool.query(sql1, [lid, username], (err, result) => {
    if (err) throw err;

    if (result.length == 0) {
      pool.query(sql2, [req.body], (err, result) => {
        if (result.affectedRows > 0) {
          res.send({ code: 200, str: "添加成功" });
        } else {
          res.send({ code: 500, str: "添加失败" });
        }
      });
    } else {
      pool.query(sql3, [lid, username], (err, result) => {
        if (err) throw err;
        if (result.affectedRows > 0) {
          res.send({ code: 200, str: "添加成功" });
        } else {
          res.send({ code: 500, str: "添加失败" });
        }
      });
    }
  });
});
// 删除购物车数据接口
server.post("/delcar", (req, res) => {
  let lid = req.body.lid;
  let username = req.body.username;
  let sql = "DELETE FROM shoping_car WHERE lid=? AND username=?";
  pool.query(sql, [lid, username], (err, results) => {
    if (err) throw err;
    res.send(results);
  });
});
// //注册接口
// server.post('/register',(req,res)=>{
//   //获取客户端提交的用户名和密码
//   let username=req.body.username;
//   let password=req.body.password;
//   //以当前的用户名为前提条件查找操作，若没找到
//   let sql='select uid,username from weiduomei_user where username=?'
//   pool.query(sql,[username],(err,results)=>{
//     if(err) throw err;
//     //根据用户名是否存在进行不同操作
//     if(results.length==0){
//       //将用户信息写入数据表(还需注意将密码变成md5的结果)
//       sql='insert into weiduomei_user(username,password) values(?,MD5(?))';
//       //sql='insert xzqa_author set username=?,password=MD5(?)';
//       pool.query(sql,[username,password],(err,results)=>{
//         if(err) throw err;
//         res.send({message:'注册成功',code:1})
//         /* select id,username from xzqa_author; 查询数据表中的数据*/
//       })
//     }else{
//       //如果已经存在用户信息则返回提示至客户端
//       res.send({message:'用户名已存在',code:0})
//     }
//   })
// })
// //登录接口
// server.post('/login',(req,res)=>{
//     //获取客户端提交的用户名和密码
//   let username=req.body.username;
//   let password=req.body.password;
//   let sql='select uid,username,password from weiduomei_user where username=? and password=MD5(?)';
//   pool.query(sql,[username,password],(err,results)=>{
//     if(err)  throw err;
//     if(results.length==0){
//       res.send({message:"密码或用户名错误",code:0});
//     }else{
//       res.send({message:"登录成功",code:1})
//     }
//   })
// });
// //商品列表接口
// server.get('/product',(req,res)=>{
//   let sql = 'SELECT pid,title,details,pic,price,size FROM weiduomei_cake_product';
//   pool.query(sql,(err,results)=>{
//     if(err) throw err;
//     res.send({message:'查询成功',code:1,results:results})
//   })
// });
// //商品详情接口
// server.get('/details',(req,res)=>{
//   let sql = 'SELECT lid, imgone_t, imgtwo_t, imgthree_t,title,price,details,imgone_b,imgtwo_b,imgthre_b,imgfour_b FROM weiduomei_cake_details';
//   pool.query(sql,(err,results)=>{
//     if(err) throw err;
//     res.send({message:'查询成功',code:1,results:results})
//   })
// });
// //指定监听端口号
server.listen(3000, () => {
  console.log(`server is runing`);
});

const express = require('express');
const cors = require('cors');
const mysql = require('mysql');
const bodyParser=require('body-parser');

//连接数据库
const pool = mysql.createPool({
    host:'127.0.0.1',
    port:3306,
    user:'root',
    password:'',
    database:'top',
    connectionLimit:15
});
const app = express();

app.use(bodyParser.urlencoded({
    extended:false
}));

app.use(cors({
    origin:['http://localhost:8080' , 'http://127.0.0.1:8080']
}));

//用户登录接口
app.post('/login',(req,res)=>{
    let uname=req.body.uname;
    let upwd=req.body.upwd;
    let sql='select uid,uname from user where uname=? and upwd=?';
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err;
        if(result.length==0){
            res.send({message:'登录失败',code:0})
        }else{
            res.send({message:'登录成功',code:1})
        }
    })
})

//用户注册接口
app.post('/reg',(req,res)=>{
    let obj=req.body;
    let sql='insert into user set ?'
    pool.query(sql,[obj],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows==0){
            res.send({message:'注册失败',code:0})
        }else{
            res.send({message:'注册成功',code:1})
        }
    })
})

//用户账号接口
app.post('/test',(req,res)=>{
    let obj = req.body.uname;
    //console.log(obj);
    let sql = 'select uid,uname from user where uname=?'
    pool.query(sql,[obj],(err,result)=>{
        if(err) throw err;
        console.log(result);
        if(result[0].uname==obj){
            res.send({message:'注册失败',code:0})
        }
    })
})

//shop轮播
app.get('/shop',(req,res)=>{
    let sql = 'select simg from shop'
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({message:'查询成功',code:1,result:result});
    })
})


//meau滑动轮播
app.get('/meau',(req,res)=>{
    let sql = 'select mimg,title,price,pricea from meau'
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({message:'查询成功',code:1,result:result})
    })
})

//商品nike鞋子接口
app.get('/noods',(req,res)=>{
    //sql语句
    let sql = 'select id,nname,nme,nimg,nprice,counts,npricea from noods'
    //执行sql语句
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({message:'查询成功',code:1,result});
    })
})
//商品nike鞋子详情接口
app.get(/nood/,(req,res)=>{
    let id = req.query.id;
    //console.log(id);
    let sql = 'select id,nname,nme,nimg,nprice,npricea,counts from noods where id=?';
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        //console.log(result);
        res.send({message:'查询成功',code:1,result:result[0]})
    })

})

//商品adidas详情

app.listen(3000,()=>{
    console.log('服务器已启动...')
});
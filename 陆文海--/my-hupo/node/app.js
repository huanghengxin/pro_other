const express=require('express');

//引入mysql模块
const mysql=require('mysql');

//创建服务器
const app=express();

//引入cors请求
const cors=require('cors')

//引入border parse 中间件
const body=require('body-parser')

//创建服务器
app.listen(3000,()=>{
    console.log('服务器启动...')
});

//创建链接池对象
const pool=mysql.createPool({
    host:'127.0.0.1',
    port:'3306',
    user:'root',
    password:'',
    database:'hupo',
    connectionLimit:15
})
//引用cors解决跨域问题,监听8080端口
app.use(cors({
    origin:['http://localhost:8080','http://127.0.0.1:8080']
}));
//使用body 中间件
app.use(body.urlencoded({
    extended:false
}))
// 创建商品信息接口
app.get('/list1',(req,res)=>{
    let kid=req.query.kid;
    let sql='select * from list where kid= 1';
    pool.query(sql,[kid],(err,result)=>{
        if(err)throw err;
        res.send({messge:'查询成功',code:1,result:result})
        // console.log(result);
    })
});
app.get('/list2',(req,res)=>{
    let kid=req.query.kid;
    let sql='select * from list where kid= 2';
    pool.query(sql,[kid],(err,result)=>{
        if(err)throw err;
        res.send({messge:'查询成功',code:1,result:result})
        // console.log(result);
    })
});
app.get('/list3',(req,res)=>{
    let kid=req.query.kid;
    let sql='select * from list where kid= 3';
    pool.query(sql,[kid],(err,result)=>{
        if(err)throw err;
        res.send({messge:'查询成功',code:1,result:result})
        // console.log(result);
    })
});
app.get('/list4',(req,res)=>{
    let kid=req.query.kid;
    let sql='select * from list where kid= 4';
    pool.query(sql,[kid],(err,result)=>{
        if(err)throw err;
        res.send({messge:'查询成功',code:1,result:result})
        // console.log(result);
    })
});
app.get('/list5',(req,res)=>{
    let kid=req.query.kid;
    let sql='select * from list where kid= 5';
    pool.query(sql,[kid],(err,result)=>{
        if(err)throw err;
        res.send({messge:'查询成功',code:1,result:result})
        // console.log(result);
    })
});
//创建接口详情列表
app.get('/details',(req,res)=>{
    let kid=req.query.listId;
    console.log(kid);
    let sql='select * from details where id = ?';
    pool.query(sql,[kid],(err,result)=>{
        if(err)throw err;
        res.send({messge:'查询成功',code:1,result:result})
        console.log(result);
    })
});

//创建用户注册接口
app.post('/user',(req,res)=>{
    let phone=req.body.username;
    let upwd=req.body.password;
    let sql='select * from user where phone=?';
    pool.query(sql,[phone],(err,result)=>{
        if(err)throw err;
        if(result.length>0){
            res.send({messge:'注册失败',code:0})
        }else{
            let sql='INSERT INTO user(phone,upwd) VALUE(?,?)';
            pool.query(sql,[phone,upwd],(err,result)=>{
                if(err)throw err;  
                res.send({messge:'注册成功',code:1})
            })
        }   
    })
})
//用户登录接口
app.post('/pwd',(req,res)=>{
    let phone=req.body.loginname;
    // console.log(phone)
    let upwd=req.body.password;
    // console.log(upwd)
    let sql='select id,phone,upwd from user where phone=? and upwd=?';
    pool.query(sql,[phone,upwd],(err,result)=>{
        console.log(result)
        if(err)throw err;
        if(result.length==1){
          res.send({messge:'登录成功',code:1,result:result})  
        }else{
            res.send({messge:'登录失败',code:0})
        }
        
    })
})

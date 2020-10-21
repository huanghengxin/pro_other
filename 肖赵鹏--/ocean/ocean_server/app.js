const express = require("express");
const mysql = require("mysql");
const bodyParser = require('body-parser');
const pool=mysql.createPool({
    host:'127.0.0.1',
    port:3306,
    user:'root',
    password:'',
    database:'ocean',
    connectionLimit:15
});
const cors=require("cors");
const server = express();
server.use(bodyParser());
server.use(cors({
    origin:['http://localhost:8080','http://127.0.0.1:8080']
}));

// 注册
server.post('/register',(req,res)=>{
    let username = req.body.username;
    let password = req.body.password;
    let email = req.body.email;
    let sql = 'INSERT INTO user (username,email,password) VALUES (?,?,?)'
    pool.query(sql,[username,email,password],(err,results)=>{
        if (err) throw err;
        res.send({results:results})
    })
})
// 注册查看是否存在用户名
server.post('/check',(req,res)=>{
    let username = req.body.username;
    let sql = 'SELECT * from user  WHERE username = ?'
    pool.query(sql,[username],(err,results)=>{
        if (err) throw err;
        // console.log(results)
        res.send({results:results})
    })
})
// 登录
server.post('/login',(req,res)=>{
    let username = req.body.username;
    let sql = 'SELECT * from user  WHERE username = ?'
    pool.query(sql,[username],(err,results)=>{
        if (err) throw err;
        // console.log(results)
        res.send({results:results})
    })
})

// 反馈信息
server.get('/contact',(req,res)=>{
    let username = req.query.username;
    let email = req.query.email;
    let phone = req.query.phone;
    let question = req.query.question;
    let sql = 'INSERT INTO contact (contact_name,contact_email,contact_phone,question) VALUES (?,?,?,?)';
    pool.query(sql,[username,email,phone,question],(err,results)=>{
        if (err) throw err;
    })
})

// 获取在售信息
server.get('/shop1',(req,res)=>{
    let sql = 'SELECT * from ocean_list WHERE type = 1'
    pool.query(sql,(err,results)=>{
        if(err) throw err;
        res.send(results)
    })
})

// 获取产品页左侧
server.get('/product3',(req,res)=>{
    let sql = 'SELECT * from ocean_list WHERE type = 3'
    pool.query(sql,(err,results)=>{
        if(err) throw err;
        res.send(results)
    })
})
// 获取产品页中部
server.get('/product4',(req,res)=>{
    let sql = 'SELECT * from ocean_list WHERE type = 4'
    pool.query(sql,(err,results)=>{
        if(err) throw err;
        res.send(results)
    })
})
// 获取产品页右侧
server.get('/product5',(req,res)=>{
    let sql = 'SELECT * from ocean_list WHERE type = 5'
    pool.query(sql,(err,results)=>{
        if(err) throw err;
        res.send(results)
    })
})
// 获取即将上市
server.get('/coming',(req,res)=>{
    let sql = 'SELECT * from ocean_list WHERE type = 2'
    pool.query(sql,(err,results)=>{
        if(err) throw err;
        res.send(results)
    })
})
// 获取详情页
server.get('/articlei',(req,res)=>{
    let id=req.query.id
    let sql = 'SELECT * from ocean_list WHERE id = ?'
    pool.query(sql,[id],(err,results)=>{
        if(err) throw err;
        res.send(results)
    })
})
// 添加到购物车
server.get('/add',(req,res)=>{
    let username = req.query.username;
    let listid = req.query.listid
    let conut = req.query.conut
    let sql = 'INSERT INTO shop_car (user_name,list_id,conut) VALUES (?,?,?)';
    pool.query(sql,[username,listid,conut],(err,results)=>{
        if(err) throw err;
        res.send(results)
    })
})
// 获取购物车的信息
server.get('/car',(req,res)=>{
    let username = req.query.username;
    // console.log(username)
    let sql = 'SELECT * FROM shop_car WHERE user_name = ?';
    pool.query(sql,[username],(err,results)=>{
        if(err) throw err;
        res.send(results)
    })
})
// 删除购物车信息
server.get('/del',(req,res)=>{
    let id = req.query.carid;
    let sql = 'DELETE FROM shop_car WHERE id = ?'
    pool.query(sql,[id],(err,results)=>{
        if(err) throw err;
        res.send("删除成功")
    })
})
//修改购物车数量
server.get('/update',(req,res)=>{
    let id = req.query.carid;
    let conut = req.query.conut;
    let sql = 'UPDATE shop_car SET conut = ? WHERE id = ?'
    pool.query(sql,[conut,id],(err,results)=>{
        if(err) throw err;
        // console.log('执行了一次')
        res.send('修改成功')
    })
})
// 模糊查询
server.get('/search',(req,res)=>{
    let id = req.query.id;
    let sql = 'SELECT * from ocean_list WHERE name LIKE ?'
    pool.query(sql,["%"+id+"%"],(err,results)=>{
        if(err) throw err;
        res.send(results)
    })
})
server.get('/luobotu',(req,res)=>{
    let sql = 'SELECT src from ocean_list WHERE type = 6'
    pool.query(sql,(err,results)=>{
        if(err) throw err;
        res.send(results)
    })
})


server.listen(3000,()=>{
  console.log('服务器启动...');
});
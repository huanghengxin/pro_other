<template>
    <div class="login">
        <my-back></my-back>
        <input type="text" placeholder="请输入用户名" v-model="username">
        <input type="password" placeholder="请输入密码" v-model="password">
        <mt-button size="large" class="btn" @click="login">登陆</mt-button>
        <div class="right_a">
            <router-link to="/register">新用户注册</router-link>
        </div>
    </div>
</template>
<script>
import { Toast } from "mint-ui";
import { MessageBox } from 'mint-ui';
export default {
    data(){
        return{
            username:'',
            password:'',
            h_name:''
        }
    },
    methods:{
        login(){
            if(this.username!==''){
                this.axios.post('/login',this.qs.stringify({
                    username:this.username,
                    password:this.password
                })).then((res)=>{
                    let code = res.data.code
                    // console.log(code)
                    if(code===0){
                        Toast({
                            message: '用户名不存在',
                            duration: 2000,
                        });
                    }else if(code===1){
                        Toast({
                            message:'密码错误',
                            duration:2000
                        });
                    }else{
                        let name = res.data[0].username
                        let id = res.data[0].u_id
                        // console.log(name,id)
                        this.storageUtil.saveTodos({h_name:name,h_id:id})
                        Toast({
                            message:'欢迎您:'+name,
                            duration: 2000,
                            iconClass: 'icon icon-success'
                        })
                        setTimeout(()=>{
                            this.$router.push('/')
                        },2000)
                    }
                })
            }else{
                Toast({
                    message: '请输入用户名',
                    duration: 2000,
                });
            }
            // console.log(this.h_name)
        }
    },
    mounted(){
         this.h_name = this.storageUtil.readTodos().h_name
    }


}
</script>
<style scoped>
    .login{
        text-align: center;
        padding: 12px;
    }
    .login:first-child{
        margin-top: 58px;
    }
    .login input{
        min-width: 97%;
        height: 23px;
        padding: 5px;
        border: 1px solid #ccc;
        margin:8px 0;
        border-radius: 5px;
        color:#555;
        font-size: 16px;
    }
    .btn{
        background-color: #ff0;
        font-size: 16px;
        color: #535353;
        margin-top: 40px;
    }
    .right_a{
        text-align: right;
        margin-top: 30px;
    }
    .right_a>a{
        text-decoration: none;
        font-size: 14px;
        color: #626262;
    }
</style>
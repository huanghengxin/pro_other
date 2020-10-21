<template>
    <div class="register">
        <my-back></my-back>
        <input placeholder="请输入用户名" type="text" v-model="username">
        <input placeholder="请输入手机号" type="text" v-model="phone">
        <input placeholder="请输入密码" type="password" v-model="password">
        <input placeholder="请输确认密码" type="password" v-model="conpassword">
        <input placeholder="请输入邮箱" type="text" v-model="email">
        <mt-button size="large" class="btn" @click="register">注册</mt-button>
        <div class="right_a">
            <router-link to="/login">已有账号,去登陆</router-link>
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
            conpassword:'',
            email:'',
            phone:'',
            checkusername:''
        }
    },
    methods:{
        register(){
            // MessageBox('提示', '生命周期加载完成');
            let usernameExp = /^[a-zA-Z0-9_]{4,12}$/;
            let emailExp = /([\w\-]+\@[\w\-]+\.[\w\-]+)/;
            let upwdExp = /^[a-zA-Z0-9_]{6,20}$/;
            let phoneExp = /^1[3-9][0-9]{9}$/;
            this.axios.post('/check',this.qs.stringify({
                username:this.username
            })).then((res)=>{
                // this.checkusername = res.data.results
                if(res.data.results.length>0){
                    Toast({
                            message: '用户名已存在',
                            duration: 2000,
                        });
                }else if(!usernameExp.test(this.username)){
                    Toast({
                        message: '用户名格式有误',
                        duration: 2000,
                    });
                }else if(this.phone==""){
                    Toast({
                        message: '手机号不能为空',
                        duration: 2000,
                    });
                }else if(!phoneExp.test(this.phone)){
                    Toast({
                        message: '手机号格式有误',
                        duration: 2000,
                    });
                }else if(!upwdExp.test(this.password)){
                    Toast({
                        message: '密码格式有误',
                        duration: 2000,
                    });
                }else if(this.conpassword!=this.password){
                    Toast({
                        message:'两次密码不一致',
                        duration:2000
                    });
                }else if(!emailExp.test(this.email)){
                    Toast({
                        message:'邮箱格式有误',
                        duration:2000
                    });
                }else{
                    this.axios.post('/register',this.qs.stringify({
                            username:this.username,
                            password:this.password,
                            email:this.email,
                            phone:this.phone
                        })
                    ).then(
                        Toast({
                            message:`注册成功,即将跳转注册`,
                            duration: 3000,
                            iconClass: 'icon icon-success'
                        })
                    )
                    setTimeout(()=>{
                            this.$router.push('/login')
                    },3000)
                }
            })
        }
    }
}
</script>
<style scoped>
    .register{
        text-align: center;
        padding: 12px;
    }
    .register input{
        min-width: 97%;
        height: 23px;
        padding: 5px;
        border: 1px solid #ccc;
        margin:8px 0;
        border-radius: 5px;
        color:#555;
        font-size: 16px;
    }
    input::-webkit-input-placeholder{
        font-weight: 400;
        color: #aaa !important;
    }
    .register:first-child{
        margin-top: 58px;
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
<template>
    <div>
        <div class="register">
            <img src="../assets/login/login.jpg" alt="">
            <div>
                <table class="table_style">
                    <tr>
                        <td><span>用户名</span></td>
                        <td>
                            <input type="text" v-model="username"
                            @blur="checkUsername">
                        </td>
                        <td><span :class="changeUsername">{{usernameTishi}}</span></td>
                    </tr>
                    <tr>
                        <td><span>邮箱</span></td>
                        <td>
                            <input type="email" v-model="userEmail"
                            @blur="checkEmail">
                        </td>
                        <td><span :class="changeEmail">{{userEmailTishi}}</span></td>
                    </tr>
                    <tr>
                        <td><span>密码</span></td>
                        <td>
                            <input type="password" v-model="upwd"
                            @blur="checkUpwd">
                        </td>
                        <td>
                            <span :class="changeUpwd">{{upwdTishi}}</span>
                        </td>
                    </tr>
                    <tr>
                        <td><span>再次输入密码</span></td>
                        <td>
                            <input type="password" v-model="conupwd" @blur="checkConupwd">
                        </td>
                        <td>
                            <span :class="changeConupwd">{{conupwdTishi}}</span>
                        </td>
                    </tr>
                </table>
                <div>
                    <button @click="go">注册</button>
                    <router-link to="/login">登陆</router-link>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            username:'',
            usernameTishi:'字母、数字或者下划线 ( 4~12位 )',
            userEmail:'',
            userEmailTishi:'请输入您的邮箱',
            upwd:'',
            upwdTishi:"字母、数字或者下划线 ( 8~20位 )",
            conupwd:'',
            conupwdTishi:'',
            changeUsername:'',
            changeEmail:'',
            changeUpwd:'',
            changeConupwd:'',
        }
    },
    methods:{
        checkUsername(){
            this.axios.post('/check',this.qs.stringify(
                    {
                    username:this.username
                }
                )).then((res)=>{
                    // console.log(res.data.results)
                    if(res.data.results.length>0){
                        this.usernameTishi="用户已存在"
                        this.changeUsername='err'
                        return false
                    }
                }
            )
            let usernameExp = /^[a-zA-Z0-9_]{4,12}$/;
            if(usernameExp.test(this.username)){
                this.usernameTishi='用户名可用'
                this.changeUsername='see'
                return true
            }else{
                this.usernameTishi="用户名格式有误"
                this.changeUsername='err'
                return false
            }
        },
        checkEmail(){
            let emailExp = /([\w\-]+\@[\w\-]+\.[\w\-]+)/;
            if(emailExp.test(this.userEmail)){
                this.userEmailTishi = "邮箱格式正确"
                this.changeEmail = 'see'
                return true
            }else{
                this.userEmailTishi = "邮箱格式有误"
                this.changeEmail = 'err'
                return false
            }
        },
        checkUpwd(){
            let upwdExp = /^[a-zA-Z0-9_]{8,20}$/;
            if(upwdExp.test(this.upwd)){
                this.upwdTishi = '密码格式正确'
                this.changeUpwd = 'see'
                return true
            }else{
                this.upwdTishi = '密码格式有误'
                this.changeUpwd = 'err'
                return false
            }
        },
        checkConupwd(){
            let conupwdExp = /^[a-zA-Z0-9_]{8,20}$/;
            if(conupwdExp.test(this.conupwd) && this.conupwd===this.upwd){
                this.conupwdTishi = '√'
                this.changeConupwd = 'see'
                return true
            }else{
                this.conupwdTishi = '密码与上次不一致'
                this.changeConupwd = 'err'
                return false
            }
        },
        go(){
            if(this.checkUsername()&&this.checkEmail()&&this.checkUpwd()&&this.checkConupwd()){
                // console.log('发送请求')
                // let data = this.username+'&'+this.userEmail+'&'+this.upwd
                this.axios.post('/register',this.qs.stringify(
                    {
                    username:this.username,
                    password:this.upwd,
                    email:this.userEmail
                }
                )).then(function(res){
                    if(res.status===200){
                        window.alert('注册完成,请前往登陆')
                        window.open('http://localhost:8080/login',"_self")
                    }
                })
                
            }
            else{
                window.alert('请先完成以上内容')
            }
        }
    }
}
</script>
<style scoped>
    .err{
        color: red;
    }
    .see{
        color: green;
    }
    .register{
        border-top: solid #3D3D3D 1px;
        background-color: #000;
        display: flex;
        justify-content: center;
    }
    .register>img{
        display: block;
        width: 40%;
        height: 40%;
        /* width: 750px; */
        margin: 5% 0 0 0;
    }
    .register>div{
        margin: 10% 0;
        border-radius: 5px;
        height: auto;
        font-size: 13px;
        color: #aaa;
        background-color: #262626;
        height: 450px;
    }
    .register>div>table span{
        padding: 0 10px;
    }
    .register>div>table td{
        width: 130px;
    }
    .table_style{
        margin-top: 30px;
    }
    .register>div>table input{
        outline: none;
        padding-left: 10px;
        height: 32px;
        line-height: 32px;
        font-size: 15px;
        color: #aaa;
        border: 1px solid #ddd;
        width: 255px;
        margin: 10px;
        border-radius: 5px;
    }
    .register>div>div{
        border-top: solid 1px white;
        margin: 20px;
        display: flex;
        justify-content: space-between;
        padding-top: 60px;
    }
    .register>div>div>button{
        border: none;
        display: block;
        border-radius: 5px;
        width: 82px;
        height: 40px;
        background-color: #EFC17C;
        font-size: 16px;
    }
    .register>div>div>button:focus{
        outline: none;
    }
    .register>div>div>a{
        text-decoration: none;
        display: block;
        border-radius: 5px;
        width: 80px;
        height: 38px;
        text-align: center;
        line-height: 38px;
        color: #EFC17C;
        font-size: 16px;
        font-weight: 100;
        border: 1px solid #EFC17C;
    }
</style>
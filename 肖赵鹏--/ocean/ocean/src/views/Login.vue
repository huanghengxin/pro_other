<template>
    <div>
        <div class="register">
            <img src="../assets/login/login.jpg" alt="">
            <div v-show="!uname">
                <table></table>
                <table>
                    <tr>
                        <td><span>用户名</span></td>
                        <td><input type="text" 
                                   v-model="username">
                        </td>
                    </tr>
                    <tr>
                        <td><span>密码</span></td>
                        <td><input type="password"
                                   v-model="upwd">
                        </td>
                    </tr>
                </table>
                <div>
                    <button @click="login">登陆</button>
                    <router-link to="/Register">注册</router-link>
                </div>
            </div>
            <span v-show="uname" class="div_span">你好:<br><br>{{uname}}</span>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            username:'',
            upwd:'',
            id:'',
            uname:''
        }
    },
    methods:{
        login(){
            if(this.username.trim()!=""){
                this.axios.post('/check',this.qs.stringify(
                    {
                        username:this.username,
                        // password:this.upwd
                    }
                    )).then((res)=>{
                        // console.log(res.data.results)
                        // console.log(res.data.password)
                        // console.log(this.upwd)
                        if(res.data.results.length<1){
                            alert('用户名不存在')
                            console.log('用户名存在')
                        }else if(res.data.results[0].password===this.upwd){
                            this.storageUtil.saveTodos({uname:this.username})
                            alert('欢迎您:'+this.username)
                            setTimeout(()=>{
                            window.open("http://localhost:8080", "_self");
                            // this.$router.push('/')
                            },1000)
                        }else(
                            alert('密码错误')
                        )
                    }
                )
            }
        }
    },
    mounted(){
        this.uname = this.storageUtil.readTodos().uname
    }
}
</script>
<style scoped>
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
        margin: 5% 0 0 0;
    }
    .register>div{
        margin: 10% 0;
        border-radius: 5px;
        height: auto;
        font-size: 13px;
        color: #aaa;
        background-color: #262626;
    }
    .div_span{
        margin: 20% 0;
        font-size: 16px;
        font-weight: 100 !important;
        color: #EFC17C;
    }
    .register>div>table{
        margin-top: 30px;
        padding: 20px;
    }
    .register>div>table td{
        padding: 0 10px;
        width: 130px;
    }
    .register>div>table input{
        padding-left:10px;
        outline: none;
        height: 32px;
        line-height: 32px;
        font-size: 15px;
        color: #aaa;
        border: 1px solid #ddd;
        width: 260px;
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
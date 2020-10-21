<template>
    <div name="loginRegister">
            <register></register>
        <div class="loginR-title">
            <div @click="AccountShow()">
                <span :class="{loginShow : active}">账号注册</span>
            </div>
            <div @click="phoneShow()">
                <span  :class="{loginShow : cative}">手机号注册</span>
            </div>
        </div>
         <!-- 注册框 -->
        <div class="enter">
            <div v-if="accountS">
            <div class="login-uname">
                <span>账号</span>
                <input type="text" 
                placeholder="请输入账号"
                v-model="emname"
                >
            </div>

            <div class="login-password">
                <span>密码</span>
                <input type="password" 
                    placeholder="请输入密码"
                    v-model="password">
            </div>

            <div class="login-cassword">
                <span>确认密码</span>
                <input type="password" 
                    placeholder="请确认密码"
                    v-model="checkpassword">
            </div>
            <!-- 提交注册 -->
             <van-button round type="info" 
                size="small"
                :blok="true"
                class="button"
                text="立即注册"
                color="#FF4E00"
                @click="emailput()"
                >免费注册</van-button>
        </div>
            <!-- 手机号注册 -->
         <div v-else-if="phoneS">
            <div class="login-uname">
                <span style="margin-right:20px;">手机号</span>
                <input type="text" 
                placeholder="请输入手机号码"
                v-model="username"
                @blur="phcheck()">
            </div>

            <div class="login-password">
                <span>密码</span>
                <input type="password" 
                    placeholder="请输入账户密码"
                    v-model="password"
                    @blur="phCheckPwd()">
            </div>

            <div class="login-cassword">
                <span>确认密码</span>
                <input type="password" 
                    placeholder="请确认账户密码"
                    v-model="checkpassword"
                    @blur="phCheckCpwd()">
            </div>
            <!-- 提交注册 -->
             <van-button round type="info" 
                size="small"
                :blok="true"
                class="button"
                text="立即注册"
                color="#FF4E00"
                @click="phoneput()"
                >免费注册</van-button>
        </div>
    
          <span style="color:#999; font-size:12px;text-align: center; width:100%; display: block; " @click="forget()" >已有账号?立即登录</span>
            <!-- 注册框结束 -->
        </div> 
        
        <!-- 唯一父元素 -->
    </div>
</template>

<script>
import register from '../components/register'
import { Toast } from 'vant'
export default {
    components:{
        register
    },
    data(){
        return{
          username: '',
          password: '',
          checkpassword:'',
          emname:'',
            // show显示隐藏
           accountS:true,
           phoneS:true,
           active:true,
           cative:false

        }
    },
    methods:{
        AccountShow(){
            console.log('账号注册')
            // 注册页面显示隐藏
            if(this.accountS=true){
              this.phoneS=false
            };  
            // 标签样式
            if(this.active=true){
                 this.cative=false
            };
        },
        phoneShow(){    
            console.log('手机号注册')
             // 注册页面显示隐藏
            if(this.phoneS=true){
                this.accountS=false
            };
             // 标签样式
            if(this.cative=true){
                this.active=false
            };
        },
        // 失去焦点验证手机号格式
        phcheck(){
            let phReg=/^1[3456789]\d{9}$/;
            if(!phReg.test(this.username)){
               Toast({
                message: "请输入正确手机号码",
                });                                                               
            }
        },
        // 失去焦点验证密码
        phCheckPwd(){
            let phpwdReg=/\d{6,12}/;
            if(!phpwdReg.test(this.password)){
                 Toast({
                message: "请输入正确密码",
                })
            }
        },
        // 验证两次密码一致性
        phCheckCpwd(){
            if(this.password != this.checkpassword){
                Toast({
                message: "两次密码不一致",
                })
            }
        },
        phoneput(){
            console.log(222)
            if(this.username==true || this.password==true || this.checkpassword==this.password){
                console.log('登录成功')
                this.axios.post('/user','username=' + this.username + '&password=' + this.password).then(res=>{
                    console.log(res)
                    if(res.data.code==0){
                        Toast({
                        message: "该手机号被注册",
                        })
                    }else{
                        Toast({
                        message: "注册成功",
                        })
                        setTimeout(()=>{
                            Toast({
                            message: "正在跳转首页...",
                            })
                           this.$router.push({path:'person'}) 
                        },4000)
                         
                    }
                })
            }
            
        },
        emailput(){
             console.log(111)
            //  let emReg=/^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
            //  if(emReg.test(this.emname)){
            //      alert('格式正确')
            //  }else{
            //      alert('错误')
            //  }
        },
        forget(){
            this.$router.push({path:'login'}) 
        }
    }
}
</script>

<style scoped>
.loginR-title{
    display: flex;
    justify-content: space-around;
    font-size: 12px;

}
.loginShow{
    color: #FF4E05;;
    border-bottom: 0.1px solid#FF4E05;
    height: 25px;
    display: inline-block;
    padding: 0 5px;
    
}
.enter{
    margin: 20px 40px;
    font-size: 14px;
}
.login-uname{
    border-bottom: 1px solid #e8e8e8;
}
.login-uname input{
    height: 35px;
    font-size: 12px;
    color: #34495e;
    border: none;
    padding: 5px 1px;
    width: 70%;
    cursor: text;
}
.login-uname span{
    height: 30px;
    margin-right:30px;
}
.login-password{
    border-bottom: 1px solid #e8e8e8;
}
.login-password input{
    height: 35px;
     font-size: 12px;
    color: #34495e;
    border: none;
    padding: 5px 1px;
    width: 70%;
    cursor: text;
}
.login-password span{
    height: 30px;
    margin-right:30px;
}
.login-cassword{
    border-bottom: 1px solid #e8e8e8;
}
.login-cassword input{
    height: 35px;
     font-size: 12px;
    color: #34495e;
    border: none;
    padding: 5px 1px;
    width: 70%;
    cursor: text;
}
/* 按钮样式 */
.button{
     margin:15px 0; 
     width:100%;
     height:35px; 
     font-size: 14px;
     letter-spacing: 1px;
}
</style>
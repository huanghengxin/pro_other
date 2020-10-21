<template>
  <div name="login">
    <register></register>
    <div class="login-account">
      <span>账号登陆</span>
    </div>

    <!-- 登陆注册 -->
    <div class="enter">
      <div class="login-uname">
        <span>账号</span>
        <input type="text" placeholder="请输入账号" v-model="username" @blur="loginPhone" />
      </div>

      <div class="login-password">
        <span>密码</span>
        <input type="password" placeholder="请输入密码" v-model="password" @blur="loginPassword" />
      </div>

      <div>
        <van-button
          round
          type="info"
          size="small"
          :blok="true"
          style="margin:20px 0 0 0; "
          class="button"
          color=" #FF4E00"
          @click="loginPut()"
        >登陆</van-button>

        <van-button
          round
          type="info"
          size="small"
          :blok="true"
          class="button"
          text="立即注册"
          color="#FF4E00"
          plain
          to="loginRegister"
        >立即注册</van-button>
      </div>
      <span style="color:red; font-size:12px; float:right;" @click="forget()">忘记密码？</span>
    </div>
  </div>
</template>

<script>
import { Toast } from "vant";
import register from "../components/register";
export default {
  components: {
    register,
  },
  data() {
    return {
      username: "",
      password: "",
    };
  },
  methods: {
    loginPhone() {
      let phReg = /^1[3456789]\d{9}$/;
      if (!phReg.test(this.username)) {
        Toast({
          message: "请输入正确手机号码",
        });
      }
    },
    loginPassword() {
      let phpwdReg = /\d{6,12}/;
      if (!phpwdReg.test(this.password)) {
        Toast({
          message: "请输入正确密码",
        });
      }
    },
    loginPut() {
      console.log(this.username);
      if (this.username == "" || this.password =="" ) {
        Toast({
          message: "账号或者密码不能为空",
        });
         }else if(this.username!="" && this.password!=""){
             this.axios.post("/pwd","loginname=" + this.username + "&password=" + this.password)
          .then((res) => {
            console.log(res);
            if (res.data.code == 0) {
              Toast({
                message: "账号或者密码错误",
              });
            } else {
              Toast({
                message: "登录成功",
                
              });
              this.$store.commit('login_set',res.data.result[0]);
              sessionStorage.setItem('userid',res.data.result[0].id)
              sessionStorage.setItem('username',res.data.result[0].phone)
                this.$router.push('person')
            }
          });
      }
    },
    forget(){

    }
  },
};
</script>

<style scoped>
* {
  padding: 0;
  margin: 0;
}
.parent-login-img span {
  position: absolute;
  z-index: 80;
  width: 30px;
  height: 25px;
  background: #fff;
  top: 15px;
  padding-right: 8px;
  border-top-right-radius: 18px;
  border-bottom-right-radius: 18px;
  text-align: center;
}
.parent-login-img span img {
  height: 20px;
  display: block;
  margin: 2px 0 0 8px;
}

.login-account {
  display: block;
  width: 100%;
  text-align: center;
  margin: 0 auto;
  height: 20px;
}
.login-account :first-child {
  color: #ff4e05;
  border-bottom: 0.1px solid#FF4E05;
  height: 25px;
  display: inline-block;
  padding: 0 5px;
  font-size: 12px;
}
/* 登陆 */
.enter {
  margin: 50px 40px;
}
.login-uname {
  border-bottom: 1px solid #e8e8e8;

  /* background-color: #34495e; */
}
.login-uname input {
  height: 35px;
  font-size: 14px;
  color: #34495e;
  border: none;
  padding: 5px 1px;
  width: 70%;
  cursor: text;
}
.login-uname span {
  width: 30px;
  height: 30px;
  text-indent: -9999px;
  display: inline-block;
  background: url(http://tianhehupo.com/template/wap/default_new/public/images/username.png)
    no-repeat;
  background-size: 30px 30px;
  position: relative;
  top: -8px;
}
.login-password {
  border-bottom: 1px solid #e8e8e8;

  /* background-color: #34495e; */
}
.login-password input {
  height: 35px;
  font-size: 14px;
  color: #34495e;
  border: none;
  padding: 5px 1px;
  width: 70%;
  cursor: text;
}
.login-password span {
  width: 30px;
  height: 30px;
  text-indent: -9999px;
  display: inline-block;
  background: url(http://tianhehupo.com/template/wap/default_new/public/images/password.png)
    no-repeat;
  background-size: 30px 30px;
  position: relative;
  top: -8px;
}
.button {
  margin: 15px 0;
  width: 100%;
  height: 35px;
  font-size: 14px;
  letter-spacing: 1px;
}
</style>
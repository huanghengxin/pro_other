<template>
  <!-- 父元素div开始 -->
  <div >
    <!-- 弹性父元素 -->
    <div class="prent" >
      <!-- 左侧详情div -->
      <div class="Fleft" >
        <div>
          <img src="../assets/logo1.png" alt />
        </div>
        <div>
          <a href="#">
            <div style="display: block; margin:6px;">
              <img src="../assets/icon05.png" alt />
            </div>
            <span @click="open()">{{ctname}}</span>
          </a>
          <!-- 二级下拉菜单 -->
          <!-- transition包裹二级菜单,添加过度效果 -->
          <transition name="show">
            <ul class="city" v-show="show">
              <li style="text-align: right;">
                <img src="../assets/icon05.png" alt style="float:left;" />
                <router-link to="/">{{ctname}}</router-link>
              </li>
              <li></li>
              <li style="border-bottom:1px solid ;"></li>
              <li @click="shanghai">
                <router-link to="/">上海市</router-link>
              </li>
              <li @click="hangzhou">
                <router-link to="/">杭州市</router-link>
              </li>
              <li>
                <router-link to="/">苏州市</router-link>
              </li>
              <li>
                <router-link to="/">北京市</router-link>
              </li>
            </ul>
          </transition>
        </div>
        <!-- 所有产品的父级元素 -->
        <div>
          <a href="#">
            <div style="display: block; margin:9px;">
              <img src="../assets/icon01.png" alt />
            </div>
            <span @click="cake()">所有产品</span>
          </a>
          <!-- 下拉菜单的滑动效果 -->
          <transition name="showcake">
            <div v-show="show2" class="cake1">
              <router-link to="/">
                <h3 style="margin-top:5px;">所有蛋糕</h3>
              </router-link>
              <ul class="city">
                <li @click="opentaste">
                  <router-link to="/">口味筛选</router-link>
                  <img src="../assets/top-1.png" style="width:20px;" />
                </li>
                <!-- 口味筛选下的三级下拉 -->
                <ul class="cake1" v-show="showtaste">
                  <li>
                    <router-link to="/">拿破仑系列</router-link>
                  </li>
                  <li>
                    <router-link to="/">奶油系列</router-link>
                  </li>
                  <li>
                    <router-link to="/">慕斯系列</router-link>
                  </li>
                  <li>
                    <router-link to="/">芝士系列</router-link>
                  </li>
                  <li>
                    <router-link to="/">巧克力系列</router-link>
                  </li>
                  <li>
                    <router-link to="/">咖啡系列</router-link>
                  </li>
                  <li>
                    <router-link to="/">坚果系列</router-link>
                  </li>
                  <li>
                    <router-link to="/">水果系列</router-link>
                  </li>
                  <li>
                    <router-link to="/">冰淇淋系列</router-link>
                  </li>
                </ul>
                <!-- 场景筛选的下拉菜单 -->
                <li @click="closetaste">
                  <router-link to="/">场景筛选</router-link>
                  <img src="../assets/bottom-2.png" style="width:20px;" />
                  <ul class="cake1" style="font-size:14px" v-show="showclose">
                    <li>
                      <router-link to="/">生日</router-link>
                    </li>
                    <li>
                      <router-link to="/">聚会</router-link>
                    </li>
                    <li>
                      <router-link to="/">情侣</router-link>
                    </li>
                    <li>
                      <router-link to="/">儿童</router-link>
                    </li>
                    <li>
                      <router-link to="/">长辈</router-link>
                    </li>
                    <li>
                      <router-link to="/">下午茶</router-link>
                    </li>
                  </ul>
                </li>
                <!-- 场景下拉菜单结束 -->
              </ul>
              <router-link to="/">
                <h3>所有小食</h3>
              </router-link>
              <h3>
                <router-link to="/" style="margin:0;">所有配件</router-link>
              </h3>
              <input type="text" class="inputborder" />
            </div>
            <!-- 二级菜单结束 -->
          </transition>
          <!-- 产品下面的二级菜单 -->
        </div>
        <div>
          <a href="#">
            <div style="display: block; margin-bottom:5px;">
              <img src="../assets/home.png" alt />
            </div>
            <span>首页</span>
          </a>
        </div>
        <div>
          <a href="#">
            <div style="display: block; margin-bottom:5px;">
              <img src="../assets/1.png" alt />
            </div>
            <span>蛋糕</span>
          </a>
        </div>
        <div>
          <a href="#">
            <div style="display: block; margin-bottom:5px;">
              <img src="../assets/2.png" alt />
            </div>
            <span>小食</span>
          </a>
        </div>
        <div>
          <a href="#">
            <div style="display: block; margin-bottom:5px;">
              <img src="../assets/3.png" alt />
            </div>
            <span>最新活动</span>
          </a>
        </div>
        <div>
          <a href="#">
            <div style="display: block; margin-bottom:5px;">
              <img src="../assets/4.png" alt />
            </div>
            <span>银行活动</span>
          </a>
        </div>
        <div>
          <a href="#">
            <div style="display: block; margin-bottom:5px;">
              <img src="../assets/5.png" alt />
            </div>
            <span>会员中心</span>
          </a>
        </div>

        <!--左侧详情div结束 -->
      </div>
      <!-- 右侧注册div -->

      <div class="Fright" style="justify-content: flex-end;">
        <div @click="loginBox">
          <a href="#">
            <div style=" ">
              <img src="../assets/4.png" alt />
            </div>
            <span>注册 | 登录</span>
          </a>

          <!-- 登录注册div结束 -->
        </div>

        <div>
          <a href="#">
            <div style=" ">
              <img src="../assets/bag1.png" style="width:32px;" />
            </div>
            <span>购物车</span>
          </a>
        </div>
        <div style="width:130px;">
          <a href="#">
            <div style="margin:8px;">
              <img src="../assets/icon02.png" alt />
            </div>
            <span>更多</span>
          </a>
        </div>
        <!-- 右侧注册div结束 -->
      </div>
    </div>
    <!-- 父元素div结束 -->
    <!-- 登录注册二级菜单 -->
    <div class="register" v-show="login">
      <div class="spaceBetween">
        <img src="../assets/login.png" alt />
        <span style="font-size:14px;">未登录</span>
      </div>
      <!-- 账号密码div -->
      <div class="spaceBetween" >
        <div @click="Account" style="cursor:pointer;">
          账号密码登录
        </div>
         <div @click="Account2" style="cursor:pointer;">
          手机验证码登录
        </div>
        
      </div>
      <!-- 登录状态动态输入框 -->
      <div >
        <!-- 密码登录 -->
        <div v-show="AccountBox">
           <input
          type="text"
          class="inputborder"
          placeholder="请输入用户名"
          v-model="username"
          @blur="checkname"
           style="z-index:10;"
        />
        <span v-show="lose"><img src="../assets/succeed.png" alt="" v-show="succeed"><img src="../assets/lose.png" alt="" v-show="!succeed"></span>
        <input
          type="password"
          class="inputborder"
          placeholder="请输入密码"
          v-model="password" 
          @blur="chekpassword"
          style="z-index:10;"
        />
        <span v-show="lose2"><img src="../assets/succeed.png" alt="" v-show="succeed2"><img src="../assets/lose.png" alt="" v-show="!succeed2"></span>
        </div>
        <!-- 手机号登录输入框 -->
        
       <div  v-show="!AccountBox">
           <input
          type="text"
          class="inputborder"
          placeholder="手机号"
          v-model="username"
          @blur="checkname"
        />
        <!-- 图片验证码 -->
              <div class="my-box">
                  <input type="text"
            class="inputborder"
            placeholder="图片验证码">
                <img src="http://openapi.mcake.com/api/7ba4aed89d17966a/?type=register&t=1596678098737" alt="" style="top:30%">
              </div>
              <!-- 手机验证码 -->
            <div class="my-box">
               <input type="text"
            class="inputborder"
            placeholder="手机验证码"
            ><span @click="authCode" style="top:44%">点击发送验证码</span>
            </div>
         <!-- 手机号登录输入框 -->
       </div>
        <div class="spaceBetween" style="font-size:12px;">
          <router-link to="/"></router-link>
          <router-link to="/">忘记密码</router-link>
        </div>
        <span style="font-size:14px; color:#666;">使用合作网站账号登录</span>
        <div style="margin-top:12px">
          <img src="https://mall.mcake.com/static/img/zhi.png" alt style="padding:5px 10px;" />
          <img src="https://mall.mcake.com/static/img/wei.png" alt style="padding:5px 10px;" />
        </div>
        <div>
          <button class="button" style="background-color: #333; color:#fff;" @click="register">立即注册</button>
          <button class="button" @click="loging">立即登陆</button>
        </div>
      </div>
      <!-- 登录注册二级菜单结束 -->
    </div>
    <!-- 账号注册页面 -->
    <div class="register" v-show="RegisterNone">
      <h3>账号注册</h3>
      <input  type="text"  
              class="inputborder"
              placeholder="手机号码"
              v-model="phone"
              @blur="checkname" >
              <!-- 图片验证码 -->
              <div class="my-box">
                  <input type="text"
            class="inputborder"
            placeholder="图片验证码">
                <img src="http://openapi.mcake.com/api/7ba4aed89d17966a/?type=register&t=1596678098737" alt="">
              </div>
              <!-- 手机验证码 -->
            <div class="my-box">
               <input type="text"
            class="inputborder"
            placeholder="手机验证码"
            ><span @click="authCode">点击发送验证码</span>
            </div>
     
      <input type="password"
            class="inputborder"
            placeholder="密码(8~20位字符)"
            v-model="upwd"
            @blur="chekpassword">
      <input type="password"
            class="inputborder"
            placeholder="确认密码"
            v-model="upwd">
            <!-- 已有账号跳转 -->
          <div class="spaceBetween" style="font-size:12px;">
            <router-link to="/"></router-link>
            <router-link to="/">已有账号,立即登陆</router-link>
          </div>    
        <!-- 同意单选按钮 -->
        <div>
          <input type="checkbox"><span >同意 《MCAKE购物协议》</span>
        </div>
        <!-- 注册按钮 -->
        <div>
             <button class="button" style="background-color: #333; color:#fff;" @click="RegistirOff">取消注册</button>
          <button class="button" @click="loginOff">注册完成</button>
        </div>
    </div>
    <!-- 账号注册页面结束 -->
  </div>
</template>
<style scoped>
* {
  padding: 0;
  margin: 0;
}
/* input 和发送验证码同占一行 */
.my-box input{
  box-sizing: border-box;
  outline: none;
  
}
.my-box span{
position: absolute;
display: block;
left: 51%;
top: 32%;
 background-color: #ffe32a;
 font-size: 14px;
 padding: 8px;
 width: 120px;
}
.my-box img{
  position: absolute;
display: block;
left: 50%;
top: 18%;
 font-size: 14px;
 padding: 8px;
 width: 130px;
 
}
/* 按钮样式 */
.button {
  width: 50%;
  height: 70px;
  background-color: #ffe32a;
  border: none;
}
/* 设置登录注册二级菜单布局格式 */
.spaceBetween {
  display: flex;
  justify-content: space-between;
  margin-top: 15px;
  margin-bottom: 15px;
  padding: 0 40px;
}
/* 账号密码登录去除下划线设置文字颜色 */
.spaceBetween > a {
  text-decoration: none;
  color: #666;
}
.register {
  width: 400px;
  background-color: #fff;
  position: absolute;
  right: 0;
  top: 100px;
  z-index: 10;
  font-size: 18px;
  text-align: center;

}

.prent {
  display: flex;
  
  justify-content: space-between;
  width: 100%;
  height: 100px;
  text-align: center;
  z-index: 999;
  position: fixed;
  background-color: #fff;
}
.Fleft {
  display: flex;
  
}
.Fright {
  display: flex;
  justify-content: flex-end;
}
.Fleft > div:first-child {
  width: 300px;
}
.Fleft > div ~ div {
  font-size: 12px;
  border: 1px solid #e8e8e8;
  padding: 30px 0 0 0;
  border-bottom: 0px;
  border-top: 0px;
  width:100px;
  border-top: 3px solid #ffffff;
}
.Fleft > div + div a {
  color: #666;
  text-decoration: none;
}
.Fleft > div + div + div:hover {
  border-top: 3px solid orange;
}
.Fleft > div + div + div {
  border-left: 5px;
}
.Fright > div {
  font-size: 12px;
  border: 1px solid #e8e8e8;
  padding: 30px 0 0 0;
  border-bottom: 0px;
  border-top: 0px;
  width: 100px;
  border-top: 3px solid #ffffff;
}
.Fright > div a {
  color: #666;
  text-decoration: none;
}
.Fright > div + div {
  border-left: 1px;
}
.city {
  background-color: #fff;
  width: 402px;
  /* border: 1px solid; */
  position: relative;
  list-style: none;
  font-size: 16px;
  margin-top: 15px;
  z-index: 10000;
}
.city > li {
  padding: 10px;
  /* width: 150px; */
  text-align: left;
}
/*city二级下拉菜单开始 */
.show-enter {
  width: 100px;
  height: 400px;
}
.show-enter-active {
  transition: all 1s linear;
  overflow: hidden;
}
.show-enter-to {
  width: 402px;
}
.show-leave {
  width: 402px;
}
.show-leave-active {
  transition: all 1s linear;
  overflow: hidden;
}
.show-leave-to {
  width: 100px;
}
/*三级下拉菜单  */
.showcake-enter {
  height: 0;
  opacity: 0;
}
.showcake-enter-active {
  transition: all 3s linear;
  overflow: hidden;
}
.showcake-enter-to {
  height: 500px;
}
.showcake-leave {
  height: 500px;
}
.showcake-leave-active {
  transition: all 3s linear;
  overflow: hidden;
}
.showcake-leave-to {
  height: 0;
  opacity: 1;
}
.inputborder {
  border-top: 0;
  border-left: 0;
  border-right: 0;
  margin-top: 25px;
  outline: none;
  width: 70%;
  border-bottom: 1px solid #e9e9e9;
  padding-bottom: 8px;
  

}
/* 三级下拉菜单样式 */
.cake1 {
  background-color: #fff;
  width: 402px;
  position: relative;
  list-style: none;
  font-size: 16px;
  margin-top: 15px;
  z-index: 10000;
}
.cake1 > li {
  font-size: 12px;
  padding: 6px;
}
</style>

<script>
export default {
  data() {
    return {
      ctname: "上海市",
      show: false,
      show2: false,
      showclose: false,
      showtaste: false,
      login: false,
      AccountBox: true,
      // 注册V-show 变量
      RegisterNone:false,
      // 保存用户名状态
      username:"",
      // 保存密码状态
      password:"",
      //收集是否登录成功
      loginon:"",
      //保存注册手机号
      phone:'',
      // 保存用户注册密码
      upwd:'',
      succeed:'',
      succeed2:'',
      lose:'',
      lose2:''
    };
  },
  methods: {
    loginOff(){
      this.axios.post('/loginoff',
      this.qs.stringify({
        phone:this.phone,
        upwd:this.upwd
      })).then(res=>{
        this.loginOff=res.data
        // console.log(this.loginOff)
      })
    },
    loging(){
    this.axios.post('/login',
      this.qs.stringify({
        phone:this.username,
        upwd:this.password
      })).then((res)=>{
        this.loginon=res.data
        // console.log(this.loginon)
      })
    },
    open() {
      // if(this.show==false){
      //     this.show=true
      // }else{
      //     this.show=false
      // }
      this.show = !this.show;
    },
    cake() {
      this.show2 = !this.show2;
    },
    shanghai() {
      this.ctname = "上海市";
    },
    hangzhou() {
      this.ctname = "杭州市";
    },
    opentaste() {
      this.showtaste = !this.showtaste;
    },
    closetaste() {
      this.showclose = !this.showclose;
    },
    loginBox() {
      this.login = !this.login;
    },
    Account() {
      this.AccountBox = true;
    },
    Account2() {
      this.AccountBox = false;
    },
    // 注册事件绑定
    register(){
      this.RegisterNone=!this.RegisterNone;
    },
    RegistirOff(){
      this.RegisterNone=false;
    },
    checkname() {
      // let username = this.username;
      let checkReg = /^1[345789]\d{9}$/;
      if (checkReg.test(this.username)) {
        this.lose=1
        // return ;
        // console.log(checkReg)
        this.succeed=1
      }else{
        this.lose=1
        // console.log("请输入正确用户名");
        this.succeed=""
        // return
      }
      
    },
    chekpassword() {
      let checkpasswordReg = /^[a-zA-Z]\w{3,15}$/;
      // let password = this.password;
      if (checkpasswordReg.test(this.password)) {
        // return true;
        this.lose2=1
        this.succeed2=1
      } else {
        // console.log("请输入正确密码");
        this.lose2=1
        this.succeed2=""
      }
    },
    // 发送验证码事件
    authCode(){
    },

    
  },
  mounted() {
   
  },
};
</script>
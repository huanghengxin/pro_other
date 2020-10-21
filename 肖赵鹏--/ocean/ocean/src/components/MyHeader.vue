<template>
  <div @scroll="handleScroll" id="ref">
    <div class="header">
      <span>Ocean Breeze Australia</span>
      <ul class="list-unstyled1">
        <span class="haha" v-if="uname!==undefined">你好 : {{uname}}</span>
        <li>
          <span @click="on" class="shou">
            <img src="../assets/img/ss.png" alt />
          </span>
        </li>
        <li>
          <router-link to="/login">
            <img src="../assets/img/me.png" alt />
          </router-link>
        </li>
        <li>
          <router-link to="/shopcar">
            <img src="../assets/img/car.png" alt />
          </router-link>
        </li>
        <span class="haha" v-if="uname!==undefined" @click="show_out">退出</span>
        <div class="out" v-show="out_">
          <span @click="out" class="queren">确认</span><span @click="clear_out" class="queren">取消</span>
        </div>
      </ul>
      <table class="clear"></table>
    </div>
    <div class="header2">
      <router-link to="/">
        <img src="../assets/img/left.png" alt />
      </router-link>
      <ul class="list-unstyled2">
        <li>
          <router-link to="/">主页</router-link>
        </li>
        <li>
          <router-link to="/shop">店</router-link>
        </li>
        <li>
          <router-link to="/product">产品</router-link>
        </li>
        <li>
          <router-link to="/about">关于</router-link>
        </li>
        <li>
          <router-link to="/find">发现</router-link>
        </li>
        <li>
          <router-link to="/contact">联系</router-link>
        </li>
      </ul>
      <table class="clear"></table>
    </div>
    <div v-show="show" class="show" @click="close">
      <div class="show_child">
        <p class="p_style">搜索</p>
        <input
          type="text"
          placeholder="关键字"
          v-model="something"
          class="input_style"
          @keyup.enter="search"
        />
        <div class="foot_style">
          <button @click="close">取消</button>
          <button @click="search">查找</button>
        </div>
      </div>
    </div>
    <div class="goTop" v-show="goTop" @click="toTop">
      <!-- <img src="../assets/toTop.png" alt=""> -->
    </div>
  </div>
</template>
<script>
export default {
  
  data() {
    return {
      show: false,
      something:"",
      goTop: false,
      uname:'',
      out_:false
    };
  },
  methods: {
    on() {
      this.show = true;
    },
    close(e) {
      let e1 = e.currentTarget;
      let e2 = e.target;
      if (e1 === e2) {
        this.show = false;
      }
    },
    search() {
      if(this.something.trim()!=""){
        // console.log(this.something)
        this.$router.push('/emptypage/'+this.something)
        // alert("发送请求查询 " + this.something + " 的请求 ");
        this.something=''
        this.show = false
      }
    },
    handleScroll() {
      var scrollTop =
        window.pageYOffset ||
        document.documentElement.scrollTop ||
        document.body.scrollTop;
      if (scrollTop > 400) {
        this.goTop = true;
      } else if (scrollTop <= 400) {
        this.goTop = false;
      }
    },
    toTop() {
      // alert("000")
      scrollTo(0, 0);
    },
    show_out(){
      this.out_=true
    },
    clear_out(){
      this.out_=false
    },
    out(){
      // this.storageUtil.saveTodos({uname:''})
      window.localStorage.clear();
      window.open("http://localhost:8080", "_self");

    }
  },
  mounted() {
    window.addEventListener("scroll", this.handleScroll, true);
    // this.storageUtil.saveTodos({uname:''})
    this.uname = this.storageUtil.readTodos().uname
  },
};
</script>
<style scoped>
.haha{
  display: block;
  margin: auto;
  margin-top: 20px;
  margin-left: 40px;
  border: 1px solid #efc17c;
  font-size: 14px;
  padding: 0px 10px;
  color: #262626;
  background-color: #efc17c;
  cursor:pointer;
}
.queren{
  display: block;
  margin-bottom: 10px;
  border: 1px solid #efc17c;
  font-size: 14px;
  padding: 0px 10px;
  color: #262626;
  background-color: #efc17c;
  cursor:pointer;
}
.out{
  position: absolute;
  top: 20px;
  right: 0px;
  cursor:pointer;
}
.header {
  background-color: #262626;
  padding: 0 50px;
}
.list-unstyled1 {
  display: flex;
  list-style: none;
  float: right;
  position: relative;
  top: 0px;
  left: 0px;
}
.shou {
  cursor: pointer;
}
.list-unstyled2 {
  display: flex;
  list-style: none;
  float: right;
  margin: 18px 50px 0 0;
}
.header > ul > li {
  padding-left: 30px;
  line-height: 50px;
}
.header > span {
  float: left;
  line-height: 55px;
  color: #999;
  font-size: 12px;
}
.clear {
  clear: both;
}
.header2 {
  background-color: #000;
  padding: 0 50px;
}
.header2 > a {
  display: block;
  outline: none;
}
.header2 > a > img {
  float: left;
  width: 134px;
  padding: 10px 0;
}
.header2 > ul > li > a {
  text-decoration: none;
  margin-left: 55px;
  line-height: 60px;
  color: #efc17c;
  font-size: 14px;
  font-style: 微软雅黑;
  outline: none;
}
.show {
  z-index: 500;
  border: none;
  margin: 0px;
  padding: 0px;
  width: 100%;
  height: 100%;
  top: 0px;
  left: 0px;
  background-color: rgba(0, 0, 0, 0.6);
  cursor: pointer;
  position: fixed;
}
.show_child {
  z-index: 1011;
  position: fixed;
  padding: 20px;
  margin: 0px 0px 0px -20%;
  width: 40%;
  top: 30%;
  left: 50%;
  text-align: center;
  color: rgb(0, 0, 0);
  border: 3px solid rgb(170, 170, 170);
  background-color: rgb(255, 255, 255);
  cursor: auto;
  height: 180px;
}
.input_style {
  border-width: 1px;
  border-style: solid;
  padding: 15px;
  background: #f2f2f2;
  width: 100%;
  text-indent: 6px;
  box-sizing: border-box;
  margin-top: 5px;
  border-radius: 0;
  outline: 0;
  border-color: #ececec;
}
.p_style {
  font-size: 18px;
  text-align: left;
  margin: 20px 0;
}
.foot_style {
  display: flex;
  flex-direction: row-reverse;
  margin-top: 40px;
}
.foot_style > button {
  display: block;
  width: 80px;
  height: 40px;
  text-align: center;
  line-height: 36px;
  font-size: 14px;
  background-color: #fff;
  border: none;
}
.foot_style > button:hover {
  background-color: #f2f2f2;
}
.goTop {
  background: url(../assets/toTop.png) no-repeat center;
  background-color: #262626;
  text-align: center;
  height: 40px;
  width: 40px;
  border-radius: 50%;
  position: fixed;
  bottom: 20px;
  right: 50px;
  z-index: 1000;
}
</style>
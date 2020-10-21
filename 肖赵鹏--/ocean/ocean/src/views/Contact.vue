<template>
  <div>
    <div class="show" v-show="show">
      <p>已接收到您的反馈,我们将尽快与您联系</p>
    </div>
    <div class="header">
      <div>
        <img src="../assets/contact/1.jpg" alt />
        <div>
          <div>
            <p>Ocean Breeze Australia</p>
            <span>by Wonderful Capital Biotechnology Group</span>
          </div>
          <span>411-427 KingWilliam St , Adelaide, SA 5000, Australia</span>
          <br />
          <span>31-39 Norcal Road, Nunawading, VIC 3131, Australia</span>
          <table>
            <tr>
              <td>
                <input type="text" placeholder="姓名*" v-model="uname" @blur="checkUname" />
              </td>
              <td>
                <input type="text" placeholder="邮箱*" v-model="email" @blur="checkEmail" />
              </td>
            </tr>
            <span class="color_red">{{tishi}}</span>
            <tr>
              <td>
                <input type="text" placeholder="电话" v-model="phone" @blur="checkPhone" />
              </td>
            </tr>
            <span class="color_red">{{ptishi}}</span>
            <tr>
              <td colspan="2">
                <textarea
                  placeholder="问题*"
                  class="input_style"
                  rows="3"
                  cols="70%"
                  v-model="question"
                  @blur="sheckQuestion"
                ></textarea>
              </td>
            </tr>
            <span class="color_red">{{qtishi}}</span>
          </table>
          <div>
            <button class="button_style" @click="tijao">提交</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      show: false,
      uname: "",
      email: "",
      phone: "",
      question: "",
      tishi: "",
      ptishi: "",
      qtishi: ""
    };
  },
  methods: {
    checkUname() {
      if (this.uname.trim() == "") {
        this.tishi = "姓名不能为空";
      } else {
        this.tishi = "";
      }
    },
    checkEmail() {
      let emailExp = /([\w\-]+\@[\w\-]+\.[\w\-]+)/;
      if (this.email == "") {
        this.tishi = "邮箱不能为空";
      } else if (!emailExp.test(this.email)) {
        this.tishi = "邮箱格式不正确";
      } else {
        this.tishi = "";
      }
    },
    checkPhone() {
      let phoneExp = /^1[3-9][0-9]{9}$/;
      if (this.phone.trim() == "") {
        this.ptishi = "";
      } else if (!phoneExp.test(this.phone)) {
        this.ptishi = "请输入正确的手机号";
      } else {
        this.ptishi = "";
      }
    },
    sheckQuestion() {
      if (this.question.trim() == "") {
        this.qtishi = "请描述您的问题...";
      } else {
        this.qtishi = "";
      }
    },
    tijao() {
      // if(this.uname!=""&&this.email!=""&&this.question!=""&&this.tishi==''&&this.ptishi==''&&this.qtishi==''){
      //     this.show=true
      //     console.log(this.uname,this.email,this.phone,this.question)
      // }
      let emailExp = /([\w\-]+\@[\w\-]+\.[\w\-]+)/;
      let phoneExp = /^1[3-9][0-9]{9}$/;
      if (this.uname.trim() == "" && this.email.trim() == "") {
        this.tishi = "用户名和邮箱不能为空";
      } else if (this.uname.trim() == "") {
        this.tishi = "姓名不能为空";
      } else if (this.email.trim() == "") {
        this.tishi = "邮箱不能为空";
      } else if (!emailExp.test(this.email)) {
        this.tishi = "邮箱格式有误";
      }

      if (this.question.trim() == "") {
        this.qtishi = "请描述您的问题...";
      }
        

      if( this.question.trim()!==""&&this.email.trim() !== "" && this.uname.trim() !== "" && this.storageUtil.readTodos().uname==undefined){
        alert('您还登陆呢')
      }
      else if (this.tishi == "" && this.ptishi == "" && this.qtishi == "") {
        this.show = true;
        console.log(this.uname, this.email, this.phone, this.question);
        this.axios.get('/contact',{
          params:{
            username:this.uname,
            email:this.email,
            phone:this.phone,
            question:this.question
          }
        })
        setTimeout(()=>{
          // window.open("http://localhost:8080/", "_self");
          this.$router.push('/')
        }, 3000);
      }
    }
  }
};
</script>
<style scoped>
.show {
  z-index: 1011;
  position: fixed;
  padding: 20px;
  margin: 0px 0px 0px -360px;
  width: 720px;
  top: 30%;
  left: 50%;
  text-align: center;
  color: rgb(0, 0, 0);
  border: 1px solid rgb(170, 170, 170);
  background-color: #262626;
  background-color: rgba(0, 0, 0, 0.8);
  height: 180px;
}
.show > p {
  color: #efc17c;
  font-size: 20px;
  margin-top: 74px;
  font-weight: 100;
}
.header {
  background-color: black;
  border-top: 1px solid #3d3d3d;
}
.header > div > img {
  border: 1px solid #3d3d3d;
  width: 25%;
  height: 50%;
  padding: 6px;
  background-color: black;
  margin: 6% 6% 6% 0;
  /* margin-left: 20%; */
}
.header > div > div {
  margin-top: 6%;
}
.header > div > div > div {
  font-size: 24px;
  color: #fff;
  margin-bottom: 47px;
}
.header > div > div > div > p {
  margin: 0;
}
.header > div > div span {
  font-size: 14px;
}
.header > div > div > span {
  padding: 5px 0;
  color: #808080;
}
.header > div {
  display: flex;
  justify-content: center;
}
.header > div > div > table {
  margin-top: 50px;
}
.header > div > div > table input {
  color: rgb(102, 102, 102);
  border: none;
  outline: none;
  background-color: black;
  padding: 10px 8px;
  font-size: 14px;
}
.header > div > div > table td {
  padding: 8px 0;
  border-bottom: 1px solid #efc17c;
}
.input_style {
  border: none;
  padding: 0 8px;
  background-color: black;
  outline: none;
  color: rgb(102, 102, 102);
  font-size: 14px;
}
.button_style {
  outline: none;
  margin-top: 30px;
  width: 118px;
  text-align: center;
  line-height: 34px;
  color: #efc17c;
  font-size: 15px;
  font-weight: 100;
  border: 1px solid #efc17c;
  background-color: black !important;
}
.color_red {
  color: red;
}
</style>
<template>
  <div>
    <my-back></my-back>
    <div class="container">
      <div v-for="(e,i) of list" :key="i" class="d-flex border">
        <input type="checkbox" name="item" checked class="input_checked" :id="i" @click="change(i)" />
        <img :src="e.list_img" alt class="img_style" />
        <!-- 图片右侧 -->
        <div class="rigth">
          <div class="d-flex up">
            <p>{{ e.list_name }}</p>
            <p>￥{{ e.list_price*e.count }}.00</p>
          </div>
          <div class="d-flex up">
            <p class="color-ccc">{{ e.list_spe }}</p>
            <p>×{{ e.count }}</p>
          </div>
          <div class="btn_div">
            <span class="color-ccc mg-top" @click="del(i)">删除</span>
            <div>
              <span class="btn_style" @click="jian(i)">-</span>
              <span class="num_style">{{e.count}}</span>
              <span class="btn_style" @click="add(i)">+</span>
            </div>
          </div>
        </div>
      </div>
      <div class="nonelist" v-show="nul">
        你的购物车空空的,现在去
        <router-link to="/" class="a_style">逛逛</router-link>吧
      </div>
      <mt-tabbar fixed class="foot">
        <p @click="allcheked">全选</p>
        <p @click="delall">删除</p>
        <p>(不含运费) 总计:</p>
        <p>￥{{sum.toFixed(2)}}</p>
        <p @click="buy">下一步</p>
      </mt-tabbar>
    </div>
  </div>
</template>
<script>
import { Toast } from "mint-ui";
import { MessageBox } from "mint-ui";
export default {
  data() {
    return {
      userid: "",
      list: "",
      nul: false,
      timer: "",
      sum: 0,
      thishi: false,
      a: false
    };
  },
  methods: {
    add(i) {
      this.list[i].count++;
      let input = document.getElementById(i)
      if(input.checked==true){
        this.sum += this.list[i].list_price;
      }
      if (this.timer != "") {
        clearTimeout(this.timer);
      }
      this.timer = setTimeout(() => {
        this.axios.get("/update", {
          params: {
            carid: this.list[i].id,
            count: this.list[i].count
          }
        });
      }, 200);
    },
    jian(i) {
      if (this.list[i].count > 1) {
        this.list[i].count--;
        let input = document.getElementById(i)
      if(input.checked==true){
        this.sum -= this.list[i].list_price;
      }
      if (this.timer != "") {
          clearTimeout(this.timer);
        }
        this.timer = setTimeout(() => {
          this.axios.get("/update", {
            params: {
              carid: this.list[i].id,
              count: this.list[i].count
            }
          });
        }, 200);
      }
    },
    change(i) {
      let input = document.getElementById(i).checked;
      if (!input) {
        this.sum -= this.list[i].list_price * this.list[i].count;
      } else {
        this.sum += this.list[i].list_price * this.list[i].count;
      }
    },
    del(i) {
      MessageBox({
        title: "提示",
        message: "确认删除" + this.list[i].list_name + "?",
        showCancelButton: true
      }).then(action => {
        if (action == "confirm") {
          this.axios
            .get("/del", {
              params: {
                carid: this.list[i].id
              }
            })
            .then(() => {
              this.sum -= this.list[i].list_price * this.list[i].count;
              this.list.splice(i, 1);
              this.list.length == 0 ? (this.nul = true) : (this.nul = false);
            });
        }
      });
    },
    delall() {
      let inputs = document.getElementsByTagName("input");
      let a = false;
      inputs.forEach(input => {
        if (input.checked == true) {
          a = true;
        }
      });
      if (a) {
        MessageBox({
          title: "提示",
          message: "确认删除吗?",
          showCancelButton: true
        }).then(action => {
          if (action == "confirm") {
            inputs.forEach(input => {
              if (input.checked == true) {
                this.axios
                  .get("/del", {
                    params: {
                      carid: this.list[input.id].id
                    }
                  })
                  .then(() => {
                    this.axios
                      .get("/car", {
                        params: {
                          userid: this.userid
                        }
                      })
                      .then(res => {
                        this.list = res.data;
                        this.list.length == 0
                          ? (this.nul = true)
                          : (this.nul = false);
                      });
                  });
              }
            });
          }
          this.sum = 0;
          inputs.forEach(input => {
            input.checked = false;
          });
        });
      }
    },
    buy() {
      let inputs = document.getElementsByTagName("input");
      inputs.forEach(input => {
        if (input.checked == true) {
          this.a = true;
        }
      });
      if (this.a) {
        if (this.timer != "") {
          clearTimeout(this.timer);
        }
        this.timer = setTimeout(() => {
          inputs.forEach(input => {
            if (input.checked == true) {
              let inputid = input.id
              // console.log(this.list[inputid])
              this.axios.get("/del", {
                params: {
                  carid: this.list[inputid].id
                }
              });
              this.axios.get("/buy", {
                params: {
                  userid: this.list[inputid].user_id,
                  listid: this.list[inputid].list_id,
                  speid: this.list[inputid].spe_id,
                  count: this.list[inputid].count
                }
              });
            }
          });
          Toast({
            message: "购买信息已发出,即将跳转",
            duration: 2000
          });
          setTimeout(() => {
            this.$router.push("/");
          }, 2000);
        }, 500);
      }
    },
    allcheked() {
      let inputs = document.getElementsByTagName("input");
      if (inputs.length > 0) {
        if (inputs[0].checked == true) {
          inputs.forEach(input => {
            input.checked = false;
          });
          this.sum = 0;
        } else {
          inputs.forEach(input => {
            input.checked = true;
          });
          this.list.forEach(e => {
            this.sum += parseInt(e.list_price) * parseInt(e.count);
          });
        }
      }
    }
  },
  created() {
    this.userid = this.$route.params.id;
    this.axios
      .get("/car", {
        params: {
          userid: this.userid
        }
      })
      .then(res => {
        this.list = res.data;
        this.list.forEach(e => {
          this.sum += parseInt(e.list_price) * parseInt(e.count);
        });
        this.list.length == 0 ? (this.nul = true) : (this.nul = false);
      });
  },
  mounted() {}
};
</script>
<style scoped>
.container {
  margin: 40px 0 150px;
  font-size: 14px;
  color: #626262;
  padding: 5px;
  font-family: "Helvetica Neue", Helvetica, STHeiTi, sans-serif;
}
.border {
  padding: 5px;
  margin: 5px 0;
  border-bottom: 1px solid rgb(236, 234, 234);
}
.d-flex {
  display: flex;
  justify-content: space-between;
}
.input_checked {
  margin-top: 10%;
  margin-right: 3%;
}
.rigth {
  padding: 5px;
  width: 70%;
}
.btn_style {
  border: 1px solid #ccc;
  padding: 5px 10px;
}
.num_style {
  text-align: center;
  line-height: 26px;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  display: inline-block;
  width: 50px;
}
.mg-top {
  margin-top: 8px;
}
.color-ccc {
  color: #ccc;
  margin-right: 15px;
}
.btn_div {
  display: flex;
  justify-content: flex-end;
}
.img_style {
  width: 80px;
  height: 80px;
}
.up {
  margin-bottom: 10px;
}
.foot {
  background: #ededed;
  overflow: hidden;
  padding: 10px;
  /* height: 30px; */
  margin: 0 0 50px;
  color: #626262;
  font-size: 13px;
  line-height: 28px;
}
.foot > p:first-child {
  width: 8%;
}
.foot > p:nth-child(2) {
  margin: 0 2%;
  width: 8%;
}
.foot > p:nth-child(3) {
  width: 27%;
  margin: 0 3% 0 5%;
}
.foot > p:nth-child(4) {
  width: 20%;
  color: #2093cc;
  margin-right: 4%;
}
.foot > p:last-child {
  text-align: center;
  width: 22%;
  background: #ff0;
}
.nonelist {
  text-align: center;
  margin-top: 100px;
}
.a_style {
  text-decoration: none;
  color: #2093cc;
}
</style>

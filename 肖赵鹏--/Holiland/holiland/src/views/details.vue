<template>
  <div>
    <my-back></my-back>
    <div class="centainer">
      <!-- 轮播图 -->
      <mt-swipe :auto="2000" v-if="swiper.length > 0">
        <mt-swipe-item v-for="(e, i) of swiper" :key="i">
          <img :src="e.img" alt="" class="img_style" />
        </mt-swipe-item>
      </mt-swipe>
      <!-- 名字和价格 -->
      <div class="top_div">
        <span class="font-size14">{{ list.name }}</span>
        <p class="price_style">{{ list.price }}.00</p>
      </div>
      <!-- 规格 -->
      <div class="sp_style" v-show="show">
        <span class="sp_style_first_child">规格：</span>
        <span class="sp_style_first_child" v-for="(e, i) of spe" :key="i">{{
          e.specification
        }}</span>
      </div>
      <!-- 下部详情图片 -->
      <div>
        <div v-for="(e, i) of details" :key="i">
          <img v-lazy="e.details" alt="" />
        </div>
      </div>
    </div>
    <div class="position">
      <span @click="open1" class="position_span_style">加入购物车</span>
      <span class="position_span_style position_span" @click="open2"
        >立即购买</span
      >
      <!-- 有分类的 -->
      <mt-popup v-model="popupVisible" position="bottom" class="popupvisible">
        <div class="pop_div">
          <div class="pop_div_top">
            <div>
              <img :src="list.img" alt="" class="title_img" />
              <div class="zongjia">
                <p>{{ list.name }}</p>
                <p>{{ spe_price*btnnum2}}.00</p>
              </div>
            </div>
            <img
              @click="close"
              src="http://m.holiland.com/mobile/script/images/ico-close.png"
              alt=""
              class="out_img"
            />
          </div>
          <div class="zhongbu_style">
            <div>
              规格:
            </div>
            <div id="done">
              <span class="zhongbu_style_span" :id="e.id" font-size14 v-for="(e, i) of spe" :key="i" @click="select(e.id)">{{e.specification}}</span>
            </div>
          </div>
        </div>
        <div class="none_style">
            <p class="center_style">数量:</p>
            <div>
              <p @click="minus2" class="btn_style">-</p>
              <p class="center_style">{{ btnnum2 }}</p>
              <p @click="add2" class="btn_style">+</p>
            </div>
          </div>
        <button class="btn_color" @click="have_spe_gocar" v-show="car">下一步</button>
        <button class="btn_color" @click="have_spe_gobuy" v-show="buy">下一步</button>
      </mt-popup>
      <!-- 没有分类的 -->
      <mt-popup v-model="popupVisible2" position="bottom" class="popupvisible">
        <div>
          <div class="pop_div_top">
            <div>
              <img :src="list.img" alt="" class="title_img" />
              <div class="zongjia">
                <p>{{ list.name }}</p>
                <p>￥{{ list.price * btnnum1 }}.00</p>
              </div>
            </div>
            <img
              @click="close"
              src="http://m.holiland.com/mobile/script/images/ico-close.png"
              alt=""
              class="out_img"
            />
          </div>
          <div class="none_style">
            <p class="center_style">数量:</p>
            <div>
              <p @click="minus" class="btn_style">-</p>
              <p class="center_style">{{ btnnum1 }}</p>
              <p @click="add" class="btn_style">+</p>
            </div>
          </div>
          <button class="btn_color" @click="no_spe_gocar" v-show="car">下一步</button>
          <button class="btn_color" @click="no_spe_gobuy" v-show="buy">下一步</button>
        </div>
      </mt-popup>
    </div>
  </div>
</template>
<script>
import { Toast } from "mint-ui";
import { MessageBox } from 'mint-ui';
import { Swipe, SwipeItem } from "mint-ui";
import "mint-ui/lib/style.css";
export default {
  components: {
    "mt-swipe": Swipe,
    "mt-swipe-item": SwipeItem,
  },
  data() {
    return {
      userid:'',
      details: "",
      swiper: "",
      popupVisible: false,
      popupVisible2: false,
      list: "",
      spe: "",
      show: false,
      btnnum1: 1,
      btnnum2: 1,
      price: "",
      spe_price:'',
      car:false,
      buy:false,
      spe_id:'',
      listid:'',
      specification:''
    };
  },
  methods: {
    open1() {
      if(this.spe[0].specification!==""){
      this.popupVisible2 =false;
      this.popupVisible = true;
      this.car = true
      this.buy = false
      }else{
      this.popupVisible2 =true;
      this.popupVisible = false;
      this.car = true
      this.buy = false
      }
    },
    open2() {
      if(this.spe[0].specification!==""){
      this.popupVisible2 =false;
      this.popupVisible = true;
      this.buy = true
      this.car = false
      }else{
      this.popupVisible2 =true;
      this.popupVisible = false;
      this.buy = true
      this.car = false
      }
    },
    close(){
      this.popupVisible = false;
      this.popupVisible2 = false;
    },
    minus() {
      if (this.btnnum1 > 1) {
        this.btnnum1--;
      }
    },
    add() {
      this.btnnum1++;
    },
    minus2() {
      if (this.btnnum2 > 1) {
        this.btnnum2--;
      }
    },
    add2() {
      this.btnnum2++;
    },
    select(sid){
      let id=sid
      this.spe_id = id
      // console.log(id)
      this.axios.get("/spe?id=" + id).then((res) => {
        this.spe_price = res.data[0].price
        this.specification = res.data[0].specification
        // console.log(res.data[0].price)
        let done = document.getElementById('done')
        let spans = done.getElementsByTagName('span')
        spans.forEach(element => {
          element.style.color='#626262'
        });
        let span = document.getElementById(sid);
        // console.log(span)
        span.style.color="red"
      })
    },
    panduan(){
      if(this.userid==undefined){
        MessageBox({
            title: '没有登录',
            message: '现在需要登录吗?',
            showCancelButton: true
        }).then(action =>{
            if(action=="confirm"){
                this.$router.push('/login')
            }else{
              this.popupVisible = false
              this.popupVisible2 = false
            }
        })
        return false
      }else{
        return true
      }
    },
    tianjiachenggong(){
      MessageBox({
          title: '添加成功',
          message: "现在需要去结算吗?",
          cancelButtonText:"再逛逛",
          confirmButtonText:'去结算',
          showCancelButton: true
      }).then(action =>{
          if(action=="confirm"){
            this.$router.push('/shopcar/'+this.userid)
          }else{
            this.$router.back(-1)
            // this.popupVisible = false
            // this.popupVisible2 = false
          }
      })
    },
    have_spe_gocar(){
      if(this.spe[0].specification!==''){
        if(this.spe_id==''){
          Toast({
            message: '请选择'+ this.list.name +'规格',
            duration: 1500,
          });
        }else{
          this.panduan()
          if(this.panduan()){
            this.axios.get('/add',{
              params:{
                userid:this.userid,
                listid:this.listid,
                speid:this.spe_id,
                count:this.btnnum2,
                listname:this.list.name,
                listprice:this.spe_price,
                listimg:this.list.img,
                listspe:this.specification
              }
            }).then((res)=>{
              this.tianjiachenggong()
            })
          }
        }
      }
    },
    have_spe_gobuy(){
      if(this.spe[0].specification!==''){
        if(this.spe_id==''){
          Toast({
            message: '请选择'+ this.list.name +'规格',
            duration: 1000,
          });
        }else{
          this.panduan()
          if(this.panduan()){
            this.axios.get('/add',{
              params:{
                userid:this.userid,
                listid:this.listid,
                speid:this.spe_id,
                count:this.btnnum2,
                listname:this.list.name,
                listprice:this.spe_price,
                listimg:this.list.img,
                listspe:this.specification
              }
            }).then((res)=>{
              this.$router.push('/shopcar/'+this.userid)
            })
          }
        }
      }
    },
    no_spe_gocar(){
        this.axios.get('/add',{
          params:{
            userid:this.userid,
            listid:this.listid,
            speid:this.spe_id,
            count:this.btnnum2,
            listname:this.list.name,
            listprice:this.spe_price,
            listimg:this.list.img,
            listspe:this.specification
          }
        }).then((res)=>{
          this.tianjiachenggong()
        })
    },
    no_spe_gobuy(){
      this.axios.get('/add',{
          params:{
            userid:this.userid,
            listid:this.listid,
            speid:this.spe_id,
            count:this.btnnum2,
            listname:this.list.name,
            listprice:this.spe_price,
            listimg:this.list.img,
            listspe:this.specification
          }
        }).then((res)=>{
          this.$router.push('/shopcar/'+this.userid)
        })
    }
  },
  mounted() {
    this.userid = this.storageUtil.readTodos().h_id
    //获取传过来的ID
    //this.$route.params.参数名称
    let id = this.$route.params.id;
    this.listid = this.$route.params.id;
    // console.log(id)

    //下部详情图片
    this.axios.get("/details?id=" + id).then((res) => {
      //将服务器的响应信息放在变量article{}中
      this.details = res.data;
      //   console.log(this.details)
    });

    this.axios.get("/details1?id=" + id).then((res) => {
      this.list = res.data[0];
      // console.log(this.list)
    });

    this.axios.get("/detailsswiper?id=" + id).then((res) => {
      this.swiper = res.data;
      // console.log(this.swiper)
    });

    this.axios.get("/specification?id=" + id).then((res) => {
      this.spe = res.data;
      // console.log(this.spe)
      if (this.spe[0].specification) {
        this.show = true;
      }
      this.spe_price = res.data[0].price
    });
  },
};
</script>
<style scoped>
.title_img {
  width: 40px;
  height: 40px;
}
.zongjia {
  margin: 10px;
  font-size: 14px;
  color: #626262;
}
.zongjia p:first-child {
  margin-top: -8px;
}
.zongjia p + p {
  margin-top: 10px;
  color: #2093cc;
}
.btn_color {
  font-size: 14px;
  height: 45px;
  width: 90%;
  border: none;
  background-color: #ff0;
  margin: 10px;
  outline: none;
  margin-bottom: 80px;
}
.none_style {
  display: flex;
  justify-content: space-between;
  border: 1px solid #e2dcdc;
  border-right: none;
  border-left: none;
  padding: 20px 1%;
  font-size: 14px;
  color: #626262;
  margin: 10px;
}
.btn_style {
  border: 1px solid #aaa;
  width: 20px;
  line-height: 20px;
}
.center_style {
  width: 40px;
  line-height: 20px;
}
.none_style > div {
  display: flex;
}
.popupvisible {
  width: 100%;
}
.out_img {
  display: block;
  width: 20px;
  height: 20px;
  margin: 10px;
  margin-top: 25px;
}
.spe {
  display: flex;
  clear: both;
}
.spe span {
  margin: 0;
  padding: 0;
  border: none;
}
.pop_div {
  height: 200px;
  background: white;
}
.pop_div_top {
  border-bottom: 1px solid rgb(246, 243, 243);
  width: 100%;
  display: flex;
  justify-content: space-between;
  margin-bottom: 20px;
}
.pop_div_top > div {
  width: 100%;
  display: flex;
  margin: 10px;
}
.centainer img {
  width: 100%;
}
.centainer {
  margin-top: 40px;
  margin-bottom: 82px;
}
.mint-swipe {
  height: 320px;
}
.font-size14 {
  font-size: 14px;
  color: #626262;
}
.price_style {
  margin: 0;
  padding: 0;
  font-size: 14px;
  color: #2093cc;
  margin-top: 6px;
  font-family: "Helvetica Neue", Helvetica, STHeiTi, sans-serif;
}
.top_div {
  padding: 6px 10px 12px;
  border-bottom: 1px solid #f1f1f1;
}
.sp_style {
  padding: 14px 8px;
}
.sp_style span {
  margin: 0 3px;
}
.sp_style span + span {
  font-size: 14px;
  color: #626262;
}
.sp_style_first_child {
  font-size: 14px;
  color: #999;
}
.position {
  width: 100%;
  position: fixed;
  bottom: 50px;
  padding: 6px 0px;
  left: 0px;
  text-align: center;
  background: #fff;
  height: 32px;
  display: flex;
  justify-content: center;
  font-size: 14px;
  color: #626262;
}
.position_span_style {
  display: block;
  text-align: center;
  border: 1px solid #f1f1f1;
  margin: 0 2%;
  width: 46%;
  height: 30px;
  line-height: 30px;
  font-size: 14px;
  color: #626262;
}
.position_span {
  border: 0;
  background-color: #ffff00;
}
.zhongbu_style {
  margin-left: 20px;
  text-align: left;
}
.zhongbu_style > div {
  margin: 15px 0;
}
.zhongbu_style_span {
  border: 1px solid #aaaaaa;
  border-radius: 5px;
  margin: 5px;
  padding: 4px 10px;
  display: inline-block;
}
#none{
  display: flex;
  flex-wrap: wrap;
}
</style>

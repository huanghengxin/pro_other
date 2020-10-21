<template>
  <div class="home">
    <div class="top">
      <h3>TOPSPORTS滔博运动</h3>
      <!-- 首页轮播 -->
      <van-swipe class="my-swipe" :autoplay="3000" indicator-color="white">
        <van-swipe-item v-for="item in img" :key="item">
        <van-image :src="item" class="lunbo" />
      </van-swipe-item>
    </van-swipe>
    </div>
    <!-- 中间内容 -->
    <div class="zj">
         <router-link to="/"><img src="../assets/rili/01.png" alt="" />
         <span>新品日历</span>
         </router-link>
         <router-link to="/"><img src="../assets/rili/02.png" alt="">
          <span>积分商城</span>
          </router-link>
          <router-link to="/"><img src="../assets/rili/03.png" alt="">
          <span>活动中心</span>
           </router-link>
         <router-link to="/"><img src="../assets/rili/04.png" alt="">
           <span>附近门店</span>
           </router-link>
    </div>
    <div class="">
      <span style="font-size:30px;color:#333333;margin-left:5px">积分商城</span>
      <span style="font-size:10px:color:cdcdcd;margin-left:20px">Rewards</span>
       <router-link to="/" style="font-size:15px:color:#eeb174;margin-left:130px">查看更多</router-link>
    </div>
    <van-row type="flex" justify="center">
      <van-col span="12"><router-link to="/"><img src="../assets/lunbo/下载.jpg" alt="" class="tup"></router-link></van-col>
      <van-col span="12"><router-link to="/"><img src="../assets/lunbo/下载.jpg" alt="" class="tup"></router-link></van-col>
    </van-row>
    <!-- 商品 -->
     <div class="shouye-shop">
       <div class="shouye-shop-1">
         <router-link to="/">
         <img src="../assets/lunbo/4.jpg" alt="">
         <p>精品侧开磁吸</p>
         <p style="color:#f4ea2a">500</p>
         </router-link>
       </div>
       <div class="shouye-shop-1">
          <router-link to="/">
         <img src="../assets/lunbo/4.jpg" alt="">
         <p>精品侧开磁吸</p>
         <p style="color:#f4ea2a">500</p>
         </router-link>
       </div>
       <div class="shouye-shop-1">
          <router-link to="/">
         <img src="../assets/lunbo/4.jpg" alt="">
         <p>精品侧开磁吸</p>
         <p style="color:#f4ea2a">500</p>
         </router-link>
       </div>
       <div class="shouye-shop-1">
          <router-link to="/">
         <img src="../assets/lunbo/4.jpg" alt="">
         <p>精品侧开磁吸</p>
         <p style="color:#f4ea2a">500</p>
         </router-link>
       </div>
     </div>
     <div class="shouye-tj">
       <div class="shouye-tj-a">
         <div  class="shouye-tj-b">
         <span style="font-size:25px">商品推荐</span>
         <router-link to="/" style="font-size:15px:color:#eeb174;margin-left:215px">查看更多</router-link>
         </div>
         <img src="../assets/lunbo/5.jpg" alt="">
       </div>
     </div>
     <div class="mask">
        <div class="mask-a">
          <div class="mask-b" v-for="(item,index) of meau" :key="index">
           <img :src="item.mimg" alt="">
           <p>{{item.title}}</p>
           <span style="text-decoration:line-through;" >¥{{item.price}}</span><span style="color:#ffd01e">¥{{item.pricea}}</span>
          </div >
          <!-- <div class="mask-b">
           <img src="../assets/meau/1.jpg" alt="">
           <p>123</p>
           <span>¥499</span><span>¥399</span>
          </div>
          <div class="mask-b">
           <img src="../assets/meau/1.jpg" alt="">
           <p>123</p>
           <span>¥499</span><span>¥399</span>
          </div>
          <div class="mask-b">
           <img src="../assets/meau/1.jpg" alt="">
           <p>123</p>
           <span>¥499</span><span>¥399</span>
          </div>
          <div class="mask-b">
           <img src="../assets/meau/1.jpg" alt="">
           <p>123</p>
           <span>¥499</span><span>¥399</span>
          </div> -->
        </div>
     </div>
  </div>
</template>
<style >
/* 横向显示 */
.mask {
  overflow: hidden;
  height:240px;
}
.mask-a {
  display: flex;
  flex-wrap: nowrap;
  overflow: hidden;
  width: 100% !important;
  /* 设置滚动条 */
  white-space: nowrap;
  overflow-x:auto ;
}
.mask-a::-webkit-scrollbar {
    display: none;
  }
.mask-b img {
 width: 200px;
 height: 200px;
}
.mask-b p,.mask-b span {
   margin-left:20px;
}
.home {
  width: 100%;
  height: 1600px;
}
.shouye-tj {
  clear:both;
}
.shouye-tj-a>img{
  width: 400px;
  height: 200px;
  margin: 0 5px;
}
.shouye-tj-b {
  margin: 15px 10px;
}
.shouye-shop {
  height: 500px;
  margin-bottom: 10px;
 border-bottom: 10px solid #333333;
}
.shouye-shop-1{
  width:180px;
  height: 230px;
  float: left;
  margin-left: 20px;
  border: 1px dashede #ffffff;
   overflow: hidden;
}
.shouye-shop-1>a {
  color: #333333;
}
.shouye-shop-1>a>img{
  width: 170px;
  height: 170px;
}
.shouye-shop-1>a>p {
  text-align: left;
}
.tup {
  width: 190px;
  height: 80px;
  margin: 10px;
}
  .lunbo img{
    width: 60%;
    height: 100%;
  }
  .top >h3{
    text-align: center;
  }
  .zj{
      float: left;
      border-bottom: 3px solid #333333;
  }
.zj>a {
  width: 32px;
  height: 100%;
  float: left;
  margin: 10px 20px;
  margin-left: 50px;
  color: #333333;
}
</style>
<script>
export default {
  data(){
    return{
      /* 首页轮播 */
      img:[
        require("@/assets/lunbo/1.jpg"),
        require("@/assets/lunbo/2.jpg")
      ],
      meau:[]
     
    }
  },
  mounted(){
    this.axios.get('/meau').then(res=>{
      //console.log(res.data.result)
      let data=res.data.result;
      data.forEach(item=>{
        item.mimg=require('../assets/meau/'+item.mimg);
        this.meau.push(item);
      })
    });
  },
  mehtods:{
    
  },
  components: {
    
  }
}
</script>

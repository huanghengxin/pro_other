<template>
  <div >
    <!-- 顶部栏 -->
    <div class="return" v-if="top == !true">
      <!-- 返回上级 -->
      <div @click="left">
        <img src="../title/return.png" alt="" />
      </div>
      <div @click="right">
        <div v-if="image">
          <img src="../title/collect1.png" alt="" />
        </div>

        <div v-else>
          <img src="../title/collect2.png" alt="" />
        </div>
      </div>
    </div>
    <!-- 商品详情-->
    <div class="title" v-else>
      <div @click="left">
        <img src="../title/return.png" alt="" />
      </div>
      <span>商品</span>
      <span>详情</span>
    </div>
    <!-- 商品详情 -->
    <div v-for="(item,index) of details" :key="index" class="details-bottom">

    
    <div>
      <van-swipe>
        <van-swipe-item >
          <img v-lazy="item.img" style="width:100%;" />
        </van-swipe-item>
      </van-swipe>
      <!-- 详情 -->
      <div  class="prent-details">
        <div class="details">
          <p>{{item.title}}</p>
          <div @click="share()">
            <img src="../title/share.png" />
            <span>分享</span>
          </div>
        </div>
        <div class="price">
        <s>{{item.price}}</s>
        <p>¥{{item.prices}}</p>
        </div>
       
        <!-- 销量 -->
      <div class="sales">
        <p>销量：{{item.sales}}笔</p>
        <p>运费：免邮</p>
        <p>点击：{{item.click}}</p>
      </div>
      </div>
      
    </div>
    <!-- 选择器 -->
  <div class="prent-popup" >
    <van-cell is-link @click="showPopup">已选择
        <span style="float:right;">{{value}}件</span>
    </van-cell>
    <van-popup
      v-model="show"
      position="bottom"
      :style="{ height: '37%' }"
      closeable>
    
      <div class="details-shopping">
        <div>
          <img :src="item.smallimage"
            alt="" />
        </div>
        <div>
          <p>
        {{item.title}}
          </p>
          <p style="color:#f40;">￥{{item.prices}}</p>
        </div>
      </div>
      <!-- 计数器 -->
      <div class="count" style="font-size:13px;">
        <span>购买数量：</span>
        <van-stepper v-model="value" :long-press="false" />
      </div>
      <div>
        <p style="font-size:12px;">剩余{{item.surplus}}件</p>
      </div>
        <div class="button">
           <van-button color="linear-gradient(to right, #ff6034, #ee0a24)" block
        >下一步</van-button> 
        </div>
      </van-popup>
    </div>
   <!-- 详情图片 -->
      <div>
        <p>商品详情</p>
        <div>
          <img style="width:100%" :src="item.detailsImg" alt="">
          <img style="width:100%" :src="item.detailsImgs" alt="">
        </div>
      </div>
      <!-- 底部导航栏 -->
      <van-goods-action>
        <van-goods-action-icon icon="chat-o" text="首页" dot />
        <van-goods-action-icon icon="cart-o" text="客服"  />
        <van-goods-action-icon icon="shop-o" text="购物车" :badge="value" />
        <van-goods-action-button type="warning" text="加入购物车" @click="prop()" />
        <van-goods-action-button type="danger" text="立即购买" @click="prop()"  />
      </van-goods-action>
      <!-- 商品列表结束 -->
      </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      image: true,
      top: false,
      images: [
        "http://tianhehupo.com/upload/goods/20190527/c2340bfe3b66621dfe4b5e328b8656801.png",
        "http://tianhehupo.com/upload/goods/20190527/c2340bfe3b66621dfe4b5e328b8656801.png",
        "http://tianhehupo.com/upload/goods/20190527/c2340bfe3b66621dfe4b5e328b8656801.png",
      ],
      show: false,
      value: 1,
      details:[]
    };
  },
  mounted() {
    let id = this.$route.params.kid;
    // console.log(id);
     // 获取详情页数据请求
    this.axios.get('/details?listId='+ id).then(res=>{
      this.details=res.data.result
      console.log(this.details)
    });

    window.addEventListener("scroll", this.handleScroll);
  },

  methods: {
    left() {
      this.$router.go(-1);
    },
    right() {
      if (!this.image) {
        this.image = !this.image;
        Toast({
          message: "取消收藏成功",
          icon: "https://img.yzcdn.cn/vant/logo.png",
        });
        return;
      } else {
        this.image = !this.image;
        Toast({
          message: "收藏成功",
          icon: "https://img.yzcdn.cn/vant/logo.png",
        });
      };
    },

    handleScroll() {
      // 滚动操作监听
      let scrollTop =
        document.documentElement.scrollTop || document.body.scrollTop;
      //   console.log(scrollTop)
      if (scrollTop >= 1) {
        this.top = true;
        return;
      } else {
        this.top = false;
      }
    },
    share() {
      console.log("分享");
    },
    showPopup() {
      this.show = true;
    },
    prop(){
        this.show=true;
    },
  },
  
};
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}
.return {
  height: 40px;
  background-color: #fff;
  display: flex;
  justify-content: space-between;
  margin-top: 4px;
}
.title {
  width: 100%;
  height: 40px;
  display: flex;
  line-height: 40px;
  text-align: center;
  border-bottom: solid 1px #e2e2e2;
  background: #f7f7f7;
  justify-content: space-between;
  position: fixed;
  z-index: 100;
}
.title :nth-child(1) {
  position: relative;
  top: 3px;
}
.title :nth-child(2) {
  position: relative;
  right: 30px;
  font-size: 15px;
  border-bottom: 2px solid #f44;
}
.title :nth-child(3) {
  position: relative;
  right: 120px;
  font-size: 15px;
}
/* 商品详情 */
.prent-details{
  font-size: 14px;
  padding: 10px;
  
}
/* 价格的样式 */
.price{
   border-bottom: 1px solid #e8e8e8;
}
.price :first-child{
  color: #999;
  display: block;
  padding: 5px 0;
}
.price :last-child{
  color: #f44;
  display: block;
  padding: 10px 0;
  
}
.details-bottom{
  margin-bottom: 80px;
}

.details {
  display: grid;
  grid-template-columns: 2fr 1fr;
  color: #333;
}
.details p {
  width: 300px;
  font-size: 14px;
  line-height: 25px;
}
.details :nth-child(2) {
  display: inline-block;
  width: 40px;
  text-align: center;
  font-size: 12px;
  justify-self: end;
}
/* 销量样式 */
.sales{
  display: flex;
  justify-content: space-between;
  color: #999;
  padding: 15px 0;
  border-bottom: 1px solid #e8e8e8;
}
/* 下拉购物菜单样式 */
.details-shopping {
  display: flex;
  /* grid-template-columns: 1fr 2fr; */
  margin-top: 10px;
  font-size: 13px;
  margin-bottom: 15px;
  border-bottom: 8px solid #e8e8e8;
}
.details-shopping :first-child img {
  width: 49px;
  height: 49px;
  margin: 0 30px 0 10px;
}
.details-shopping :last-child {
  width: 220px;
  color: #999;
  font-size: 14px;
  margin-bottom: 8px;
}
.count {
  display: flex;
}
.button{
    position: relative;
    top: 14%;
}
</style>

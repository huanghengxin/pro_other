<template>
  <div class="home">
      <!-- 首页轮播图开始 -->
    <van-swipe class="my-swipe" autoplay="3000"  >
      <van-swipe-item >
        <img src="http://www.tianhehupo.com/public/static/images/default_img_url/waplunbo.png" alt="">
      </van-swipe-item>
      <van-swipe-item >
        <img src="https://img30.360buyimg.com/jgsq-productsoa/jfs/t1/80374/18/280/130955/5ce75810E864673e2/3787cf4d08f5f063.jpg" alt="">
      </van-swipe-item>
    </van-swipe>
      <!-- 首页轮播图结束 -->
      <!-- 隔离框 -->
      <div class="shade"></div>
      <!-- 搜索框 -->
      <router-link to="search">
        <van-search 
      v-model="value" 
      placeholder="搜索商品"
      @search="onSearch"
      @cancel="onCancel" />
      </router-link>
      <!-- 宫格布局导航栏 -->
      <van-grid  column-num="5" :border="false" icon-size="35px">
        <van-grid-item v-for="(value,index) in images" :key="index" :icon="value.src" :text="value.text" :to="value.url" />
      </van-grid>
      <list></list>
  </div>
</template>

<script>
import { Toast } from 'vant';
import list from '../components/list'
export default {
  components:{
    list
  },
  data() {
    return {
      value: '',
      images:[
        {src:"http://www.tianhehupo.com/upload/common/1522638497.png",text:"首页",url:"about"},
        {src:"http://www.tianhehupo.com/upload/common/1524734357.png",text:"文章中心",url:"search"},
        {src:"http://www.tianhehupo.com/upload/common/1522639301.png",text:"商品分类",url:"search"},
        {src:"http://www.tianhehupo.com/upload/common/1522639420.png",text:"限时折扣",url:"search"},
        {src:"http://www.tianhehupo.com/upload/common/1522639938.png",text:"品牌专区",url:"search"},
        {src:"http://www.tianhehupo.com/upload/common/1522639973.png",text:"标签专区",url:"search"},
        {src:"http://www.tianhehupo.com/upload/common/1522640129.png",text:"会员中心",url:"search"},
        {src:"http://www.tianhehupo.com/upload/common/1522640297.png",text:"专题活动",url:"search"},
        {src:"http://www.tianhehupo.com/upload/common/1522640360.png",text:"团购专区",url:"search"},
        {src:"http://www.tianhehupo.com/upload/common/1522640412.png",text:"购物车",url:"search"},

      ]
    };
  },
  methods: {
    onSearch(val) {
      Toast(val);
    },
    onCancel() {
      Toast('取消');
    },
  },
};
</script>

<style scoped>
.my-swipe img{
      width: 100%;
      height: 175px;
    }
.shade{
    width: 100%;
    height: 20px;
    position: relative;
    z-index: 10;
    background: url(http://www.tianhehupo.com/template/wap/default_new/public/images/shade.png) center no-repeat;
    background-size: 100% 20px;
    margin-top: -19px;
}
</style>

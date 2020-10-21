<template>
<!-- 选择器 -->
  <div class="prent-popup" >
    <van-cell is-link @click="showPopup">已选择
        <span style="float:right;">{{value}}件</span>
    </van-cell>
    <van-popup
      v-model="show"
      position="bottom"
      :style="{ height: '30%' }"
      closeable
    >
      <div class="details-shopping">
        <div>
          <img src="http://tianhehupo.com/upload/goods/20190527/c2340bfe3b66621dfe4b5e328b8656803.png"
            alt="" />
        </div>
        <div>
          <p>
            多撒谎的赛课返回的干巴爹的基本不欺暗室的背景安慰人哈佛不能撒看到你撒
          </p>
          <p style="color:#f40;">￥5299.00</p>
        </div>
      </div>
      <!-- 计数器 -->
      <div class="count" style="font-size:13px;">
        <span>购买数量：</span>
        <van-stepper v-model="value" :long-press="false" />
      </div>
      <div>
        <p style="font-size:12px;">剩余200件</p>
      </div>
        <div class="button">
           <van-button color="linear-gradient(to right, #ff6034, #ee0a24)" block
        >下一步</van-button> 
        </div>
    </van-popup>
  </div>
   
</template>

<script>
export default {
  data() {
    return {
      show: false,
      value: 1,
      
    };
  },
  methods: {
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
  padding: 0;
  margin: 0;
}

.details-shopping {
  display: flex;
  /* grid-template-columns: 1fr 2fr; */
  margin-top: 10px;
  font-size: 13px;
  margin-bottom: 15px;
  border-bottom: 1px solid #e8e8e8;
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

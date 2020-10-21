<template>
    <div>
        <div class="me-top">
            <!-- 我的页面 -->
          <van-cell-group class="me-top-a">
            <van-cell title="单元格" value="内容" >
                <van-image 
                slot="icon"
                width="50" 
                height="50" 
                round
                src="https://img.yzcdn.cn/vant/cat.jpeg" />
                <div slot="title">
                    昵称
                </div>
                <div slot="title">日期</div>
                <img src="../assets/lunbo/ico.png" alt="">
            </van-cell>
          </van-cell-group>
          <van-cell-group>
              <van-slider v-model="value" @change="onChange" :min="0" :max="10000"/>
          </van-cell-group>
        </div>
        <div class="me-top-b">
           <h3>我的资产</h3>
           <div class="me-top-c">
              <van-grid :column-num="3" center :gutter="70" :border="false">
                <van-grid-item  text="积分">
                    <p slot="icon">0</p>
                </van-grid-item>
                <van-grid-item  text="优惠">
                     <span slot="icon">0</span>
                </van-grid-item>
                <van-grid-item  text="权益">
                     <span slot="icon">0</span>
                </van-grid-item>
              </van-grid>
           </div>
        </div>
        <div class="me-top-d">
            <h3>我的服务</h3>
            <van-cell-group>
                <van-cell title="我的订单" is-link to="/"/>
                <van-cell title="我的资格码" is-link  to="/"/>
                <van-cell title="我的活动" is-link  to="/"/>
                <van-cell title="我的收藏" is-link  to="/"/>
                <van-cell title="我的地址" is-link  to="/site"/>
            </van-cell-group>
        </div>
    </div>
</template>
<style >
.me-top-c {
    float: left;
}
.me-top {
    width: 100%;
    height: 200px;
    background-color: #2c2c2c;
}
.me-top-a {
    background-color: #2c2c2c !important;
}
.me-top-c {
    margin-bottom: 10px;
    border-bottom:5px solid #707070 ;
}
.me-top-b>h3 {
    margin: 20px 10px;
}
.me-top-d>h3 {
  margin-left:10px ;
}
</style>
<script>
export default {
    data(){
        return{
            value:0
        }
    },
      methods: {
    onChange(value) {
      Toast('当前值：' + value);
    },
  },
}
</script>
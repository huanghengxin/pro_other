<template>
  <div style="background-color:#000; margin-top:50px;">
    <div class="footer" style="width:1250px">
      <div class="footer-left">
        <!-- logo -->
        <img src="../assets/img/header/logo2.png" alt />
        <p>订购热线：4006-678-678（8:00 - 20:00)</p>
        <p>客服邮箱：cs@mcake.com</p>
        <p>地址：上海市普陀区同普路1130弄3号楼</p>
        <P>食品生产许可证：SC12431010700121</P>
      </div>
      <div></div>
      <!-- 右侧 -->
      <div class="footer-right">
        <div class="about list">
          <h3 class="fontColor">关于我们</h3>
          <p>
            <router-link to="/">企业介绍</router-link>
          </p>
          <p>
            <router-link to="/">企业介绍</router-link>
          </p>
          <p>
            <router-link to="/">企业介绍</router-link>
          </p>
          <p>
            <router-link to="/">企业介绍</router-link>
          </p>
        </div>
        <!-- 帮助中心 -->
        <div class="help list">
          <h3 class="fontColor">帮助中心</h3>
          <p>
            <router-link to="/">投诉与建议</router-link>
          </p>
          <p>
            <router-link to="/">会员权益</router-link>
          </p>
          <p>
            <router-link to="/">购物指南</router-link>
          </p>
          <p>
            <router-link to="/">支付类</router-link>
          </p>
          <p>
            <router-link to="/">订单相关</router-link>
          </p>
          <p>
            <router-link to="/">配送服务</router-link>
          </p>
        </div>
        <!-- 发现 -->
        <div class="look list">
          <h3 class="fontColor">发现</h3>
          <p>
            <router-link to="/">公告</router-link>
          </p>
        </div>
        <div class="right-img">
          <img src="https://mall.mcake.com/static/img/weibo.png" alt />
          <img src="https://mall.mcake.com/static/img/weixin.png" alt />
        </div>
      </div>
    </div>
    <!-- 底部 -->
    <div class="footer-bottom">
      <div class="list">
        <p>上海卡法电子商务有限公司</p>
        <p>地址：上海市普陀区同普路1130弄3号楼</p>
        <p>洽谈电话：021-52691591</p>
        <p>
          <router-link to="/">社会信用代码：913101070678091460</router-link>
        </p>
        <p>
          <router-link to="/">食品经营许可证：JY13101070034251</router-link>
        </p>
      </div>
      <div class="list marg">
        <p>上海卡法电子商务有限公司北京分公司</p>
        <p>地址：北京市朝阳区东四环中路82号3座16层1908</p>
        <p>洽谈电话：010-52088262</p>
        <p>
          <router-link to="/">社会信用代码：913101070678091460</router-link>
        </p>
        <p>
          <router-link to="/">食品经营许可证：JY13101070034251</router-link>
        </p>
      </div>
      <div class="list">
        <p>上海卡法电子商务有限公司杭州分公司</p>
        <p>地址：杭州市拱墅区中环大厦607室</p>
        <p>洽谈电话：0571-28103688</p>
        <p>
          <router-link to="/">社会信用代码：913101070678091460</router-link>
        </p>
        <p>
          <router-link to="/">食品经营许可证：JY13101070034251</router-link>
        </p>
      </div>
    </div>
    <div class="list" style="padding:30px; text-align:center; ">
      <p>
        Copyright © 2012-2020 上海卡法电子商务有限公司 版权所有
        <a href="#">沪ICP备12022075号</a>
      </p>
    </div>
    <div class="gotop">
        <img src="../assets/top-1.png" @click="gotop">
      <button @click="gobottom">bottom</button>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      showgo: false,
    };
  },
  methods: {
    gotop: function () {
      scrollTo(0, 0);
    },
    gobottom: function () {
      scrollTo(0, document.documentElement.scrollHeight);
    },
  },

  mounted() {
    window.onscroll = function () {
      if (document.documentElement.scrollTop >= 300) {
        this.showgo = true;
      } else {
        this.showgo = false;
      }
    };
    console.log(window.onscroll);
  },
};
</script>
<style scoped>
.gotop {
  position: fixed;
  right: 2vw;
  bottom: 30vh;
  
}
.footer {
  width: 1250px;
  background-color: #000;
  font-size: 12px;
  display: block;
  margin: 0 auto;
  /* position: absolute; */
 
}
.footer-left {
  color: #999;

  float: left;
  width: 420px;
}
.footer-left img {
  margin-bottom: 20px;
  margin-top: 4rem;
}
.footer-left P {
  margin-top: 6px;
}
.footer-right {
  /* float: left; */
  width: 1250px;
}
.about {
  float: left;
  margin-top: 4rem;
}
.help {
  float: left;
  margin: 0 50px;
  margin-top: 4rem;
}
.fontColor {
  color: #fff;
  font-size: 16px;
  font-weight: 300;
}
.look {
  float: left;
  margin-top: 4rem;
}
.right-img {
  float: left;
  margin-top: 4rem;
  margin-left: 10rem;
}
/* 底部 */
.footer-bottom {
  width: 1250px;
  margin: 0 auto;
  display: flex;
  /* justify-content: space-around; */
  margin-top: 120px;
}
.list a {
  color: #999;
  text-decoration: none;
  font-size: 12px;
}
.list p {
  margin-top: 8px;
  color: #999;
  font-size: 12px;
}
.marg{
  margin: 0 200px;
}
/*伪元素是行内元素 正常浏览器清除浮动方法*/
.footer:after,
.footer:before {
  content: "";
  display: block;
  clear: both;
  visibility: hidden;
}
</style>
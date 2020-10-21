<template>
  <div>
    <div>
      <!-- 页头和购物内容 -->
      <mt-header title="购物车" fixed style="font-family:'Microsoft YaHei">
        <router-link to="/shop" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
      </mt-header>
      <!-- 购物内容 -->
      <div>
        <div class="pdt25">
          <div>
            <div class="item" v-for="(item, index) in data" :key="index">
              <label class="mint-checklist-label">
                <span class="mint-checkbox">
                  <input
                    type="checkbox"
                    class="mint-checkbox-input"
                    :value="item.orderNo"
                    v-model="checkedList"
                    @change="selected(item)"
                  />
                  <span class="mint-checkbox-core"></span>
                </span>
              </label>
              <div class="info">
                <div class="title">
                  <img src="../assets/shopping/p1.jpg" />
                  <span class="title1">{{ item.title }}</span>
                  <div class="title2">
                    <button @click="sub(index)">-</button
                    ><span>{{ item.count }}</span
                    ><button @click="plus(index)">+</button>
                  </div>
                  <span class="price">{{ item.price }} 元</span>
                </div>
                <!-- <div class="price">{{ item.price }} 元</div> -->
              </div>
            </div>
          </div>
        </div>
        <div class="bottom-outer">
          <div class="bottom">
            <label class="mint-checklist-label">
              <span class="mint-checkbox">
                <input
                  type="checkbox"
                  class="mint-checkbox-input"
                  vlaue="all"
                  v-model="checkedAll"
                  @change="changeState"
                />
                <span class="mint-checkbox-core main-core"></span>
              </span>
              <span class="mint-checkbox-label">全选</span>
            </label>
            <span class="total-money"
              >合计：<span>¥ {{ totalMoney }}</span></span
            >
            <mt-button type="primary" class="pay-btn">结算(12)</mt-button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<style scoped>
.total-money > span {
  color: crimson;
  font-size: 18px;
}
.pay-btn {
  position: absolute;
  right: 0;
  width: 100px;
  height: 50px;
  border-radius: 0;
}
.bottom-outer {
  position: fixed;
  bottom: 0px;
  margin-top: 30px;
  width: 100%;
  height: 50px;
  margin-left: auto;
  margin-right: auto;
  border: 1px solid transparent;
  border-top-color: antiquewhite;
}
.mint-checkbox-label {
  display: inline-block;
  position: absolute;
  left: 50px;
  top: 17px;
}
.main-core {
  position: absolute;
  left: 25px;
  top: 13px;
}
.bottom .total-money {
  display: inline-block;
  position: absolute;
  right: 110px;
  top: 17px;
}
.bottom {
  position: relative;
}
.title img {
  width: 50px;
  position: absolute;
  left: 40px;
  top: 3px;
}
.title2 span {
  display: inline-block;
  width: 30px;
  text-align: center;
}
.title .title1 {
  position: absolute;
  left: 100px;
  top: 3px;
  width: 180px;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.title .title2 {
  position: absolute;
  left: 100px;
  bottom: 7px;
  /* border: 1px solid black; */
}
.title2 button {
  width: 30px;
  height: 28px;
}
.item .price {
  text-align: right;
  position: absolute;
  right: 0px;
  top: 3px;
  color: crimson;
}
.item .mint-checkbox-core {
  position: absolute;
  top: 20px;
}
.item {
  position: relative;
  height: 60px;
  border: 2px solid transparent;
  border-bottom-color: rgba(102, 102, 102, 0.3);
}
.price {
  text-align: right;
}
.info {
  display: inline-block;
}
.mint-checklist-label {
  display: inline;
}
.pdt25 {
  width: 92%;
  margin: 0 auto;
}
</style>
<script>
import { mapMutations } from "vuex";
export default {
  data() {
    return {
      data: this.$store.state.shoppingCartItem,
      //商品列表arrList
      // arrList: [
      //   {
      //     orderNo: "1",
      //     title: "靓禾良仓 十谷米400*5袋",
      //     price: 35.0,
      //     count: 1,
      //   },
      //   {
      //     orderNo: "2",
      //     title: "靓禾良仓 新米 东北稻香大米",
      //     price: 59.0,
      //     count: 1,
      //   },
      //   { orderNo: "3", title: "靓禾良仓 2019年秋收", price: 69.0, count: 1 },
      //   {
      //     orderNo: "4",
      //     title: "[买2份减5元] 靓禾良仓 东北大米",
      //     price: 29.0,
      //     count: 1,
      //   },
      // ],
    };
  },
  computed: {
    test: {
      // get方法获取vuex的数据并return
      get() {
        return this.$store.state.shoppingCartCheckAll;
      },
      //set方法接收一个参数，这个参数就是绑定的布尔值
      //set会改变传过来的值
      set(v) {
        //window.console.log(v)
        //提交一个方法 在vuex中定义并处理
        this.$store.commit("oncheckAll", v);
      },
    },
  },
  methods: {
    //数量减少
    sub(index) {
      if (this.arrList[index].count > 1) {
        this.arrList[index].count--;
      }
    },
    plus(index) {
      if (this.arrList[index].count <= 29) {
        this.arrList[index].count++;
      }
    },
    changeState() {
      this.checkedList = [];
      this.totalMoney = 0;
      if (this.checkedAll == true) {
        this.arrList.forEach((item) => this.checkedList.push(item.orderNo));
        this.arrList.forEach((item) => (this.totalMoney += item.price));
      } else {
        this.totalMoney = 0;
      }
    },
    selected(item) {
      var a = this.checkedList.some((arr) => {
        return arr == item.orderNo;
      });
      if (a) {
        this.totalMoney += item.price;
      } else {
        this.totalMoney -= item.price;
      }
    },
  },
  watch: {
    checkedList: {
      handler() {
        if (this.checkedList.length == this.arrList.length) {
          this.checkedAll = true;
        } else {
          this.checkedAll = false;
        }
      },
      deep: true,
    },
  },
};
</script>

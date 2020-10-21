<template>
  <div>
    <!-- 顶部组件 -->
    <mt-header fixed title="购物车">
      <router-link to="/" slot="left">
        <mt-button icon="back">返回</mt-button>
      </router-link>
    </mt-header>
    <!-- 顶部组件结束 -->

    <!-- 购物车内容 -->
    <div class="shop">
      <div class="card" v-for="(v, i) of det" :key="i">
        <div><img :src="v.img" alt="" /></div>
        <div class="card-text">
          <p>{{ v.title }}</p>
          <p id="price">¥{{ v.price }}</p>
          <div class="number">
            <button @click="numban(i)">-</button>
            <input type="text" v-model="v.number" value="v.number" />

            <button @click="numadd(i)">+</button>

            <img
              @click="numrem(i)"
              style="width: 20px; height: 20px; margin-left: 100px"
              src="https://www.goodmaoning.com/source/plugin/aljbdx/static/img/del.png"
            />
          </div>
        </div>
      </div>
    </div>
    <!-- 购物车内容结束 -->

    <!-- 底部组件 -->
    <van-submit-bar
      :price="sum * 100"
      button-text="提交订单"
      @submit="onSubmit"
    />

    <!-- 底部组件结束 -->
  </div>
</template>
<script>
import Tabbar from "../components/Tabbar.vue";

export default {
  data() {
    return {
      username: "",
      det: "",
    };
  },

  computed: {
    sum: function () {
      let sumprice = 0;
      for (let i = 0; i < this.det.length; i++) {
        sumprice += this.det[i].number * this.det[i].price;
      }
      return sumprice;
    },
  },
  mounted() {
    this.username = localStorage.getItem("isLogin").split(",");

    this.axios
      .post("/shopingcar", `username=${this.username[1]}`)
      .then((res) => {
        this.det = res.data.res;
        console.log(this.det);
      });
  },
  methods: {
    numadd(index) {
      this.det[index].number++;
    },
    numban(index) {
      if (this.det[index].number > 1) {
        this.det[index].number--;
      }
    },
    onSubmit() {
      console.log("aaaa");
    },
    numrem(i) {
      this.det.splice(i, 1);
      this.axios
        .post("/delcar", `lid=${this.det[i].lid}&username=${this.username[1]}`)
        .then((res) => {
          console.log(res.data);
        });
    },
  },
};
</script>
<style scoped>
.shop {
  margin-top: 47px;
}
.card {
  border-bottom: 1px solid gray;
  background-color: white;
  display: flex;
  padding: 5px 5px;
}
.card img {
  width: 85px;
  height: 85px;
}
.card input {
  width: 15px;
}
.card-text :first-child {
  color: #333;
  line-height: 20px;
  font-size: 15px;
}
#price {
  color: #f42424;
  font-size: 15px;
  padding-right: 12px;
  font-weight: bold;
  line-height: 1.6;
  font-family: -apple-system-font, Helvetica Neue, sans-serif;
}
.number button {
  margin: 5px;
  width: 25px;
  height: 25px;
}
</style>
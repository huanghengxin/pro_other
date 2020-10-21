<template>
  <div>
    <div class="top">
      <input
        class="input"
        v-model="value"
        @keydown.13="search"
        type="search"
        placeholder="请输入关键词"
      />
      <mt-button class="clear" @click.native="$router.back(-1)">取消</mt-button>
    </div>

    <div v-if="products.length > 0">
      <div id="list">
        <div class="item" v-for="(p, i) of products" :key="i">
          <router-link :to="`/details/${p.pid}`">
            <img :src="p.list_pic" alt="" />
            <p>{{ p.brand }}</p>
            <p>{{ p.title }}</p>
            <p>￥{{ Number(p.price).toFixed(2) }}</p>
          </router-link>
        </div>
      </div>
    </div>
    <div class="notres" v-if="res == -1">
      <div>
        <img src="../assets/img/small/search-empty.png" alt="" />
      </div>
      <p>没有搜索到你想要的结果</p>
    </div>
    <div></div>
  </div>
</template>

<script>
export default {
  created() {
    // this.bus.$on('zujian',this.giveup.bind(this))
  },
  data() {
    return {
      value: "",
      products: [],
      res: 0,
    };
  },
  methods: {
    search() {
      this.axios.get("/search?value=" + this.value).then((res) => {
        if (res.data.length > 0) {
          //console.log(res.data);
          //this.products = res.data;
          let data = res.data;
          console.log(data);
          let arr = [];
          for (let obj of data) {
            obj.list_pic = require("../assets/img/products/" + obj.list_pic);
            arr.push(obj);
          }
          this.products = arr;
          this.res = 0;
        } else {
          this.products = [];
          this.res = -1;
        }
      });
    },
  },
};
</script>

<style scoped>
.top {
  display: flex;
  justify-content: space-between;
  padding: 0.8rem;
  align-items: center;
}
.input {
  width: 18rem;
  height: 2.2rem;
  padding: 0.8rem 1.5rem;
  border-radius: 10px;
  font-size: 0.9rem;
  background: #e6e7e8 url(../assets/img/small/search2.png) 0.213333333333333rem
    50% no-repeat;
  background-size: 0.9rem;
  line-height: 2.2rem;
  outline: none;
  border: none;
}
.clear {
  float: right;
  background: none !important;
  border: #fff !important;
}
#list {
  display: flex;
  flex-wrap: wrap;
  width: 375px;
  box-sizing: border-box;
  /* padding-top: 3.4rem; */
}
.item {
  width: 50%;
  margin-bottom: 1.2rem;
}
.item p {
  padding: 0.2rem 0.5rem;
}
.item img {
  width: 100%;
  margin-bottom: 5px;
}
.item a {
  text-decoration: none;
  text-align: left;
  font-size: 11px;
  color: #000;
}
.notres {
  /* height: 300px; */
  margin: 2rem auto;
}
.notres > div {
  width: 45%;
  margin: 0 auto;
}
.notres > div > img {
  width: 100%;
}
.notres > p {
  text-align: center;
  margin-top: 1rem;
  color: #999;
}
</style>
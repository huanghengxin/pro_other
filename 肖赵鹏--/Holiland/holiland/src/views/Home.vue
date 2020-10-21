<template>
  <div>
    <my-header></my-header>
    <my-swiper></my-swiper>
    <!-- 中  搜索 -->
    <div class="div">
      <input type="search" placeholder="商品搜索:请输入商品关键字" @keyup="upkey" v-model="some">
      <button @click="select"></button>
    </div>
    <!-- 中 商品 -->
    <div v-for="(e,i) of shouye" :key="i">
      <router-link :to="'/list/'+e.id">
        <img :src=e.img alt="" class="img_center">
      </router-link>
    </div>
    <!-- 下 横三 -->
    <div class="foot_div">
      <div v-for="(e,i) of xiasan" :key="i">
        <router-link :to="'/foot/' + e.id">
          <img :src=e.img alt="">
        </router-link>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      shouye:'',
      xiasan:'',
      some:''
    }
  },
  methods:{
    select(){
      if(this.some!==""){
        this.$router.push('/select/'+this.some)
      }
    },
    upkey(e){
      if(e.keyCode==13){
        this.select()
      }
    }
  },
  mounted(){
        this.axios.get('/shouye').then((res)=>{
            this.shouye = res.data
        })
        this.axios.get('/shouye3').then((res)=>{
            this.xiasan = res.data
        })
    }
}
</script>
<style scoped>
  button{
    display: block;
    width: 29px;
    height: 29px;
    background: url(http://m.holiland.com/mobile/script/images/ico-reach.png) no-repeat center center;
    background-size: 20px;
    position: absolute;
    top: 30%;
    left: 4%;
    border: none;
  }
  input{
    padding-left: 11%;
    height: 35px;
    width: 85.5%;
    margin:15px 1%;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  .div{
    position: relative;
    top: 0;
    left: 0;
  }
  .img_center{
    width: 100%;
  }
  .foot_div{
    display: flex;
    align-content: space-between;
    margin-bottom: 51px;
  }
  .foot_div img{
    margin: 1%;
    width: 98%;
  }
</style>
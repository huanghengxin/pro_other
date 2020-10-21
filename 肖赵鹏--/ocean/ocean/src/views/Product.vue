<template>
  <div class="bg">
    <div class="header">
      <router-link to="/">主页</router-link> / 
      <router-link to="/product">产品</router-link>
    </div>
    <div class="container">
      <div>
          <!-- 左 -->
        <div>
            <div v-for="(e,i) of product.left" :key="i">
                <img :src="e.src" alt="">
                <div class="footer_style">
                    <p>{{e.name}}</p>
                    <div v-html="e.title" class="span_style"></div>
                </div>
            </div>
        </div>
        <!-- 中 -->
        <div>
            <div v-for="(e,i) of product.center" :key="i">
                <img :src="e.src" alt="">
                <div class="footer_style">
                    <p>{{e.name}}</p>
                    <div v-html="e.title" class="span_style"></div>
                </div>
            </div>
        </div>
        <!-- 右 -->
        <div>
            <div v-for="(e,i) of product.right" :key="i">
                <img :src="e.src" alt="">
                <div class="footer_style">
                    <p>{{e.name}}</p>
                    <div v-html="e.title" class="span_style"></div>
                </div>
            </div>
        </div>
      </div>
    </div>
    <!-- 底部 -->
    <div class="footer"><h1>优雅的选择</h1></div>
  </div>
</template>
<script>
export default {
    data(){
        return{
            product:{
                left:[],
                center:[],
                right:[]
            }
        }
    },
    mounted(){
      this.axios.get('/product3').then((res)=>{
        this.product.left=res.data
      })
      this.axios.get('/product4').then((res)=>{
        this.product.center=res.data
      })
      this.axios.get('/product5').then((res)=>{
        this.product.right=res.data
      })
      console.log(this.img)
    }
}
</script>
<style scoped>
.bg {
  background-color: black;
}
.header {
  border-top: 1px solid #3d3d3d;
  color: #aaa;
  padding-left: 50px;
}
.header > a {
  text-decoration: none;
  line-height: 60px;
  color: #aaa;
  font-size: 14px;
  font-style: 微软雅黑;
}
.container {
  border-top: 1px solid #3d3d3d;
  padding-top: 60px;
}
.container > div {
  display: flex;
  justify-content: center;
  text-align: center;
}
.container > div > div > div{
  width: 360px;
  margin: 30px 15px;
}
.container img {
  width: 100%;
}
.footer_style {
  background-color: #262626;
}
.footer_style > p {
  padding: 18px 0;
  font-size: 20px;
  font-style: normal;
  font-family:Georgia, 'Times New Roman', Times, serif;
  font-weight: bold;
  color: #c6a86f;
}
.span_style {
  display: block;
  color: #666;
  font-size: 14px;
  font-weight: 200;
  font-family:Georgia, 'Times New Roman', Times, serif;
  line-height: 25px;
}
.footer{
    height: 200px;
    background: url(https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS9lZjY2MWRlMjU1YTc5ODRjMWZiMTE5ZGUxZTg0ZTdiMi5qcGc_p_p100_p_3D.jpg) 100% no-repeat;
    text-align: center;
    opacity:0.8;
}
.footer>h1{
    font-size: 40px;
    color: #fff;
    font-weight: 600;
    line-height: 200px;
}
</style>
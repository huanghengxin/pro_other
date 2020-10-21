<template>
  <el-carousel height="571px" >
      <el-carousel-item v-for="(item,index) in assets" :key="index">
        <img :src=item.src alt="" width=100% height=100%>
      </el-carousel-item>
  </el-carousel>
</template>
<script>
export default {
  data(){
    return {
        assets:""
    }
  },
  mounted(){
    this.axios.get('/luobotu').then((res)=>{
      this.assets = res.data
      // console.log(this.assets)
    })
  }
}
</script>
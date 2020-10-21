<template>
  <div class="body_style">
    <my-carousel></my-carousel>
     <div class="bottom">
        <div>
          <video src="https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOS8wMi84YzhkMzc0NmQyMDZhNGUyNWZiZGMwNmQ1NThhNTc4Zi53ZWJt.webm" type="video/mp4" autoplay muted loop></video>
        </div>
        <span class="span1_style">Ocean Breeze Australia</span>
        <span class="span2_style">The choice of elegance</span>
        <div class="last"></div>
     </div>
  </div>
</template>
<script>
export default {
  mounted(){
      // this.storageUtil.saveTodos({uname:''})
  }
}
</script>
<style scoped>
  .bottom{
    margin-top: 20px;
    text-align: center;
    background: url(../assets/img/bg.jpg) no-repeat center;
  }
  .bottom>div{
    /* height: 500px; */
    z-index: 1000;
  }
  .bottom>div>video{
    height: 500px;
  }

  .bottom span{
    display: block;
    color: #fff;
    font-family: "century gothic";
  }
  .span1_style{
    margin: 50px 0 30px 0;
    font-size: 33px;
  }
  .span2_style{
    padding-bottom: 12px;
    font-size: 20px;
  }
  .last{
    height: 50px;
  }
</style>
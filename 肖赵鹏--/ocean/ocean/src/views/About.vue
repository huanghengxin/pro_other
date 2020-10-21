<template>
  <div class="about">
    <div class="div_top">
      <div>
       <img class="img_left" :src="img.img_left" alt="">
      </div>
      <div class="div_right">
        <h2>ABOUT US</h2>
        <div class="div_right_style" v-html="about.one"></div>
        <img  class="img_right" :src="img.img_right" alt="">
        <div v-html="about.two"></div>
        <div class="div_right_style" v-html="about.three"></div>
      </div>
    </div>
     <!-- 底部 -->
    <div class="footer"><h1>The choice of elegance</h1></div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      img:{
        img_left:'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS80NDM4YjE2NWE4ZWM4M2IzM2VkZWRmYjkyMTk3ZWI0Ny5qcGc_p_p100_p_3D.jpg',
        img_right:'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS9mMzM2OGM1MTk2NWM2M2VhZmY4ZDVhN2Q3ZTAyOWZjMS5wbmc_p_p100_p_3D.png'
      },
      about:
        {
         one:' <p>Ocean Breeze Australia is present by Wonderful Capital Biotechnology Group</p>' ,
         two:`<p>Wonderful Capital Biotechnology Group is an industry partner of MBB-CRC ( Australian Marine</p>
          <p>Bioproducts and Biotechnology Cooperative Research Centre) Bid (
          <router-link to="www.mbbcrc.com">www.mbbcrc.com</router-link>).</p>`,
         three:'<p>The research and development team includes top professors, doctors and registered pharmacists and</p><p>doctors in the Australian medical field</p><p>Australian ingredients</p><p>Made in Australia</p>'
        }
    }
  }
}
</script>
<style scoped>
  .about{
    background-color: black;
  }
  .div_top{
    display: flex;
    text-align: center;
    justify-content: center;
    padding-top: 90px;
  }
  .img_left{
    width: 390px;
    margin-right: 80px;
  }
  .img_right{
    width: 82px;
    margin: 10px 0;
  }
  .div_right{
    width: 714px;
  }
  .div_right>h2{
    display: block;
    border: 1px solid #EFC17C;
    color: #EFC17C;
    font-size: 16px;
    line-height: 47px;
    font-family: 'Times New Roman', Times, serif;
  }
  .div_right{
    font-size: 15px;
    font-family: "Raleway",Helvetica,Arial,Verdana,sans-serif;
    color: #a9a9a9;
    line-height: 30px;
  }
  .div_right_style{
    margin-top: 40px;
  }
  .div_right a{
    text-decoration: none;
    color: #3b8ced;
  }
  .footer{
    margin-top: 100px;
    height: 180px;
    background: url(https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS9lZjY2MWRlMjU1YTc5ODRjMWZiMTE5ZGUxZTg0ZTdiMi5qcGc_p_p100_p_3D.jpg) 100% no-repeat;
    text-align: center;
    opacity:0.8;
  }
  .footer>h1{
    font-size: 40px;
    color: #fff;
    font-weight: 600;
    line-height: 180px;
  }
</style>

<template>

   <swiper ref="mySwiper" :options="swiperOption" class="swiperpagination">
    <swiper-slide>
      <img src="../assets/img/header/lunbo1.png" alt="">
    </swiper-slide>
    <swiper-slide>
      <img src="../assets/img/header/lunbo2.jpg" alt="">
    </swiper-slide>
    <swiper-slide>
      <img src="../assets/img/header/lunbo3.png" alt="">
    </swiper-slide>
    <!-- <div class="swiper-pagination" slot="pagination"></div> -->
    <div class="swiper-scrollbar"></div>
  </swiper>
  

 
</template>

<script>
  export default {
    name: 'mySwiper',
    data() {
      return {
        swiperOption: {
          
          pagination: {
            el:'.swiper-pagination',
            
            },
          //播放时长
          autoplay:true,
          scrollbar:{

          }
          //滑动速度
         

          // Some Swiper option/callback...
        }
      }
    },
    computed: {
      swiper() {
        return this.$refs.mySwiper.$swiper
      }
    },
    mounted() {
      //this.swiper.slideTo(3, 3000, false)
      
    }
  }
</script>

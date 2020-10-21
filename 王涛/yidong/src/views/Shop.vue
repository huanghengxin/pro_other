<template>
    <div>
        <van-nav-bar title="商城" >
            <template #right >
                <van-icon name="cart-o" size="18" @click="toMark"/>
                <span>购物车</span>
            </template>
            <template #left >
                <van-icon name="shop-o" size="18" @click="classify" />
                <p>分类</p>
            </template>
        </van-nav-bar>
        <!-- 轮播 -->
        <div>
            <van-swipe class="my-swipe" :autoplay="3000" >
              <van-swipe-item v-for="(item,index) of shop" :key="index">
                 <img :src="item.simg" alt="" />
              </van-swipe-item>
            </van-swipe>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            shop:[]
        }
    },
    mounted(){
        this.axios.get('/shop').then(res=>{
            //console.log(res.data.result)
            let data = res.data.result;
            data.forEach(item=>{
                item.simg = require('../assets/lunbo/' + item.simg);
                this.shop.push(item);
            })
        })
    },
    methods:{
        /* 导航栏右边跳转 */
        toMark:function(){
            this.$router.replace('/shopping')
        },
        /* 导航栏左边跳转 */
        classify:function(){
            this.$router.replace('/cathet')
        }
       
    }
}
</script>
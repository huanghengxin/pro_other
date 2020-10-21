<template>
    <div>
          <!-- 底部导航栏 -->
       <div class="tabbar">
           <van-tabbar v-model="active">
            <van-tabbar-item to="/">
                <span>首页</span>
                <template #icon="props">
                <img :src="props.active ? icon.active : icon.inactive" />
                </template>
            </van-tabbar-item>
            <van-tabbar-item  to="/">
                <span>分类</span>
                <template #icon="props">
                <img :src="props.active ? icon.activeClassify : icon.inactiveClassify" />
                </template>
            </van-tabbar-item>
             <van-tabbar-item to="shoppingcar" route>
                <span>购物车</span>
                <template #icon="props">
                <img :src="props.active ? icon.activecart : icon.inactivecart" />
                </template>
            </van-tabbar-item>
             <van-tabbar-item >
                <span>会员中心</span>
                <template #icon="props">
                <img :src="props.active ? icon.activeVip : icon.inactiveVip" />
                </template>
            </van-tabbar-item>
            </van-tabbar>
       </div>    
    </div>    
</template>

<script>
export default {
    data(){
        return{
            active: 0,
            icon: {
                active: 'http://tianhehupo.com/template/wap/default_new/public/images/home_check.png',
                inactive: 'http://tianhehupo.com/template/wap/default_new/public/images/home_uncheck.png',
                activeClassify:'http://tianhehupo.com/template/wap/default_new/public/images/classify_check.png',
                inactiveClassify:'http://tianhehupo.com/template/wap/default_new/public/images/classify_uncheck.png',
                activecart:'http://tianhehupo.com/template/wap/default_new/public/images/cart_check.png',
                inactivecart:'http://tianhehupo.com/template/wap/default_new/public/images/cart_uncheck.png',
                activeVip:'http://tianhehupo.com/template/wap/default_new/public/images/user_check.png',
                inactiveVip:'http://tianhehupo.com/template/wap/default_new/public/images/user_uncheck.png'
            },
           
        }
    },
    methods:{
        shopping(){
            console.log(111)
            
        }
    },
    
    
}
</script>

<style scoped>
.tabbar{
    position: relative;
    height: 57px;
}
</style>
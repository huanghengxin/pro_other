<template>
    <div name=" shopping">
        <!-- 顶部导航栏 -->
        <div>
            <van-nav-bar title="购物车">
                <template #left>
                    <van-icon :name="tabbarImgleft" size="18" @click="left()"/>
                </template>
                <template #right>
                    <van-icon :name="tabbarImgRight" size="24" @click="right()"/>
                </template>
            </van-nav-bar>
          
        </div>
        
          <!-- 隐藏的二级菜单 -->
          <transition name="cartoon">
              <div class="tabbar" v-show="shoppingcar">
                    <!-- <tabbar class="tabbar" style=" position: relative; !important top:20px;"></tabbar> -->
                    <span style="line-height:100px; color:red;" >这里的选项我太懒了~</span>
              </div>  
          </transition>
        <!-- 空的购物车显示 -->
        <div class="shopingcar">
            <p>111</p>
            <p>您的购物车还没有商品!</p>
        </div>
        <!-- 不为空的购物车显示 -->
    </div>
</template>

<script>
import tabbar from '../components/tabbar'
export default {
    components:{
        tabbar
    },
    data(){
        return{
            tabbarImgleft:require('../title/return1.png'),
            tabbarImgRight:require('../title/list.png'),
            shoppingcar:false
        }
    },
    methods:{
        left(){
            this.$router.push('/') 
        },
        right(){
            this.shoppingcar =! this.shoppingcar
        }
    }
}
</script>

<style  scoped>
*{
    padding: 0;
    margin: 0;
}
/* 二级菜单 */
.tabbar{
    height: 100px;
    background-color: #e8e8e8;

}
.shopingcar{
    text-align: center;
    width: 100%;
}
.shopingcar :last-child{
     background: url("http://tianhehupo.com/template/wap/default_new/public/images/cart-big.png") no-repeat center top;
     background-size: 60px;
     height: 60px;
    margin-top:50px;
    width: 100%;
    
}
.shopingcar :nth-child(2){
    color: #999;
    font-size: 14px;
    margin-top: 60px;
}
cartoon-enter {
    height: 0;
    background-color: #000;
}
cartoon-enter-active{
    transition: all 3s linear;
    overflow: hidden; 
}
cartoon-enter-to{
    height: 100px;
}
</style>
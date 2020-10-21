<template>
    <div>
        <mt-tabbar fixed class="foot">
            <router-link to="/">主页</router-link>
            <span @click="change1" class="last-child">
                <img src="../assets/foot.png" alt="" class="foot_img">
                产品
                <div class="pop" v-show="popupVisible">
                   <router-link to='/list/5'>经典系列</router-link>
                   <router-link to="/list/6">儿童系列</router-link>
                   <router-link to="/list/7">芝士糕点</router-link>
                   <span></span>
                </div>
            </span>
            <router-link to="/blank/20">全部软点</router-link>
            <span @click="change2" class="last-child">
                <img src="../assets/foot.png" alt="" class="foot_img">
                帮助中心
                <div class="pop" v-show="popupVisible2">
                   <p class="p_style">好利来招聘</p>
                   <span></span>
                </div>
            </span>
        </mt-tabbar>
    </div>
</template>
<script>
export default {
    data(){
        return{
            popupVisible:false,
            popupVisible2:false,
        }
    },
    methods:{
        change1(){
            this.popupVisible = !this.popupVisible
        },
        change2(){
            this.popupVisible2 = !this.popupVisible2
        }
    }
}
</script>
<style scoped>
    .foot{
        height: 50px;
        display: flex;
    }
    .foot a{
        display: block;
        width: 25%;
        line-height: 50px;
        text-align: center;
        border: 1px solid #D0D0D0;
        text-decoration: none;
        color: #626262;
        font-size: 14px;
    }
    .foot a~a{
        border-left:0;
    }
    .foot span{
        display: block;
        width: 25%;
        line-height: 50px;
        text-align: center;
        border: 1px solid #D0D0D0;
        text-decoration: none;
        color: #626262;
        font-size: 14px;
        border-left:none;
    }
    .foot_img{
        margin:0 5px -1px 0 ;
    }
    .last-child{
        position: relative;
        bottom: 0;
        left: 0;
    }
    .pop{
        margin: 50px;
        width: 100%;
        position: absolute;
        bottom: 0;
        left: -54%;
        text-align: center;
    }
    .pop a{
        display: block;
        width: 100%;
        border: none;
        background: #fff;
        font-size: 12px;
    }
    .pop a:first-child{
        border-radius: 10px 10px 0 0 ;
    }
    .pop a:nth-child(3){
        border-radius: 0 0 10px 10px;
    }
    .pop a+a{
        border-top: 1px solid #aaa;

    }
    .pop span{
        margin-left: 33.5%;
        width: 0px;
        border-top: 10px solid #FFF;
        border-left: 16px solid red;
        border-right: 16px solid red;
        border-color: #FFF transparent transparent;
    }
    .p_style{
        background: #fff;
        border-radius: 10px;
    }
</style>
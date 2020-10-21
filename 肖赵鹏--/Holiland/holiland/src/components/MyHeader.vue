<template>
    <div>
        <div>
            <mt-header class="header_">
                <router-link to="/" slot="left">
                    <img src="http://m.holiland.com/mobile/script/images/logo.png" alt="">
                </router-link>
                <div slot="right" class="right">
                    <span v-show="h_name!==undefined" class="font_14">用户 : {{h_name}}</span>
                    <router-link to="/login" v-show="h_name==undefined">登陆</router-link><span  v-show="h_name==undefined" class="span_style">|</span>
                    <router-link to="/register" v-show="h_name==undefined">注册</router-link><span class="span_style">|</span> 
                    <span @click="gocar">购物车</span>
                    <span class="span_style" v-show="h_name!==undefined">|</span>
                    <span v-show="h_name!==undefined" @click="out">退出</span>
                </div>
            </mt-header>
        </div>
    </div>
</template>
<script>
import { Toast } from "mint-ui";
import { MessageBox } from 'mint-ui';
export default {
    data(){
        return{
            h_name:'',
            show:false,
            userid:''
        }
    },
    methods:{
        out(){
            MessageBox({
                title: '提示',
                message: '确定退出吗?',
                showCancelButton: true
            }).then(action =>{
                if(action=="confirm"){
                    window.localStorage.clear()
                    this.$router.go(0)
                }
            })
        },
        gocar(){
            if(this.userid==undefined){
                MessageBox({
                title: '未登录',
                message: '现在登录?',
                cancelButtonText:"再逛逛",
                confirmButtonText:'去登录',
                showCancelButton: true
                }).then(action =>{
                    if(action=="confirm"){
                        this.$router.push('/login')
                    }
                })
            }else{
                this.$router.push('/shopcar/'+this.userid)
            }
        }
    },
    mounted(){
         this.h_name = this.storageUtil.readTodos().h_name
         this.userid = this.storageUtil.readTodos().h_id
    }
}
</script>
<style scoped>
    .header_{
        height: 60px;
        background: none;
        color: #6dc2df;
    }
    .header_ img{
        width: 100%;
        height: 100%;
    }
    .header_ a{
        font-size: 14px;
        text-decoration: none;
        color: #6dc2df;
    }
    .span_style{
        margin: 0 10px;
    }
    .font_14{
        font-size: 14px;
        margin: 0;
    }
    .right{
        margin-top: 12px;
    }
</style>
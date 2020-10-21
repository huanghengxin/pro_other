<template>
    <div class="search">
        <!-- 返回顶部 -->
        <van-nav-bar
        title="搜索"
        left-text="返回"
        left-arrow
        @click-left="left"
        />

        <!-- 搜索框 -->
    <van-search 
        v-model="value" 
        placeholder="请输入您要搜索的商品"
        show-action
        @search="onSearch"
        @cancel="onCancel" >
        <template #action>
            <div @click="onSearch">搜索</div>
        </template>
        </van-search>
    </div>    
</template>

<script>
import { Toast } from 'vant'
export default {
    data(){
        return{
         value:'' 
        }
    },
    methods:{
        left(){
            this.$router.go(-1)
        },
        onSearch(value) {
            Toast(value);
        },
        onCancel() {
        Toast('取消');
        },
    }
}
</script>

<style scoped>
van-search {
    margin-top: 20px;
}
</style>
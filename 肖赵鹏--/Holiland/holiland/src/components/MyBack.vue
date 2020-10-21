<template>
    <mt-header fixed class="back_header">
        <router-link to="" slot="left">
            <mt-button icon="back" @click="$router.back(-1)"></mt-button>
        </router-link>
        <!-- <router-link to="/" slot="right">首页</router-link> -->
    </mt-header>
</template>
<style scoped>
    .back_header{
        background: url("http://m.holiland.com/mobile/script/images/logo.png") center center no-repeat;
        background-size:15%;
        color: #6dc2df;
        background: #fff;
    }
    .img_style{
        width: 80%;
    }
    .back_header a{
        text-decoration: none;
    }
</style>
<template>
  <div id="app">
    <router-view/>
    <van-tabbar route>
  <van-tabbar-item replace to="/" icon="wap-home-o" fixed>
    首页
  </van-tabbar-item>
  <van-tabbar-item replace to="/shop" icon="shop-o" >
    商城
  </van-tabbar-item>
  <van-tabbar-item replace to="/limit" icon="new-arrival-o" >
    限量发售
  </van-tabbar-item>
  <van-tabbar-item replace to="/me" icon="contact" >
    我的
  </van-tabbar-item>
</van-tabbar>
  </div>
</template>

<style>

</style>

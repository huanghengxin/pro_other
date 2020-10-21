import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import qs from 'qs'
// import Myheader from './components/MyHeader'
import header from './components/header'
// import carousel from './components/carousel'
// import floor from './components/floor'
// import list from './components/list'
import footer from './components/footer'
// 引入轮播图插件
import VueSwiper from 'vue-awesome-swiper'
// 引入swiper.css文件
import 'swiper/swiper-bundle.css'
Vue.component('my-headertwo',header)
// Vue.component('my-slideshow',carousel)
// Vue.component('my-floor',floor)
// Vue.component('my-list',list)
Vue.component('my-footer',footer)
// 应用到全局
Vue.prototype.qs = qs;
Vue.use(VueSwiper, /* { default options with global component } */)
Vue.config.productionTip = false
axios.defaults.baseURL='http://127.0.0.1:5050';
Vue.prototype.axios=axios;
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')

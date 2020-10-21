import Vue from 'vue'
import App from './App.vue'
import router from './router'
import axios from 'axios'
import store from './store'
import Element from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css'
import MyHeader from './components/MyHeader'
import MyFooter from './components/MyFooter'
import Carousel from './components/Carousel'
import storageUtil from "./util/storageUtil"
import bus from "./components/bus"
import qs from 'qs'

// import VueAwesomeSwiper from 'vue-awesome-swiper'
// import 'swiper/dist/css/swiper.css'
// import 'swiper/swiper-bundle.css'
// Vue.use(VueAwesomeSwiper, /* { default options with global component } */)



axios.defaults.baseURL = 'http://127.0.0.1:3000/'
Vue.prototype.axios= axios;
Vue.prototype.qs= qs;
Vue.prototype.bus= bus;
Vue.prototype.storageUtil= storageUtil;

Vue.use(Element)

Vue.component("my-header",MyHeader)
Vue.component("my-footer",MyFooter)
Vue.component("my-carousel",Carousel)
Vue.config.productionTip = false


new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')

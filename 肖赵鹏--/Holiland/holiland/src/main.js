import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import qs from 'qs'
import storageUtil from "./util/storageUtil"

import MintUI from 'mint-ui'
import 'mint-ui/lib/style.min.css'
import { Popup } from 'mint-ui';
Vue.component('mt-popup', Popup);




import MyHeader from './components/MyHeader'
import MyBack from './components/MyBack'
import swiper from './components/swiper'
import MyFooter from './components/MyFooter'
Vue.use(MintUI)

axios.defaults.baseURL = 'http://127.0.0.1:3000/'
Vue.prototype.qs = qs
Vue.prototype.axios = axios;
Vue.prototype.storageUtil= storageUtil;

Vue.component("my-header",MyHeader)
Vue.component("my-back",MyBack)
Vue.component("my-swiper",swiper)
Vue.component("my-footer",MyFooter)

Vue.config.productionTip = false


new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')

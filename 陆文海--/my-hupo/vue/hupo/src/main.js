import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'

import lazyload from 'vue-lazyload'

import { Toast } from "vant";

// 引入vant组件
import vant from 'vant'
//引入vant css 文件
import 'vant/lib/index.css'
//配置axios到vue原型
Vue.prototype.axios= axios
axios.defaults.baseURL='http://127.0.0.1:3000';
Vue.config.productionTip = false
// 全局使用vant组件
Vue.use(vant);
Vue.use(lazyload,{
  loading:'../title/timg.gif'
})
Vue.use(Toast);

router.beforeEach((to,from,next)=>{
  let islogin=localStorage.username
  if(to.meta.guard){//判断是否为true
    if(islogin){
      next()
    }else{
      next('login')
    }
  }else{
    next()
  }
})
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')

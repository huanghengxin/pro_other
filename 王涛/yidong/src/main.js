import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Vant from 'vant';
import axios from 'axios'
import 'vant/lib/index.css';

//加载全局样式
import './style/index.css'


Vue.use(Vant);
Vue.config.productionTip = false

axios.defaults.baseURL='http://127.0.0.1:3000'
Vue.prototype.axios=axios;

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')

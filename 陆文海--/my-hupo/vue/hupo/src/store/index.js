import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    // 保存用户名
    username:'',
    userid:sessionStorage.getItem('id')||0,
    username:sessionStorage.getItem('username')||'',
  },
  mutations: {//只负责修改
    //修改state中的变量
    login_set(state,payload){
      state.userid=payload.id;
      state.username=payload.phone;
    } 
   
  },
  actions: {//专门负责发送ajax请求//从服务器获得请求

    
  },
  modules: {
  }
})

import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    list:[],
    data:[],
  },
  mutations: {
    list_mutations:(state,payload)=>{
      state.list.push(payload)
    },
    data_mutations:(state,payload)=>{
      state.data.push(payload)
      //console.log(state.data)
    }
  },
  actions: {
  },
  modules: {
  }
})

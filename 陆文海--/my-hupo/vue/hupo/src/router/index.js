import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import details from '../views/details'
import login from '../views/login'
import person from '../views/person.vue'
import loginRegister from '../views/login-register'
import shopping from '../views/shopping'
import Search from '../components/search'
import list from '../components/demo/list-demo'
import de from '../components/demo/details-demo'
// import { Search } from 'vant'

Vue.use(VueRouter)

  const routes = [
    {
      path: '/de',
      component: de,
    },
    {
      path: '/shoppingcar',
      component: shopping,
      // meta:{guard:true}
    },
    {
      path: '/person',
      component: person,
      meta:{
        guard:true
      }
    },
    {
      path: '/login',
      component: login,
    },
    {
      path: '/loginRegister',
      component: loginRegister,
    },
    {
      path: '/details/:kid',
      component: details,
      props:true
    },
    {
      path: '/list',
      component: list
    },
    {
      path: '/search',
      component: Search
    },
  {
    path: '/',
    name: 'Home',
    component: Home
   
   
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]
//路由守卫
// router.beforeEach((to,from,next)=>{
//   let islogin=localStorage.username
//   if(to.meta.guard){//判断是否为true
//     if(islogin){
//       next()
//     }else{
//       next('login')
//     }
//   }else{
//     next()
//   }
// })
const router = new VueRouter({
  routes,
 
})

export default router

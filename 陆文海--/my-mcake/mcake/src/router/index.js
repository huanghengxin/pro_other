import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import details from '../views/details'


Vue.use(VueRouter)
  
  const routes = [
    {
      path: '/details',
      component: details
    },
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path:'/list',
    props:true,
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  mode:'history',
  routes,
  scrollBehavior (to, from, savedPosition) {
    return { x: 0, y: 0 }
  }
});

export default router

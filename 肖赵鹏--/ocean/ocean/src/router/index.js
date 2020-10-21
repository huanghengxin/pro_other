import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Register from '../views/Register'
import Login from '../views/Login'
import Shop from '../views/Shop'
import Product from '../views/Product'
import Contact from '../views/Contact'
import Find from '../views/Find'
import Shopcar from '../views/Shopcar'
import Details from '../views/Details'
import Search from '../views/Search'
import EmptyPage from '../views/EmptyPage'


Vue.use(VueRouter)

  const routes = [
    {
      path:'/details/:id',
      component:Details
    },
    {
      path:'/emptypage/:id',
      component:EmptyPage
    },
    {
      path:'/search/:id',
      component:Search
    },
    {
      path:'/shopcar',
      component:Shopcar
    },
    {
      path:'/find',
      component:Find
    },
    {
      path:'/contact',
      component:Contact
    },
    {
      path:'/product',
      component:Product
    },
    {
      path:'/shop',
      component:Shop
    },
    {
      path: '/login',
      component: Login
    }, 
    {
      path: '/register',
      component: Register
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

const router = new VueRouter({
  mode:'history',
  routes
})

export default router

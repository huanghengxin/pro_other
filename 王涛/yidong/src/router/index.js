import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Limit from '../views/limit.vue'
import Me from '../views/me.vue'
import Login from '../views/login'
import Shop from '../views/Shop'
import Shopping from '../views/shopping'
import Reg from '../views/reg.vue'
import Sort from '../views/sort.vue'
import Cathet from '../views/cathet'
import Details from '../views/details'
import Site from '../views/site.vue'
import Sitelist from '../views/sitelist.vue'
Vue.use(VueRouter)

const routes = [
  {
    path: '/sitelist',
    component: Sitelist
  },
  {
    path: '/site',
    component: Site
  },
  {
    path: '/details/:id',
    component: Details
  },
  {
    path: '/cathet',
    component: Cathet
  },
  {
    path: '/sort',
    component: Sort
  },
  {
    path: '/reg',
    component: Reg
  },
  {
    path: '/shopping',
    component: Shopping
  },
  {
    path: '/shop',
    component: Shop
  },
  {
    path: '/login',
    component: Login
  },
  {
    path: '/me',
    component: Me
  },
  {
    path: '/limit',
    component: Limit
  },
  {
    path: '/',
    name: 'Home',
    component: Home
  },
]

const router = new VueRouter({
  routes
})

export default router

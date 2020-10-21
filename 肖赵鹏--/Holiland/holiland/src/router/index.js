import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Shopcar from '../views/Shopcar.vue'
import Login from '../views/Login.vue'
import Register from '../views/Register.vue'
import List from '../views/List.vue'
import details from '../views/details.vue'
import Foot from '../views/Foot.vue'
import Select from '../views/select.vue'
import Blank from '../views/blank.vue'

Vue.use(VueRouter)

  const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path:'/shopcar/:id',
    component: Shopcar
  },
  {
    path:'/blank/:id',
    component: Blank
  },
  {
    path:'/select/:key',
    component: Select
  },
  {
    path:'/foot/:id',
    component: Foot
  },
  {
    path:'/details/:id',
    component: details
  },
  {
    path:'/list/:id',
    component: List
  },
  {
    path:'/login',
    component: Login
  },
  {
    path:'/register',
    component: Register
  }
]

const router = new VueRouter({
  mode:'history',
  routes
})

export default router

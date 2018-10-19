import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Login from '@/components/auth/Login'
import DashBoard from '@/components/dashboard/DashBoard.vue'
import Registration from '@/components/auth/Register.vue'
import Dashboard from '@/components/dashboard/Dashboard.vue'
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'HelloWorld',
      component: HelloWorld
    },{
      path:'/login',
      name:'Login',
      component:Login
    },{
      path:'/dashboard',
      name:'DashBoard',
      component:DashBoard
    },{
      path:'/registration',
      name:'Registration',
      component:Registration
    },{
      path:'/dashboard',
      name: 'Dashboard',
      component:Dashboard
    }
  ],mode:'history'
})


import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Login from '@/components/auth/Login'
import EventForm from '@/components/events/EventForm.vue'
import DashBoard from '@/components/dashboard/DashBoard.vue'

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
      path:'/events',
      name:'EventForm',
      component:EventForm
    },
    {
      path:'/dashboard',
      name:'DashBoard',
      component:DashBoard
    }
  ],mode:'history'
})

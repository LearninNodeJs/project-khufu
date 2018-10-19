import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Login from '@/components/auth/Login'
import EventForm from '@/components/events/EventForm.vue'
import Registration from '@/components/auth/Register.vue'

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
    },{
      path:'/registration',
      name:'Registration',
      component:Registration
    }
  ],mode:'history'
})

// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'
import {sync} from 'vuex-router-sync';
import {store} from './store'
import 'font-awesome/css/font-awesome.css';
import AlertComponent from './components/utils/Alert'
import './theme/default.styl';
import Truncate from 'lodash.truncate';
import ECharts from 'vue-echarts/components/ECharts'

Vue.filter('truncate',Truncate);
Vue.config.productionTip = false;
Vue.component('app-alert',AlertComponent);
Vue.component('v-chart',ECharts);
Vue.use(Vuetify)

/* eslint-disable no-new */
sync(store,router);
new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
});

// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'
import {sync} from 'vuex-router-sync';
import {store} from './store'
import AlertComponent from './components/utils/Alert'
import ECharts from 'vue-echarts/components/ECharts'
import 'font-awesome/css/font-awesome.css';
import UserProfilesTable from './components/widgets/list/PlainTable'
import UserRequestProcessing from './components/widgets/list/PlainTableOrder'


Vue.use(Vuetify)
Vue.component('v-chart',ECharts);
Vue.component('v-userprofiles',UserProfilesTable);
Vue.component('v-userequest', UserRequestProcessing);
Vue.config.productionTip = false;
Vue.component('app-alert',AlertComponent);


/* eslint-disable no-new */
sync(store,router);
new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
});

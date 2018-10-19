/* eslint-disable */
// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue';
import App from './App';
import Vuetify from 'vuetify';
import router from './router';
import 'font-awesome/css/font-awesome.css';  
import './theme/default.styl';
import VeeValidate from 'vee-validate';
import colors from 'vuetify/es5/util/colors';
import Truncate from 'lodash.truncate';
import {sync} from 'vuex-router-sync';
import {store} from './store'
import 'font-awesome/css/font-awesome.css';
import AlertComponent from './components/utils/Alert'
import './theme/default.styl';
import Truncate from 'lodash.truncate';
import ECharts from 'vue-echarts/components/ECharts'
import SimpleTable from './components/widgets/list/PlainTable'
import UserRequestProcessing from './components/widgets/list/PlainTableOrder'
import BoxChart from './components/widgets/chart/BoxChart';

Vue.filter('truncate',Truncate);
Vue.config.productionTip = false;
Vue.component('app-alert',AlertComponent);
Vue.component('v-chart',ECharts);
Vue.component('v-userprofiles',SimpleTable);
Vue.component('v-user-processing',UserRequestProcessing);
Vue.component('v-box-chart',BoxChart);
Vue.use(Vuetify)
=======
// Helpers
// Global filters
Vue.filter('truncate', Truncate);
Vue.use(VeeValidate, { fieldsBagName: 'formFields' });
Vue.use(Vuetify, {
  // theme: {
  //   primary: colors.indigo.base, // #E53935
  //   secondary: colors.indigo.lighten4, // #FFCDD2
  //   accent: colors.indigo.base // #3F51B5
  // },
  options: {
    themeVariations: ['primary', 'secondary', 'accent'],
    extra: {
      mainToolbar: {
        color: 'secondary',
      },
      sideToolbar: {
      },
      sideNav: 'primary',
      mainNav: 'primary lighten-1',
      bodyBg: '',
    }
  }
});

// Bootstrap application components
sync(store,router);
new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
});


/* eslint-disable no-new */
/*new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
});*/

import Vue from 'vue'
import Vuex from 'vuex'
import store from './store';
import App from './App.vue'
import router from './router'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import axios from 'axios'
import * as echarts from 'echarts'
import locale from 'element-ui/lib/locale/lang/en'
import 'xe-utils'
import VXETable from 'vxe-table'
import 'vxe-table/lib/style.css'

Vue.use(ElementUI, { locale })
Vue.use(VXETable)
Vue.use(Vuex)

Vue.config.productionTip = false

axios.defaults.withCredentials = true
Vue.prototype.$echarts = echarts
//axios----Vue
Vue.prototype.$http = axios

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')

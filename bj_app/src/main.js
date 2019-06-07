import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
// import axios from 'axios';
// import axios from 'axios';
import Element from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'

import VueAwesomeSwiper from "vue-awesome-swiper";
import "swiper/dist/css/swiper.css";

import './assets/fonts/iconfont.css'



Vue.use(VueAwesomeSwiper);

Vue.use(Element);
Vue.config.productionTip = false
// axios.defaults.withCredentials = true;
// axios.defaults.baseURL = '127.0.0.1:3000/';
// Vue.protoType.axios = axios;
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
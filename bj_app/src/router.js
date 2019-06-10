import Vue from 'vue'
import Router from 'vue-router'
import Footer from './components/Footer'
import Header from './components/Header'
import Carousel from './components/Carousel'
import Index from './views/Index'
import photoShow from './views/photoShow'
//张沥丹
import customerList from './views/customerList'
import cusdetails from './components/customer/cusdetails'
import evali from './components/customer/evali'
Vue.use(Router)

export default new Router({
  routes: [{
      path: '/',
      name: 'index',
      component: Index
    },
    {
      path: '/Index',
      name: 'index',
      component: Index
    },
    {
      path: '/Carousel',
      name: 'carousel',
      component: Carousel
    },
    {
      path: '/Footer',
      name: 'footer',
      component: Footer
    },
    {
      path: '/Header',
      name: 'header',
      component: Header
    },
    {
      path:'/photoShow',
      name:'photoshow',
      component:photoShow
    },
    // 客户评价列表路由
    {path:'/customerList',name:'customerlist',component:customerList},
    {path:'/customerdetails',name:'cusdetails',component:cusdetails},
    {path:'/evali',name:'evali',component:evali},

  ]
})
import Vue from 'vue'
import Router from 'vue-router'
import Footer from './components/Footer'
import Header from './components/Header'
import HeaderMv from './components/HeaderMv'
import Carousel from './components/Carousel'
import CityList from './components/CityList'
import cusdetails from './components/customer/cusdetails'
import evali from './components/customer/evali'
import Index from './views/Index'
import photoShow from './views/photoShow'
import customerList from './views/customerList'
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
      path: '/customerList',
      name: 'customserlist',
      component: customerList
    },
    {
      path: '/CityList',
      name: 'citylist',
      component: CityList
    },

    {
      path: '/photoShow',
      name: 'photoshow',
      component: photoShow
    },
    // 客户评价列表路由
    {
      path: '/customerList',
      name: 'customerlist',
      component: customerList
    },
    {
      path: '/customerdetails/:cid',
      name: 'cusdetails',
      component: cusdetails,
      props: true
    },
    {
      path: '/evali',
      name: 'evali',
      component: evali
    },

  ]
})
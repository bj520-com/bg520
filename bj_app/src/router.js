import Vue from 'vue'
import Router from 'vue-router'
import Footer from './components/Footer'
import Header from './components/Header'
import HeaderMv from './components/HeaderMv'
import Carousel from './components/Carousel'
import CityList from './components/CityList'
import CustomerCarousel from './components/CustomerCarousel'
import Index from './views/Index'
import photoShow from './views/photoShow'
import customserList from './views/customerList.vue'
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
      path: '/CustomerCarousel',
      name: 'customercarousel',
      component: CustomerCarousel
    },
    {
      path: '/customserList',
      name: 'customserlist',
      component: customserList
    },
    {
      path: '/CityList',
      name: 'citylist',
      component: CityList
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
      path: '/HeaderMv',
      name: 'headermv',
      component: HeaderMv
    },
    {
      path: '/photoShow',
      name: 'photoshow',
      component: photoShow
    }
  ]
})
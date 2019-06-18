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
import photoList from './views/photoList'
import customerList from './views/customerList'
import cusdetails from './components/customer/cusdetails'
import travel from './views/travel'
import travelList from './views/travelList'
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
      path: '/photoShow/:teng',
      name: 'photoshow',
      component: photoShow,
      props: true
    },
    {
      path: '/photoList',
      name: "photolist",
      component: photoList
    },
    {
      path: '/customerList',
      name: 'customerlist',
      component: customerList
    }, {
      path: '/customerdetails/:cid',
      name: 'cusdetails',
      component: cusdetails,
      props: true
    },
    {
      path: '/travelList',
      name: "travelList",
      component: travelList
    },
    {
      path: '/travel/:href',
      name: 'travel',
      component: travel,
      props: true
    }
  ]
})
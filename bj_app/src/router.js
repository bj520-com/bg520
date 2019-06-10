import Vue from 'vue'
import Router from 'vue-router'
import Footer from './components/Footer'
import Header from './components/Header'
import Header_mv from './components/Header_mv'
import Carousel from './components/Carousel'
import Index from './views/Index'
import photoShow from './views/photoShow'
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
      path: '/Header_mv',
      name: 'header_mv',
      component: Header_mv
    },
    {
      path: '/photoShow',
      name: 'photoshow',
      component: photoShow
    }
  ]
})
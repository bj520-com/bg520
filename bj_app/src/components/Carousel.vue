<template>
  <div class="swiper-container">
    <!-- swiper -->
    <swiper :options="swiperOption">
      <swiper-slide>
        <router-link to="home">
          <img src="../../public/images/carousel/1.jpg" alt>
        </router-link>
      </swiper-slide>
      <swiper-slide>
        <router-link to="home">
          <img src="../../public/images/carousel/2.jpg" alt>
        </router-link>
      </swiper-slide>
      <swiper-slide>
        <router-link to="home">
          <img src="../../public/images/carousel/3.jpg" alt>
        </router-link>
      </swiper-slide>
      <swiper-slide>
        <router-link to="home">
          <img src="../../public/images/carousel/4.jpg" alt>
        </router-link>
      </swiper-slide>
      <swiper-slide>
        <router-link to="home">
          <img src="../../public/images/carousel/5.jpg" alt>
        </router-link>
      </swiper-slide>
      <div class="swiper-pagination" slot="pagination"></div>
      <div class="swiper-button-prev swiper-button-white" slot="button-prev"></div>
      <div class="swiper-button-next swiper-button-white" slot="button-next"></div>
    </swiper>
  </div>
</template>

<script>
export default {
  name: "myCarousel",
  data() {
    return {
      swiperOption: {
        autoplay: {
          delay: 3000,
          stopOnLastSlide: false,
          disableOnInteraction: false
        },
        // pagination: {
        //   el: ".swiper-pagination"
        // },
        loop: true,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev"
        }
      }
    };
  }
};
</script>
<style scoped>
.swiper-container .swiper-wrapper a img {
  width: 100%;
  height: 100%;
}

.swiper-pagination-bullet {
  width: 6px;
  height: 6px;
  border: 2px solid #fff;
  border-color: rgba(255, 255, 255, 0.3);
  transition: all 0.2s;
}

.swiper-pagination-bullet-active {
  opacity: 1;
  background: #fff;
  border: 2px solid rgba(255, 255, 255, 0.3);
}
</style>
<template>
  <div class="city_carousel swiper-container">
    <swiper :options="swiperOption">
      <swiper-slide>
        <router-link to="index">
          <!-- <city></city> -->
        </router-link>
      </swiper-slide>
      <div class="swiper-pagination" slot="pagination"></div>
      <div class="swiper-button-prev swiper-button-white" slot="button-prev"></div>
      <div class="swiper-button-next swiper-button-white" slot="button-next"></div>
    </swiper>
  </div>
</template>

<script>
import myCity from "./city";
export default {
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
  },
  created() {
    this.getCityCarousel();
  },
  components: {
    // myCity
  },
  methods: {
    getCityCarousel() {
      this.axios.get("http://127.0.0.1:3000/city/").then(result => {
        console.log(result);
      });
    }
  }
};
</script>

<style lang="scss" scoped>
.city_carousel {
  margin-top: 10.1%;
}
</style>
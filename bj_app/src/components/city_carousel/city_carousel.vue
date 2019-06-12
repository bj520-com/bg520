<template>
  <div class="city_carousel swiper-container">
    <swiper :options="swiperOption">
      <swiper-slide>
        <router-link to="index">
          <city
            class="city"
            v-for="(item, i) in list"
            :key="i"
            :img="`http://127.0.0.1:3000/city/${item.car_img}`"
            :name_ENG="item.name_Eng"
            :name_CHI="item.name_CHI"
          />
        </router-link>
      </swiper-slide>
      <div class="swiper-pagination" slot="pagination"></div>
      <div class="swiper-button-prev swiper-button-white" slot="button-prev"></div>
      <div class="swiper-button-next swiper-button-white" slot="button-next"></div>
    </swiper>
  </div>
</template>

<script>
import city from "./city";
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
      },
      list: [],
      img: "",
      name_ENG: "",
      name_CHI: ""
    };
  },
  created() {
    this.getCityCarousel();
  },
  components: {
    city
  },
  methods: {
    getCityCarousel() {
      this.axios.get("city/").then(result => {
        // console.log(result.data.data[1].nameEng);
        this.list = result.data.data;
        console.log(this.list);
      });
    }
  }
};
</script>

<style lang="scss" scoped>
.city_carousel {
  margin-top: 10.1%;
  .city {
    width: 4.78rem;
    height: 100%;
  }
}
</style>
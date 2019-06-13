<template>
  <el-container>
    <el-header>
      <div class="tabbar">
        <my-header></my-header>
      </div>
    </el-header>
    <el-main>
      <!-- 首页大轮播图 -->
      <my-carousel></my-carousel>
      <div>
        <img class="img-fluid" src="../../public/images/index/index_city.jpg" alt>
      </div>
      <div class="city flex">
        <CityList/>
        <city-carousel/>
      </div>
      <div class="container-fluid">
        <div class="news_spring">
          <a href="https://app.bj520.com/">
            <img class="img-fluid" src="../../public/images/index/new-photo.jpg" alt>
          </a>
          <a href="https://www.bj520.com/page-47.html">
            <img class="news_spring_look" src="../../public/images/index/look.png" alt>
          </a>
        </div>
      </div>
      <!-- 旅拍城市轮播 -->
    </el-main>
    <el-footer>
      <my-footer></my-footer>
    </el-footer>
  </el-container>
</template>

<script>
import MyCarousel from "../components/Carousel";
import MyHeader from "../components/Header";
import MyFooter from "../components/Footer";
import HeaderMv from "../components/HeaderMv";
import CityCarousel from "../components/CityCarousel";
import CityList from "../components/CityList";
export default {
  name: "Index",
  data() {
    return {};
  },
  components: {
    MyCarousel,
    MyFooter,
    MyHeader,
    HeaderMv,
    CityCarousel,
    CityList
  }
};
</script>

<style lang="scss" scoped>
.el-container {
  padding: 0;
  .el-header {
    margin: 0 auto;
    height: 0.8rem !important;
    padding: 0;
    width: 100%;
  }
  .el-main {
    overflow: hidden;
    padding: 0;
    .city {
      flex-direction: column;
      justify-content: center;
      align-items: center;
      div {
        margin-top: 5%;
      }
    }
    .container-fluid {
      .news_spring {
        width: 100%;
        margin-top: 1.2rem;
        position: relative;
        .news_spring_look {
          position: absolute;
          width: 9%;
          top: -10%;
          right: 12.5%;
        }
      }
    }
  }
  .el-footer {
    padding: 0;
  }
}
</style>
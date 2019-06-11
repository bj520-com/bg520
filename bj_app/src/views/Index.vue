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
      <div class="img-fluid">
        <img src="../../public/images/index/index_city.jpg" alt>
      </div>
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
export default {
  name: "Index",
  data() {
    return {};
  },
  components: {
    MyCarousel,
    MyFooter,
    MyHeader,
    HeaderMv
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
    .img-fluid {
      img {
        width: 100%;
        height: auto;
      }
    }
  }
  .el-footer {
    padding: 0;
  }
}
</style>
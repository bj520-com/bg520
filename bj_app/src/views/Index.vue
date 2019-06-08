<template>
  <el-container>
    <el-header class="flex">
      <my-header></my-header>
    </el-header>
    <el-main>
      <!-- 首页大轮播图 -->
      <my-carousel></my-carousel>
      <div class="img-fluid">
        <img src="../../public/images/index/index_city.jpg" alt="">
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
import MyHeader from "../components/Header";
export default {
  name: "Index",
  data() {
    return {};
  },
  components: {
    MyCarousel,
    MyFooter,
    MyHeader
  }
};
</script>

<style lang="scss" scoped>
.el-container {
  padding: 0;
  .el-header {
    margin: 0;
    height: 0.8rem !important;
    background-color: #000;
  }
  .el-main {
    overflow: hidden;
    padding: 0;
  }
  .el-footer{
    padding: 0;
  }
}
</style>
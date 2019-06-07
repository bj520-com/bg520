<template>
  <el-container>
    <el-header class="flex">
      <my-header></my-header>
    </el-header>
    <el-main>
      <my-carousel></my-carousel>
    </el-main>
    <el-footer>
      <my-footer></my-footer>
    </el-footer>
  </el-container>
</template>

<script>
import MyCarousel from "../components/Carousel";
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
    padding: 0;
  }
  .el-footer{
    padding: 0;
  }
}
</style>
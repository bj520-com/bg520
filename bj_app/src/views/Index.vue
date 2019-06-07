<template>
  <div>
    <el-container>
      <el-header>
        <my-header></my-header>
      </el-header>
      <el-main>
        <my-carousel></my-carousel>
      </el-main>
      <el-footer>
        <my-footer></my-footer>
      </el-footer>
    </el-container>
  </div>
</template>

<script>
import MyCarousel from "../components/Carousel";
import MyHeader from "../components/Header";
import MyFooter from "../components/Footer";
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
</style>
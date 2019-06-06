<template>
  <div>
    <el-container>
      <el-head>
        <my-carousel></my-carousel>
      </el-head>
      <el-main></el-main>
      <el-footer></el-footer>
    </el-container>
  </div>
</template>

<script>
import MyCarousel from "../components/Carousel";
export default {
  name: "Index",
  data() {
    return {};
  },
  components: {
    MyCarousel
  }
};
</script>

<style lang="scss" scoped>
</style>
<template>
  <div>
    <Header>
      <my-carousel></my-carousel>
    </Header>
    <Main></Main>
    <Footer></Footer>
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
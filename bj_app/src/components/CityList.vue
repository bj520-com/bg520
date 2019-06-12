<template>
  <div>
    <ul class="city_list">
      <li class="city_item" v-for="(item, i) in list" :key="i">
        <a href="index">43</a>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      list: []
    };
  },
  methods: {
    getCityCarousel() {
      this.axios.get("city/").then(result => {
        // console.log(result.data.data[1].nameEng);
        this.list = result.data.data;
        console.log(result)
        console.log(this.list);
      });
    }
  }
};
</script>

<style lang="scss" scoped>
.city_list {
  text-align: center;
  padding-left: 0;
  .city_item {
    margin: 0 0.07rem 0.2rem;
    display: inline-block;
  }
}
tag1-active {
  background-color: #000;
  color: #fff;
}
</style>
<template>
  <div>
    <ul class="city_list">
      <li class="city_item" v-for="(item, i) in nameCHI" :key="i">
        <div>
          <a href="index">{{item}}</a>
        </div>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      list: [],
      nameCHI: []
    };
  },

  created() {
    this.getCity();
  },
  methods: {
    getCity() {
      this.axios.get("city/").then(result => {
        this.list = result.data.data;
        for (var i = 0; i < this.list.length; i++) {
          this.nameCHI.push(this.list[i].nameCHI);
        }
        this.nameCHI = Array.from(new Set(this.nameCHI));
        // console.log(this.nameCHI);
      });
    }
  }
};
</script>

<style lang="scss" scoped>
.city_list {
  width: 11.8rem;
  text-align: center;
  padding: 0;
  .city_item {
    box-sizing: border-box;
    margin: 0 0.07rem 0.2rem;
    display: inline-block;

    div {
      box-sizing: border-box;
      width: 1.04rem;
      height: 0.36rem;
      border: 1px solid #000;
      text-align: center;
      line-height: 0.36rem;
      letter-spacing: 0.02rem;
      display: inline-block;
      a {
        color: #000;
        font-size: 0.14rem;
        width: 100%;
        height: 100%;
        display: inline-block;
        transition: background-color 1s, color 1s;
      }
    }
  }
}
.tag1-active {
  background-color: #000;
  color: #fff;
}
</style>
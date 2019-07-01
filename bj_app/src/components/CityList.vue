<template>
  <div>
    <ul class="city_list flex">
      <li
        class="city_item"
        v-for="(item, i) in list"
        :key="i"
        @click="jumpToCity(item.did,item.nameCHI)"
      >
        <!-- :data-id="i" -->
        <div>
          <a>{{item.nameCHI}}</a>
        </div>
      </li>
    </ul>
  </div>
</template>

<script>
import { mapState, mapActions, mapGetters } from "vuex";
export default {
  data() {
    return {
      list: [],
      nameCHI: []
      // address: ""
    };
  },
  computed: {
    ...mapState({
      address: state => state.address
    })
  },
  props: ["city"],
  created() {
    this.getCity();
  },
  methods: {
    getCity() {
      this.axios.get("city/").then(result => {
        // console.log(result.data.data[1].nameEng);
        this.list = result.data.data;
        this.list.splice(17, 1);
        console.log(this.list);
        // for (var i = 0; i < this.list.length; i++) {
        //   this.nameCHI.push(this.list[i].nameCHI);
        // }
        // //去掉数组重复元素
        // this.nameCHI = Array.from(new Set(this.nameCHI));
      });
    },
    /*点击事件 */
    jumpToCity(did, city) {
      this.$router.push({ path: `/travel/${did}` });
      // console.log(this.address);
      console.log(city);
      // this.$router.go(0);
      window.location.reload();
      this.$store.state.address = city;
      console.log(city);
      // Vue.$set(address, city);
    }
  }
};
</script>

<style lang="scss" scoped>
.city_list {
  max-width: 12rem;
  text-align: center;
  padding: 0;
  flex-wrap: wrap;
  align-items: center;
  justify-content: center;
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
    .active {
      background-color: #000;
      color: #fff;
    }
  }
}
</style>
<template>
  <div class="navbar flex">
    <div class="navbar-brand">
      <a href="index">
        <img src="../../public/images/logo.png" alt>
      </a>
    </div>
    <el-menu
      :default-active="activeIndex"
      class="el-menu-demo flex"
      mode="horizontal"
      @select="handleSelect"
      background-color="#000"
      text-color="#fff"
    >
      <el-menu-item index="1">
        <router-link to="index">首页</router-link>
      </el-menu-item>
      <el-submenu index="2" text-color="#fff">
        <template slot="title">公司简介</template>
        <el-menu-item index="2-1">
          <router-link to="index">品牌介绍</router-link>
        </el-menu-item>
        <el-menu-item index="2-2">
          <router-link to="index">明星作品</router-link>
        </el-menu-item>
        <el-menu-item index="2-3">
          <router-link to="index">服务保障</router-link>
        </el-menu-item>
        <el-menu-item index="2-4">
          <router-link to="index">自选摄影师</router-link>
        </el-menu-item>
        <el-menu-item index="2-5">
          <router-link to="index">分店介绍</router-link>
        </el-menu-item>
        <el-menu-item index="2-6">
          <router-link to="index">360全景探店</router-link>
        </el-menu-item>
        <el-menu-item index="2-7">
          <router-link to="index">品牌活动</router-link>
        </el-menu-item>
      </el-submenu>
      <el-menu-item index="3">
        <router-link to="index">当季特惠</router-link>
      </el-menu-item>
      <el-menu-item index="4">
        <router-link to="index">旅拍城市</router-link>
      </el-menu-item>
      <el-menu-item index="5">
        <router-link to="index">客照欣赏</router-link>
      </el-menu-item>
      <el-menu-item index="6">
        <router-link to="index">客户微电影</router-link>
      </el-menu-item>
      <el-menu-item index="7">
        <router-link to="index">客户评价</router-link>
      </el-menu-item>
      <el-menu-item index="8">
        <router-link to="index">尚品旅拍</router-link>
      </el-menu-item>
      <el-menu-item index="9">
        <router-link to="index">奶茶旅拍</router-link>
      </el-menu-item>
      <el-menu-item index="10">
        <router-link to="index">会员登陆</router-link>
      </el-menu-item>
    </el-menu>
  </div>
</template>
<script>
export default {
  data() {
    return {
      activeIndex: "",
      activeIndex2: ""
    };
  },
  methods: {
    handleSelect(key, keyPath) {
      console.log(key, keyPath);
    }
  }
};
</script>

<style lang="scss" scoped>
.navbar {
  background-color: #000;
  margin-left: 19%;
  margin-right: 10%;
  height: 0.8rem;
  align-items: center;
  .navbar-brand {
    margin-right: 0.8rem;
  }
  .el-menu--horizontal {
    border: 0;
    align-items: center;
    justify-content: flex-start;
    width: 8.8rem;
    height: 0.8rem;
    .el-submenu {
      padding: 0;
      font-size: 0.012rem;
    }
    .el-menu-item {
      padding: 0 0.1rem;
      a {
        font-size: 0.012rem;
      }
    }
  }
}
a {
  color: #fff;
}
</style>
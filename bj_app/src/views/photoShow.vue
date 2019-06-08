<template>
  <div class="container">
    <!-- 顶部面包屑导航 -->
    <div class="t-breadcrumbs">
      <el-breadcrumb separator-class="el-icon-arrow-right">
        <el-breadcrumb-item>
          您当前位置：
          <a href="Index">铂爵(伯爵)旅拍婚纱摄影</a>
        </el-breadcrumb-item>
        <el-breadcrumb-item>
          <a href="Index">客户婚纱照</a>
        </el-breadcrumb-item>
        <el-breadcrumb-item class="myfont">8 月第4季最新客照</el-breadcrumb-item>
      </el-breadcrumb>
    </div>
    <!-- 右侧页面导航 -->
    <div class="t-jtweek-tj">
      <ul>
        <li>
          <router-link to="photoShow">
            <div class="t-photo-week-tj">5月第4季最新客照</div>
          </router-link>
        </li>
        <li>
          <router-link to="photoShow">
            <div class="t-photo-week-tj">5月第3季最新客照</div>
          </router-link>
        </li>
        <li>
          <router-link to="photoShow">
            <div class="t-photo-week-tj">5月第2季最新客照</div>
          </router-link>
        </li>
        <li>
          <router-link to="photoShow">
            <div class="t-photo-week-tj">5月第1季最新客照</div>
          </router-link>
        </li>
        <li>
          <router-link to="photoShow">
            <div class="t-photo-week-tj">4月第4季最新客照</div>
          </router-link>
        </li>
        <li>
          <router-link to="photoShow">
            <div class="t-photo-week-tj">4月第3季最新客照</div>
          </router-link>
        </li>
        <li>
          <router-link to="photoShow">
            <div class="t-photo-week-tj">4月第2季最新客照</div>
          </router-link>
        </li>
        <li>
          <router-link to="photoShow">
            <div class="t-photo-week-tj">4月第1季最新客照</div>
          </router-link>
        </li>
      </ul>
    </div>
    <!-- 主图片 -->
    <div v-for="(item,i) in list" :key="i">
      <img :src="'public/'+item" alt="">
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      list:[],
    }
  },
  computed: {},
  created() {
    this.loadPhoto();
  },
  methods: {
    loadPhoto() {
      // 1.创建url
      var url="/photoShow";
      // 2.创建参数对象
      var obj={};
      // 3.发送ajax请求
      this.axios.get(
        url,
      ).then(result=>{
        // 4.获取服务器数据
        // var pics=result.data.data[0].pics;
        // this.list=pics.split(',');
        // var pics=result.data.data[0].pics;
        this.list=result.data.data[0].pics.split(',');
      })
    }
  }
};
</script>

<style lang="scss" scoped>
.container {
  width: 84%;
  margin: auto;

  .t-breadcrumbs {
    margin-top: 36px;
    font-family: 宋体;

    .el-breadcrumb {
      .el-breadcrumb__item {
        a {
          font-size: 1.6rem;
          font-weight: 500;
        }
      }
    }

    a:hover {
      color: #000;
    }
  }

  .t-jtweek-tj {
    position: fixed;
    top: 15%;
    right: 12%;

    .t-photo-week-tj {
      width: 197px;
      font-size: 1.6rem;
      color: #000;
      border: 1px solid #000;
      margin-bottom: 18px;
      padding: 15px 0px;
      line-height: 20px;
    }
  }
}
</style>

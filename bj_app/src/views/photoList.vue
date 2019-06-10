<template>
  <div>
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
      </el-breadcrumb>
      <!-- 图片列表 -->
      <div class="">
        <my-photo></my-photo>
      </div>
      </div>
    </div>
  </div>
</template>

<script>
import MyPhoto from '../components/Photo.vue'
  export default {
    data(){
      return {}
    },
    components:{
      MyPhoto
    }
  }
</script>

<style lang="scss" scoped>
  .container {
  width: 70%;
  margin: auto;
  // 顶部面包屑
  .t-breadcrumbs {
    margin-top: 36px;
    font-family: 宋体;

    .el-breadcrumb {
      .el-breadcrumb__item {
        a,
        span {
          font-size: 0.15rem;
          font-weight: 500;
        }
      }
    }

    a:hover {
      color: #f00;
    }
  }
}
</style>
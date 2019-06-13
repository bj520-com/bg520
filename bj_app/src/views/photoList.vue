<template>
  <el-container>
    <el-header>
      <my-header></my-header>
    </el-header>
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
      </div>
      <!-- 图片列表 -->
      <div class="photoList flex">
        <my-photo
          v-for="(item,i) of list"
          :key="i"
          @click="clickPhoto($event)"
          :data-msg="i"
          :imgUrl="`http://127.0.0.1:3000/cuspho/${item.pname}/${item.pics[0]}.jpg`"
          :imgTitle="`${item.ptime}`"
          :listHref="`http://127.0.0.1:8080/#/photoshow/${item.cid}`"
        ></my-photo>
      </div>
      <!-- 底部分页 -->
      <el-pagination
        :page-size="9"
        :pager-count="6"
        layout="prev, pager, next"
        :total="90"
        :prev-text="lpage"
        :next-text="rpage"
        @current-change="loadPhoto"
      ></el-pagination>
    </div>
    <my-footer></my-footer>
  </el-container>
</template>

<script>
import myPhoto from "../components/Photo.vue";
import myHeader from "../components/Header.vue";
import myFooter from "../components/Footer.vue";
export default {
  data() {
    return {
      lpage: "上一页",
      rpage: "下一页",
      list: []
    };
  },
  components: {
    myPhoto,
    myHeader,
    myFooter
  },
  created() {
    this.loadPhoto();
  },
  methods: {
    loadPhoto(pno) {
      this.axios.get("photoList", { params: { pno } }).then(result => {
        // console.log(result.data.data[0].pics);
        // for(var i=0;i<result.length;i++){
        //   result.data.data[i].pics=result.data.data[i].pics.split(",");
        //    console.log(result.data.data[i].pics);
        // }
        this.list = result.data.data;
        console.log(this.list);
      });
    },
    clickPhoto(e) {
      var x = e.target.dataset.msg;
      return x;
    }
  }
};
</script>

<style lang="scss" scoped>
.el-container {
  .el-header {
    height: 0.8rem;
    background-color: #000;
    margin: 0;
    padding: 0;
  }
  .container {
    max-width: 12.04rem;
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

    // 图片列表
    .photoList {
      flex-wrap: wrap;
    }

    // 底部分页
    div.el-pagination {
      margin-top: 36px;
      color: #aaa;
    }
  }
}
</style>
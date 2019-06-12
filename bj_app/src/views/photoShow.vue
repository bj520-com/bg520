<template>
<div>
<my-header></my-header>
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
        <el-breadcrumb-item class="myfont">{{tempTitle}}</el-breadcrumb-item>
      </el-breadcrumb>
    </div>
    <!-- 右侧页面导航 -->
    <div class="t-jtweek-tj">
      <ul>
        <li v-for="(item,i) of timeList" :key="i">
          <router-link to="photoShow"  >
            <div @click="photoShow($event)" :data-msg="i" class="t-photo-week-tj">{{item.tchs}}</div>
          </router-link>
        </li>
      </ul>
    </div>
    <!-- 主图片 -->
    <div v-for="(item,i) in list" :key="i" class="t-city-img">
      <img :src="`http://127.0.0.1:3000/cuspho/${teng}/${item}`" alt>
      
    </div>
    <!-- 返回顶部 -->
    <el-backtop :bottom="100" :right="400">
      <div v-show="show" class="backTop">
        <i class="el-icon-arrow-up"></i>
      </div>
    </el-backtop>
  </div>
</div>
    
</template>

<script>
import myHeader from '../components/Header.vue'
export default {
  data() {
    return {
      list: [],
      timeList: [
        { teng: "mayfourth", tchs: "5月第4季最新客照" },
        { teng: "maythird", tchs: "5月第3季最新客照" },
        { teng: "maysecond", tchs: "5月第2季最新客照" },
        { teng: "mayfirst", tchs: "5月第1季最新客照" },
        { teng: "aprfourth", tchs: "4月第4季最新客照" },
        { teng: "aprthird", tchs: "4月第3季最新客照" },
        { teng: "aprsecond", tchs: "4月第2季最新客照" },
        { teng: "aprfirst", tchs: "4月第1季最新客照" }
      ],
      teng:'augfourth',
      msg:'',
      tempTitle:'8月第4季最新客照',
      show:false
    };
  },
  components:{
    myHeader},
  created() {
    this.loadPhoto();
  },
  mounted() {
     window.addEventListener('scroll', this.handleScroll);
  },
  methods: {
    loadPhoto() {
      // 1.创建url
      var url = "photoShow";
      // 2.创建参数对象
      var obj = {params:{pname:'augfourth'}};
      // 3.发送ajax请求
      this.axios.get(url,obj).then(result => {
        // 4.获取服务器数据
        // console.log(result);
        // var pics=result.data.data[0].pics;
        // this.list=pics.split(',');
        // var pics=result.data.data[0].pics;
        this.list = result.data.data[0].pics.split(",");
        
      });
    },
    photoShow(e) {
      var i= e.target.dataset.msg;
      this.teng=this.timeList[i].teng;
      this.tempTitle=this.timeList[i].tchs;
      this.list=[];
      this.axios.get(
        "photoShow",
        {params:{pname:this.timeList[i].teng}}
      ).then(result=>{
        this.list = result.data.data[0].pics.split(",");
        console.log(this.list);
      })
    },
    handleScroll(){
      this.show=true;
      // console.log(this.show);
    }
  }
};
</script>

<style lang="scss" scoped>
.container {
  width: 84%;
  margin: auto;
  // 顶部面包屑
  .t-breadcrumbs {
    margin-top: 36px;
    font-family: 宋体;

    .el-breadcrumb {
      .el-breadcrumb__item {
        a,
        span {
          font-size: 0.16rem;
          font-weight: 500;
        }
      }
    }

    a:hover {
      color: #000;
    }
  }
  // 右侧导航
  .t-jtweek-tj {
    position: fixed;
    top: 21%;
    right: 12%;

    .t-photo-week-tj {
      width: 197px;
      font-size: 0.16rem;
      color: #000;
      border: 1px solid #000;
      margin-bottom: 18px;
      padding: 15px 0px;
      line-height: 20px;
      background: #fff;
    }
    a :hover {
      color: #fff;
      background: #000;
    }
  }
  // 主图片
  .t-city-img {
    display: flex;
    flex-direction: column;
    margin-top: 50px;
    img {
      width: 72%;
      height: auto;
    }
  }
  // 返回顶部
  .backTop{
    height: 100%;
    width: 100%;
    background-color: #414141;
    box-shadow: 0 0 6px rgba(0,0,0, .12);
    text-align: center;
    line-height: 40px;
    color: #ccc;
    font-size:30px;
  }
}
</style>

<template>
  <div>
    <el-row>
      <!-- <el-col :span="12" :offset="index > 0 ? 2 : 0"> -->
        <el-card :body-style="{ padding: '0px' }" class="img-father">
          <a href="#">
            <img :src="imgUrl" class="image">
            <!-- <img src="cuspho/mayfourth/1.jpg" class="image"> -->
            <div style="padding: 14px;" class="title-father">
              <span class="img-title">{{imgTitle}}</span>
              <!-- <span class="img-title">5月第4季最新客照</span> -->
              <i class="el-icon-right"></i>
            </div>
          </a>
          
        </el-card>
      <!-- </el-col> -->
    </el-row>
    
  </div>
</template>

<script>
  export default {
    data(){
      return{}
    },
    props:{
      imgUrl:{default:""},
      imgTitle:{default:""}
    }
  }
</script>

<style lang="scss" scoped>
.img-father{
  width: 33%;
  margin-top: 36px;
  margin-right: 0px;
  transition: all .3s ease-out 0s;

  .image{
    width: 99%;
    height: auto;
    transition: all .3s ease-out 0s;
  }

  .image:hover{
    border:2px solid #e7090b;
  }
  .title-father{line-height: 0px;}
  .img-title{
    color: #666;
    font-size: 16px;
  }

  .el-icon-right{
    margin-left: 140px;
    font-size: 20px;
    color: #ddd;
    padding: 5px;
  }
}
.img-father:hover{
  box-shadow: 0 0 18px #666;
  transform: scale(1.01);
  .el-icon-right{
    background: #e7090b;
    border-radius: 50%;
    // color: #fff;
  }
}





</style>
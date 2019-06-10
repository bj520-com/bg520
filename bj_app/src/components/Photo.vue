<template>
  <div>
    <el-row>
      <!-- <el-col :span="12" :offset="index > 0 ? 2 : 0"> -->
        <el-card :body-style="{ padding: '0px' }" class="img-father">
          <a href="#">
            <!-- <img :src="imgUrl" class="image"> -->
            <img src="cuspho/mayfourth/1.jpg" class="image">
            <div style="padding: 14px;" class="title-father">
              <!-- <span>{{imgTitle}}</span> -->
              <span class="img-title">5月第4季最新客照</span>
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
    
  }
</script>

<style lang="scss" scoped>
.img-father{
  width: 33%;
  margin-top: 36px;
}
.image{
  width: 100%;
  height: auto;
}
.image:hover{border:3px solid }
.title-father{line-height: 0px;}
.img-title{
  color: #666;
  font-size: 16px;
}

.el-icon-right{
  margin-left: 140px;
  font-size: 20px;
  color: #ddd;
}
</style>
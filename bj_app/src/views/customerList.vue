<template>
    <div class="container" >
      <div class="onelist" style="text-align:left" v-for="(item,index) of list" :key=index>
              <div ><img :src="`http://127.0.0.1:3000/cuslist/${item.img}`" alt=""></div>
              <div class="textwidth" >
                  <div  class="text"> 
                    <div class="titleflex">
                        <span class="title">{{item.title}}</span><span class="city">大理</span>
                    </div>
                    <p class="subtitle">{{item.subtitle}}</p>
                  </div>
                  <div class="date titleflex">
                      <span>{{item.updateTime}}</span><img src="../assets/cuslist/news_jh.png" alt="" style="width:36px;height:36px">
                  </div>
              </div>
      </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            pnum:0,
            psize:6,
            list:[]
        }
    },
    created(){
        this.loadlist();
    },
    methods:{
       loadlist(){
           var pnum=this.pnum;
           var psize=this.psize;
           pnum++;
           var obj={pnum:pnum,psize:psize}
           this.axios.get("list",{params:obj}).then(result=>{
                var list=result.data.data;
                  console.log(list)
                this.list=list;
           })
       },
    },
}
</script>
<style>
   .container{
     margin-left:auto;
     margin-right:auto;
    }
    /* 容器响应式 */
    @media screen and (min-width:1200px){
        .container{
            max-width:1180px;
        }
    }
    
    @media screen and (min-width:992px) and (max-width: 1200px){
        .container{
            max-width:960px;
        }
    }
    @media screen and (min-width:768px) and (max-width: 991px){
        .container{
            max-width:720px;
        }
    }
      @media screen and (min-width:576px) and (max-width:768px){
        .container{
            max-width:540px;
        }
    }
    /* 边框阴影 */
    .onelist{
        box-shadow:0px 0px 10px 5px #f3f3f3;
        margin-bottom:50px;
        display: flex;
    }
    /* 1200以下换行 */
    @media screen and (max-width: 1200px){
         .onelist{
             flex-wrap: wrap;
         }
         .textwidth{
             width:70%;
         }
    }
    .text{
        margin:30px 40px;
    }
    /* 标题 */
    .titleflex{
        display:flex;
        justify-content: space-between;
    }
   .title{
       font-size:24px;
       color:#111111;
       margin-bottom:30px;
   }
   .city{
       color:#333333;
       font-size:18px
   }
   /* 副标题 */
   p.subtitle{
       font-family:"宋体";
       font-size:16px;
        height: 48px; 
        /* white-space: nowrap;
　text-overflow:ellipsis; 
　　overflow:hidden;
　　-webkit-line-clamp: 2;
　　-webkit-box-orient: vertical; */
   }
   /* 日期 */
   .date{
       background-color:#2f2f2f;
       padding:15.5px 40px;
       color:#d1d1d1;
       font-size:30px;
       font-family: "[Helvetica]";
       align-items: center;
   }
</style>


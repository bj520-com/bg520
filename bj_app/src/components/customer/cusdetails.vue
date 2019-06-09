<template>
    <div class="container" style="border:1px solid #f00">
         <el-row :gutter="10">
             <el-col :span="16"  v-for="(item,index) of list" :key="index">
                 <!-- 导航组件 -->
                 <cusnav :classnav="item.classnav" :navtitle="item.title"></cusnav>
                 <!--标题 -->
                 <p class="title">{{item.title}}</p>
                 <p class="subtitle">{{item.subtitle}}</p>
                 <!-- 文字和图片 -->
                 <div style="text-align:left" v-for="(item,index) of arr" :key="index">
                     <div class="details">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;{{item.text}}
                     </div>
                    <img :src="`http://127.0.0.1:3000/cusdetails/${item.img}`" alt="" style="width:775px">  
                 </div>
                
                 </el-col>
             <el-col :span="8" style="text-align:right"><img src="../../assets/cuslist/list2.jpg" alt=""></el-col>
         </el-row>
    </div>
</template>
<script>
import cusnav from './cusnav'
export default {
    data(){
        return{
            list:[],
            arr:[]
        }
    },
    created(){
         this.loaddetails();
    },
    methods:{
       loaddetails(){
            var cid=this.cid
            this.axios.get("details",{
                params:{cid}
            }).then(result=>{
                var list=result.data.data
                this.list=list
                console.log(list)
                var strtext=list[0].details
                var strimgs=list[0].img
                var  arrtext=strtext.split("|")
                var  arrimg=strimgs.split(",")
                var arr=[]
               for(var i=0;i<arrtext.length;i++){
                    var obj={}
                     obj.text=arrtext[i]
                     obj.img=arrimg[i]
                     arr[i]=obj
               }
               console.log(arrtext,arrimg[0],)
               console.log(arr)
               this.arr=arr
            })
       }
    },
    components:{
        cusnav,
    }
}
</script>
<style>
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
    /* 标题 */
    p.title{
        font-size:25px;
        color:#505050;
        margin-top:1rem;
        margin-bottom:10px;
    }
    p.subtitle{
        font-family:"宋体";
        font-size:12px;
        color:#999;
        margin-bottom:20px;
    }
    .details{
        font-size:16px;
        margin:15px 0;
    }
</style>



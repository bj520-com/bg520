
  

<template>
  <div class="video">
    <div class="header_video">
      <video v-bind:style="{width:myWidth}" src="../../public/images/hd_hq.mp4" autoplay loop></video>
    </div>
  </div>
</template>

<script>
export default {
  name: "HeaderMv",
  data() {
    return {
      myWidth: window.innerWidth + "px"
    };
  },
  mounted() {
    // 注：window.onresize只能在项目内触发1次
    window.onresize = function windowResize() {
      // 通过捕获系统的onresize事件触发我们需要执行的事件
      this.myWidth = window.innerWidth + "px";
    };
  }
};
</script>
<style lang="scss" scoped>
.video {
  padding: 0;
  margin: 0;
  .header_video {
    text-align: center;
    video {
      width: 100%;
      height: auto;
    }
  }
}
</style>
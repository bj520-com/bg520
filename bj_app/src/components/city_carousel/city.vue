<template>
  <div class="city flex">
    <a href>
      <img src="../../../public/images/city/4aaee6b255.jpg" class="img-fluid" alt>
      <div class="city_content">
        <p>
          <span class="span1">SANYA</span>
          &nbsp;
          <span class="span2">三亚</span>
        </p>
        <span>最新客照展示</span>
        <div class="tsgd">点击查看</div>
      </div>
    </a>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  }
};
</script>

<style lang="scss" scoped>
.city {
  flex-direction: column;
  display: inline-block;
  border: 1px solid #e6e6e6;
  border-left: none;
  padding: 0.2rem;
  a {
    color: #000;
    .city_content {
      font-family: "宋体";
      text-align: center;
      margin: 0.5rem auto 0.2rem;
      span {
        font-size: 0.16rem;
        color: #8d8d8d;
      }
      p {
        margin-top: 0;
        margin-bottom: 0.1rem;
        .span1 {
          font-size: 0.22rem;
          line-height: 0.28rem;
          font-family: "Didot";
          color: #000;
        }
        .span2 {
          font-size: 0.2rem;
          line-height: 0.28rem;
          font-family: "宋体";
          color: #000;
        }
      }
      div {
        font-size: 0.15rem;
        transition: background-color 1s color 1s;
        width: 1.3rem;
        height: 0.4rem;
        border: 1px solid #000;
        text-align: center;
        line-height: 0.4rem;
        letter-spacing: 0.02rem;
        margin: 0.3rem auto 0;
      }
    }
  }
}
</style>
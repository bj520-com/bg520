<template>
  <div class="container">
    <div>
      <div class="footer_nav_dash"></div>
      <ul class="footer_nav">
        <li>
          <router-link to="index">公司首页</router-link>
        </li>
        <li>
          <router-link to="index">公司简介</router-link>
        </li>
        <li>
          <router-link to="index">人才招聘</router-link>
        </li>
        <li>
          <router-link to="index">银行账户</router-link>
        </li>
        <li>
          <router-link to="index">客照欣赏</router-link>
        </li>
        <li>
          <router-link to="index">客户微电影</router-link>
        </li>
        <li>
          <router-link to="index">联系我们</router-link>
        </li>
      </ul>
    </div>
    <div class="footer_copyright">
      <hr>
      <div class="footer_copyright_words">
        <div class="spans">
          <span class="cnzz">
            <a
              href="https://new.cnzz.com/v1/login.php?siteid=1274455322#source=baidu&plan=01&PC&quanguo-duihua(dijia)&unit=tongyong-paixing&keyword=xianhunshasheyingqianshiming?renqun_youhua=269749&bd_vid=10474987016646166658"
              title="站长统计"
              rel="nofollow"
              target="_blank"
            >
              <img src="../../public/images/footer/pic1.gif" alt>
            </a>
          </span>
          <span>
            <a
              href="https://ss.knet.cn/verifyseal.dll?sn=e18030935020072243br05000000&ct=df&a=1&pa=0.7935481963136295#source=baidu&plan=01&PC&quanguo-duihua(dijia)&unit=tongyong-paixing&keyword=xianhunshasheyingqianshiming?renqun_youhua=269749&bd_vid=10474987016646166658"
              target="_blank"
              rel="nofollow"
            >
              <img src="../../public/images/footer/cx_cert.png" alt="可信网站">
            </a>
          </span>
          <span>
            <a
              href="https://credit.szfw.org/CX20180310037605180181.html#source=baidu&plan=01&PC&quanguo-duihua(dijia)&unit=tongyong-paixing&keyword=xianhunshasheyingqianshiming?renqun_youhua=269749&bd_vid=10474987016646166658"
              target="_blank"
              rel="nofollow"
            >
              <img src="../../public/images/footer/hy_124x47.png">
            </a>
          </span>
        </div>
      </div>
    </div>
    <div class="footer_banner">
      <img src="../../public/images/footer/footer_banner.png" alt>
    </div>
    <div class="footer_links">
      <a href="javascript:;">友情链接：</a>
      <a href="http://www.weilanhaian.com/">上海婚纱摄影&nbsp;</a>
      <a href="https://www.chloe99.com/">巴厘岛婚纱摄影&nbsp;</a>
      <a href="http://www.bjcshy.com/">婚纱照哪家好&nbsp;</a>
      <a href="http://www.mnlsgd.com/">西安婚纱摄影&nbsp;</a>
      <a href="https://www.blove.com/news/">结婚钻戒品牌&nbsp;</a>
      <a href="http://xm.wed114.cn/">厦门婚纱摄影&nbsp;</a>
      <a href="http:/www.hmdays.com/">海外婚礼&nbsp;</a>
      <a href="http://www.faxingw.cn/faxingtupian/">发型图片&nbsp;</a>
      <a href="http://www.shuijingzhilian.com.cn/">北京婚纱摄影&nbsp;</a>
      <a href="https://www.dglove.com/">征婚交友&nbsp;</a>
      <a href="http://www.51hibaby.com/">儿童摄影&nbsp;</a>
      <a href="http://www.canaanwed.com">婚庆公司&nbsp;</a>
      <a href="javascript:;">交换友链添加：474764333</a>
    </div>
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
.container {
  .footer_nav_dash {
    border-top: 1px dashed #7f7f7f;
    overflow: hidden;
    height: 1px;
    width: 50%;
    margin: 2.1% auto 1.5625%;
  }
  .footer_nav {
    list-style: none;
    text-align: center;
    margin-bottom: 1.8%;
    li {
      display: initial;
      text-decoration: underline;
      font-size: 1.4rem;
      a {
        color: #333;
        margin-right: 1%;
        font-size: 1.4rem;
      }
    }
  }
  .footer_copyright {
    hr {
      margin: 0;
    }
    .footer_copyright_words {
      text-align: center;
      font-size: 1.4rem;
      line-height: 80px;
      position: relative;
      .spans {
        position: absolute;
        right: 4.1%;
        bottom: 0;
        img {
          width: 50px;
        }
        span {
          display: inline-block;
          position: relative;
          width: auto;
        }
        span.cnzz {
          width: 20px;
        }
      }
    }
  }
  .footer_banner {
    display: block;
    height: auto;
  }
  .footer_links {
    margin-top: 10px;
    font-size: 10px;
    opacity: 0.5;
    text-align: center;
    a {
      color: #666666;
      display: inline-block;
      background-color: transparent;
      margin-left: 2px;
    }
  }
}
</style>
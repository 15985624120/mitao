<template>
  <div class="index" v-my-pigment 
    infinite-scroll-distance="60"
      v-infinite-scroll="isShow"
      infinite-scroll-disabled="diab"
      infinite-scroll-immediate-check="true"
  >
    <mt-header title="蜜桃摄影" fixed
      ><!--fixed-->
      <div slot="left">
        <img
          class="logo"
          src="../assets/mitao/LOGO/3logo.png"
          alt=""
          slot="icon"
        />
      </div>
      <div slot="right" class="nav">
        <router-link to="/search">
          <img src="../assets/header/search.png" alt="" />
        </router-link>

        <div class="log" v-if="islogin != 1">
          <router-link to="/login">登录</router-link>
          <router-link to="/register">注册</router-link>
        </div>
      </div>
    </mt-header>
    <!-- 轮播 -->
    <div class="banler">
      <mt-swipe
        :showIndicators="true"
        :auto="3000"
        :speed="500"
        :continuous="true"
      >
        <mt-swipe-item v-for="(v, i) of banler" :key="i">
          <img :src="v.two_tu" alt="" />
        </mt-swipe-item>
      </mt-swipe>
    </div>
    <!-- 功能分类 -->
    <div class="classification">
      <ul>
        <li v-for="(v, i) of classify" :key="i">
          <router-link :to="v.href">
            <img :src="style == 0 ? v.path1 : v.path2" alt="" /><br />
            <span>{{ v.text }}</span>
          </router-link>
        </li>
      </ul>
    </div>
    <!-- 一楼广告 -->
    <div class="advert">
      <router-link to="">
        <img
          src="../assets/guaogang/f88111e5cf147e4c5850678e43ad52a5.jpg"
          alt=""
        />
      </router-link>
    </div>
    <!-- 一楼摄影师 -->
    <h3 style="">1F / 特约摄影师</h3>
    <div class="camerist fen">
      <!--  -->
      <div class="shey_bg" v-for="(v,i) of issheys" :key="i">
        <router-link :to="`/photographer/${v.fid}`">
          <div class="d-fled justify">
            <div>
              <img class="touxiao" v-lazy="v.portduce" alt="" />
              <span class="ml-1">{{v.nickname}}</span>
            </div>
            <div class="btn-fu">
              <button class="btn">预约 +</button>
            </div>
          </div>
          <p class="ml-1 font_12">擅长方向 {{v.direction}}</p>
          <ul class="list-style d-fled">
            <li><img v-lazy="v.imgt[0].big_tu" alt="" /></li>
            <li><img v-lazy="v.imgt[1].big_tu" alt="" /></li>
            <li>
              <div>
                <img v-lazy="v.imgs[0].two_tu" alt="" />
              </div>
              <div>
                <img v-lazy="v.imgs[1].two_tu" alt="" />
              </div>
            </li>
          </ul>
        </router-link>
      </div>
      <!--  -->

      <!--  -->
    </div>
    <!-- 摄影师的查看更多多 -->
    <div class="mx">
      <mt-button @click="camerama" class="fen" type="primary" size="large"
        >查看更多</mt-button
      >
    </div>

    <!-- 二楼广告 -->
    <div class="advert">
      <router-link to="">
        <img src="../assets/guaogang/G@C3V~B[(TKN~_41QX1]SFY.png" alt="" />
      </router-link>
    </div>
    <!-- 二楼 产品 -->
    <h3 style="margin-top: ">2F / 摄影产品</h3>
    <div class="mx canp fen">
      <ul class="list-style d-fled fled-w">
        <li v-for="(v, i) of iSchanp" :key="i">
          <router-link :to="`/goods/${v.cid}`">
            <div>
              <img v-lazy="v.img" alt="" />
            </div>
            <div>
              <p>{{ v.trade_name }}</p>
              <p>{{ v.introduce }}</p>
              <p>￥{{ v.price.toFixed(2) }}</p>
              <button>查看详情</button>
            </div>
          </router-link>
        </li>
      </ul>
    </div>
    <!-- 产品查看更多 -->
    <div class="mx">
      <mt-button @click="chanp" class="fen" type="primary" size="large"
        >查看更多</mt-button
      >
    </div>
    <!-- 三楼广告 -->
    <div class="advert">
      <router-link to="">
        <img src="../assets/guaogang/EM8`{E7X9B[WW[VTAE5]0]Y.png" alt="" />
      </router-link>
    </div>
    <!-- 三楼  科普-->
    <h3 style="margin-top: ">3F / 摄影科普</h3>
    <div class="kepu mx fen">
      <div class="artilce" v-for="(v,i) of iSkep" :key="i">
        <router-link to="/popular">
          <!-- 标题开始 -->
          <div class="artilce-title">{{v.text}}</div>
          <!-- 标题结束 -->
          <!-- 图片和简介开始 -->
          <div class="artilce-wrapper">
            <!-- 当图片没有时，就不显示这个元素 -->
            <div class="wrapper-img">
              <!-- 图片懒加载指令 -->
              <img v-lazy="v.imgs" alt="" />
            </div>
            <div class="wrapper-text">
              {{v.vals}}
            </div>
          </div>
        </router-link>
        <!-- 图片和简介结束 -->
      </div>
    </div>
    <!-- 科普查看更多 -->
    <div class="mx">
      <mt-button @click="kepu" class="fen" type="primary" size="large"
        >查看更多</mt-button
      >
    </div>
    <!-- 四楼广告 -->
    <div class="advert">
      <router-link to="">
        <img src="../assets/guaogang/EM8`{E7X9B[WW[VTAE5]0]Y.png" alt="" />
      </router-link>
    </div>
    <!-- 了解蜜桃 -->
    <div class="mx foont">
      <router-link to="/positioning">
        <mt-button class="fen" type="primary" size="large"
          >了解蜜桃＞＞</mt-button
        >
      </router-link>
    </div>

    <my-tabbar />
  </div>
  <!--      基于图片的比例问题   可以做一个盒子 然后做溢出隐藏 然后点击查看全图 达到不压缩图片 -->
</template>


<style>
/* 
.index.fens .mint-tabbar>.mint-tab-item.is-selected{
  color: #ff6699;
}
.index.zong .mint-tabbar>.mint-tab-item.is-selected{
  color: #9b7159;
} */

/* nav */

.index .nav .log {
  display: inline-block;
}
.index .nav .log a:first-child {
  margin-right: 8px;
}
.index .nav .log a:last-child {
  margin-right: -10px;
}
.index .nav a {
  color: #fff;
}
.index.fens .fen {
  background: #ff6699;
}
.index.zong .fen {
  background: #9b7159;
}
/* 导航粉色 */
.index.fens .mint-header {
  background: #ff6699;
}
/* 棕色 */
.index.zong .mint-header {
  background: #9b7159;
}
.index .logo {
  width: 48px;
  height: 36px;
}
.index .nav :nth-child(1) {
  margin-right: 3px;
}
.index .nav :nth-child(2) {
  margin-right: 10px;
}
/* 轮播 */
.index .banler {
  height: 188px;
  margin-top: 40px;
}
.index .banler img {
  width: 100%;
  object-fit: cover;
}
/* 功能分类 */
.index .classification {
  margin: 15px;
 
  height: 126px;
  box-sizing: border-box;
  padding: 15px 15px;
  border-radius: 10px;
  background: rgba(245, 245, 189, 0.3);
}
.index .classification ul {
  list-style: none;
  margin: auto;
  display: flex;
  flex-wrap: wrap;
  text-align: center;
}
.index .classification ul li {
  margin: auto;
  width: 25%;
  margin-top: 5px;
  /* margin: 5px 15px; */
  text-align: center;
}
.index .classification ul li span {
  display: inline-block;
  margin-top: 5px;
}
/* 一楼广告 */
.index .advert {
  margin-top: 15px;
  margin-bottom: 15px;
  padding: 0 15px;
}
.index .advert img {
  width: 100%;
  height: 95px;
  border-radius: 10px;
      object-fit: cover;
}
/* 一楼摄影师 */
.index h3 {
  font-size: 16px;
  font-weight: 800;
  margin: 10px 15px;
}
.index .camerist {
  padding: 10px;
  margin: 0px 15px;
  border-radius: 10px;
}
/* 一楼以下的粉色 */
.index.fens .fen {
  background: #ffcccc;
}
/* 一楼以下的棕色色 */
.index.zong .fen {
  background: #c4a68e;
}

.index .camerist .shey_bg:not(:first-child) {
  margin-top: 10px;
}
.index .camerist .shey_bg .touxiao {
  width: 36px;
  height: 36px;
  border-radius: 50%;
}
.index .shey_bg .justify {
  justify-content: space-between;
}
.index .camerist .shey_bg .btn-fu {
  line-height: 36px;
}
.index .camerist .shey_bg .btn {
  /* margin-left: 44%; */
  font-size: 14px;

  outline: none;
  border: none;
  border-radius: 5px;
}
.index.fens .camerist .shey_bg .btn {
  background: #ffccdd;
}
.index.zong .camerist .shey_bg .btn {
  background: #9b7159;
}
.index .camerist .shey_bg .font_12 {
  font-size: 12px;
  color: rgba(0, 0, 0, 0.5);
  padding: 8px 0;
}
.index .camerist .shey_bg ul.list-style > li {
  width: 33.3%;
  height: 150px;
}
.index .camerist .shey_bg ul.list-style li:not(:first-child) {
  margin-left: 5px;
}
.index .camerist .shey_bg ul.list-style > li:not(:last-child) img {
  width: 100%;
  height: 150px;
      object-fit: cover;
}
.index .camerist .shey_bg ul.list-style li:last-child div:last-child {
  /* margin-top: 5px; */
  box-sizing: border-box;
  padding-top: 5px;
}
.index .camerist .shey_bg ul.list-style li:last-child div {
  width: 100%;
  height: 50%;
}
.index .camerist .shey_bg ul.list-style li:last-child img {
  width: 100%;
  height: 100%;
      object-fit: cover;
}

.index .mx .mint-button {
  margin-top: 5px;
  border-radius: 10px;
}
/* 按钮粉色系 */
.index.fens .mx .fen.mint-button {
  background: #ffccdd;
}
/* 按钮粉色系 */
.index.zong .mx .fen.mint-button {
  background: #9b7159;
}
/* 二楼产品 */
.index .canp {
  padding: 5px;
  border-radius: 10px;
}

/* .index .canp ul{margin: auto; text-align: center;} */
.index .canp ul > li {
  /* width: 167px; */
  margin: 0 auto;
  width: 47.5%;
  text-align: center;
  /* padding: 5px 1rem; */
  margin-top: 5px;
}
.index .canp ul > li div:first-child {
  background: rgba(255, 255, 255, 0.3);
  padding: 15px 0;
  border-radius: 10px;
}

.index .canp ul > li img {
  /* margin-top: 11%; */
  width: 134px;
  height: 134px;
      object-fit: cover;
}
.index .canp ul > li div:last-child {
  margin-top: 15px;
}
.index .canp ul > li div:last-child p {
  margin: 5px 10px;
}
/* 按钮 */
.index .canp ul > li div:last-child p + button {
  outline: none;
  border: none;
  padding: 6px 12px;
  font-size: 12px;
  border-radius: 5px;
  color: #fff;
}
.index.fens .canp ul > li div:last-child p + button {
  background: #ffccdd;
}
.index.zong .canp ul > li div:last-child p + button {
  background: #9b7159;
}
.index .canp ul > li div:last-child p:nth-child(2) {
  width: 90%;
  font-size: 12px;
  color: rgba(0, 0, 0, 0.5);
  padding-right: 5px;
  text-align: center;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.index.fens .canp ul > li div:last-child p:nth-child(3) {
  color: #ff6699;
}
.index.zong .canp ul > li div:last-child p:nth-child(3) {
  color: #9b7159;
}
/* 三楼科普 */
/* 文章容器 */
.index .artilce {
  margin: 10px;
  padding: 5px;
  padding-bottom: 10px;
  border-bottom: 1px solid #999;
}
.index .artilce:last-child {
  border: none;
  margin-bottom: 0;
}
.mx {
  border-radius: 10px;
}
/* 文章标题 */
.index .artilce .artilce-title {
  font-size: 16px;
  font-weight: bolder;
  color: #1a1a1a;
  line-height: 22px;
}
/* 文章容器 */
.index .artilce .artilce-wrapper {
  display: flex;
  align-items: center; /*项目在交叉轴上的对齐方式 */
  margin-top: 5px;
}
/* 图片 */
.index .artilce .artilce-wrapper .wrapper-img img {
  width: 80px;
  height: 80px;
  border-radius: 5px;
  margin-right: 15px;
      object-fit: cover;
}
/* 文章内容 */
.index .artilce .artilce-wrapper .wrapper-text {
  font-size: 15px;
  font-weight: 400;
  line-height: 21px;
  color: #444;
  height: 64px;
  overflow: hidden;
}
.index .foont {
  margin-bottom: 72px;
}
.index .shang {
  position: fixed;
  right: 2px;
  bottom: 85px;
}
</style>
<script>
// 引入vuex的辅助函数
import { mapState } from "vuex";
import { mapGetters } from "vuex";
import { mapMutations } from "vuex";
import { mapActions } from "vuex";
export default {
  data() {
    return {
      url: null,
      banler: [],
      classify: [],
      style: 0, //风格
      islogin: null, //登录状态
      iSchanp: [],//产品
      iSkep:[],//科普
      issheys:'',//摄影师
      diab:false
    };
  },
  computed: {
    //  ...mapState(['islogin'])
  },
  methods: {
    //滚动加载事件
    isShow(){
      this.box();
      this.diab=true
      // console.log('1223')
      // 产品
      this.axios.get("/chanp").then((res) => {
        // console.log(res.data)
        let data = res.data.result;
        for (let val of data) {
          val.img = require("../assets/chanp/fuzhu/" + val.img);
        }
        this.iSchanp = data;
      });
       // 科普
      this.axios.get('/kepuIsindex').then(res=>{
        let data=res.data.lpi
        for(let vals of data){
          vals.imgs=require("../assets/kepu/"+vals.imgs)
          this.iSkep.push(vals)
        }
        this.nObox()
      })
    },
    //获取vuex中的修改返回地址函数
    chanp() {
      //产品查看更多
      this.$router.push("/chanp");
    },
    kepu() {
      //科普查看更多
      this.$router.push("/kepu");
    },
    camerama() {
      //摄影
      this.$router.push("/camerama");
    },
    // 封装页面加载
    box() {
      //加载提示框 不会自动消失，要手动清楚
      this.$indicator.open({
        text: "加载中...",
        spinnerType: "triple-bounce",
      });
    },
    //封装清楚加载提示框
    nObox() {
      // 清楚加载提示框
      this.$indicator.close();
    },
  },
  mounted() {
    (this.islogin = localStorage.getItem("uname-show")
      ? localStorage.getItem("uname-show")
      : 0),
      (this.style = localStorage.getItem("style")
        ? localStorage.getItem("style")
        : "0");
    //加载提示框
    // this.box();
    //轮播加载
    this.axios.get("/banler").then((res) => {
      var obj = res.data;
      for (var value of obj) {
        value.two_tu = require(`../assets/banler/${value.two_tu}`);
        this.banler.push(value);
      }
    });
    //分类功能加载
    this.axios.get("/classify").then((res) => {
      let data = res.data.result;
      for (var val of data) {
        val.path1 = require("../assets/svg/svg_index/" + val.path1);
        val.path2 = require("../assets/svg/svg_index/" + val.path2);
      }
      this.classify = data;
      //
      this.nObox();
    });
    //摄影师
    this.axios.get('/camerama').then(res=>{
      // console.log(res.data)
      let data=res.data
      //处理头像
      for(let val of data){
        //处理头像
        val.portduce=require('../assets/camerama/'+val.portduce)
        for(let md of val.imgs){
          md.two_tu=require('../assets/camerama/'+md.two_tu)
        }
        // 处理大图
        for(let xd of val.imgt){
          xd.big_tu=require('../assets/camerama/'+xd.big_tu)
        }
      };
      this.issheys=data
    })
     
  },
};
</script>
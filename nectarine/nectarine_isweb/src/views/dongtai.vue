<template>
  <div class="dongtai" v-my-pigment>
    <mt-header :fixed="true">
      <span slot="left">动态</span>

      <div slot="right">
        <mt-button @click="sou">
          <img src="../assets/header/search.png" alt="" />
        </mt-button>
        <router-link to="/img">
          <mt-button>
            <img class="svg" src="../assets/tianjia.svg" alt="" />
          </mt-button>
        </router-link>
      </div>
    </mt-header>

    <!-- 动态 -->
    <div class="fen pdd mian">
      <!--  -->
      <div class="dongtai-li" v-for="(v, i) of iSdongtai" :key="i">
        <!-- 用户信息 -->
        <div class="d-fled pos">
          <!-- 头像 -->
          <img
            class="touxiao"
            :src="
              v.portrait
                ? v.portrait
                : require('../assets/dongtai/timg (1).gif')
            "
            alt=""
          />
          <div>
            <span class="ml-1">{{
              v.nickname == "用户:" ? "佩奇" : v.nickname
            }}</span>
            <p>
              <span class="ml-1 font-span">发布日期：2020-10-17</span>
            </p>
          </div>
          <button class="btn">关注+</button>
        </div>
        <!-- 内容 -->
        <div>
          <p>
            {{ v.copyss }}
          </p>
          <div class="image">
            <img
              v-for="(val, index) of v.imgs"
              :key="index"
              v-image-preview
              :src="`http://127.0.0.1:3100/users/useImg?src=${val}`"
              class="xunhuan"
              alt=""
            />
          </div>
        </div>
      </div>
      <!--列表开始  -->

      <!--  -->
    </div>
    <!-- 底部导航 -->
    <mt-tabbar v-model="active" fixed>
      <mt-tab-item id="1"
        >{{ tabbar[0].name }}
        <img
          :src="style == 0 ? tabbar[0].p1 : tabbar[0].p2"
          slot="icon"
          alt=""
        />
      </mt-tab-item>
      <mt-tab-item id="2"
        >{{ tabbar[1].name }}
        <img
          :src="style == 0 ? tabbar[1].p1 : tabbar[1].p2"
          slot="icon"
          alt=""
        />
      </mt-tab-item>
      <mt-tab-item id="3"
        >{{ tabbar[2].name }}
        <img
          :src="style == 0 ? tabbar[2].p1 : tabbar[2].p2"
          slot="icon"
          alt=""
        />
      </mt-tab-item>
      <mt-tab-item id="4"
        >{{ tabbar[3].name }}
        <img
          :src="style == 0 ? tabbar[3].p1 : tabbar[3].p2"
          slot="icon"
          alt=""
        />
      </mt-tab-item>
    </mt-tabbar>
  </div>
</template>
<style >
/* 底部导航 */
.dongtai.fens .mint-tabbar > .mint-tab-item.is-selected {
  color: #ff6699;
}
.dongtai.zong .mint-tabbar > .mint-tab-item.is-selected {
  color: #9b7159;
}
/* 导航定位 */
.mian {
  margin-top: 40px;
}

/* 导航粉色 */
.dongtai.fens .mint-header {
  background: #ff6699;
}
/* 棕色 */
.dongtai.zong .mint-header {
  background: #9b7159;
}
/* 背景 */
.dongtai.fens .fen {
  background: #ffcccc;
  box-shadow: 0px 0px 10px #ffcccc;
}
.dongtai .pdd {
  padding: 15px;
}
/* 一楼以下的棕色色 */
.dongtai.zong .fen {
  background: #c4a68e;
}
.dongtai .svg {
  margin-left: 10px;
  width: 24px;
  height: 24px;
}
/* 动态 */
.dongtai .dongtai-li {
  background: rgba(255, 255, 255, 0.5);
  border-radius: 10px;
  padding: 10px;
  margin-bottom: 10px;
}
.dongtai .dongtai-li .pos {
  position: relative;
  margin-bottom: 10px;
}
.dongtai .pdd div:last-child {
  margin-bottom: 0;
}
.dongtai .dongtai-li div:first-child img {
  width: 36px;
  height: 36px;
  border-radius: 50%;
  object-fit: cover;
}
.dongtai .dongtai-li div:first-child {
  align-items: center;
}
.dongtai .dongtai-li div:first-child .font-span {
  font-size: 10px;
  color: rgba(0, 0, 0, 0.5);
  padding: 8px 0;
}
.dongtai .dongtai-li .btn {
  position: absolute;
  /* margin-left: 10%; */
  right: 0;
  border: none;
  outline: none;
  background: rgba(255, 255, 255, 0.5);
  border-radius: 10px;
  text-align: right;
}
.dongtai .dongtai-li div:nth-child(2) .image {
  /* max-width: 345px; */

  /* width: 345px; */
  margin-top: 5px;

  /* text-align: center; */
  margin: 0 auto;
  margin-top: 5px;
}
.dongtai .dongtai-li div:nth-child(2) .image img {
  /* max-width: 345px; */
  width: 88px;
  height: 88px;
  box-sizing: border-box;
  border-radius: 5px;
  padding: 2px;
  /* max-width: 100%; */

  object-fit: cover;
}
.dongtai .mian div.dongtai-li:last-child {
  margin-bottom: 48px;
}
</style>
<script>
// window.onload = function () {
//   this.imgFu = document.querySelectorAll(".image");
//   //遍历父元素
//   for (var value of this.imgFu) {
//     //遍历当前父元素下的所有直接子元素 得到一个子元素对象
//     this.img = value.getElementsByTagName("img");
//     //如果当前父元素下的子元素大于==2
//     if (this.img.length == 2) {
//       for (let img of this.img) {
//         img.style = "width:50%;height:50%;";
//       }
//     } else if (this.img.length > 2) {
//       for (let img of this.img) {
//         img.style = "width:33.33%;height:50%;";
//       }
//     } else {
//     }
//   }
// };
export default {
  data() {
    return {
      active: "3",
      imgFu: null, //保存图片的父元素盒子
      img: null, //保存图片子元素对象
      //
      style: null,
      tabbar: [{ name: "" }, { name: "" }, { name: "" }, { name: "" }],
      iSdongtai: [],
    };
  },
  methods: {
    sou() {
      // console.log("123");
    },
  },
  watch: {
    iSdongtai() {},
    active(active) {
      if (active == "1") {
        localStorage.setItem("fanhuiISurl", location.pathname);
        this.$router.push("/index");
      } else if (active == "2") {
        localStorage.setItem("fanhuiISurl", location.pathname);
        this.$router.push("/chanp");
      } else if (active == "3") {
        localStorage.setItem("fanhuiISurl", location.pathname);
        this.$router.push("/dongtai");
      } else if (active == "4") {
        localStorage.setItem("fanhuiISurl", location.pathname);
        this.$router.push("/personal");
      }
    },
  },
  mounted() {
    // 请求动态
    this.axios.get("/trendz").then((res) => {
      let arr = [];
      let data = res.data;
      for (let val of data) {
        let img = val.imgs;
        img = img.split(",");
        val.imgs = img;
        // console.log(val);
      }
      this.iSdongtai = data;
    });

    //
    this.style = localStorage.getItem("style")
      ? localStorage.getItem("style")
      : "0";
    let obj = [
      {
        name: "首页",
        p1: "shouye-1.svg",
        p2: "shouye-2.svg",
      },
      {
        name: "产品",
        p1: "chanpin-1.svg",
        p2: "chanpin-2.svg",
      },
      {
        name: "动态",
        p1: "dongtai-1.svg",
        p2: "dongtai-2.svg",
      },
      {
        name: "我的",
        p1: "yonghu-1.svg",
        p2: "yonghu-2.svg",
      },
    ];
    for (let val of obj) {
      val.p1 = require("../assets/svg/svg_daohang/" + val.p1);
      val.p2 = require("../assets/svg/svg_daohang/" + val.p2);
    }
    this.tabbar = obj;
    setTimeout(() => {}, 500);
  },
};
</script>
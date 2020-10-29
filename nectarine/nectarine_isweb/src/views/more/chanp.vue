<template>
  <div class="chanp" v-my-pigment 
    infinite-scroll-distance="30"
      v-infinite-scroll="isShow"
      infinite-scroll-disabled="diab"
      infinite-scroll-immediate-check="true"
  >
    <my-header />
    <table></table>
    <mt-navbar v-model="active_" class="m_t">
      <mt-tab-item v-for="(v, i) of herobj" :key="i" :id="String(v.type_id)">{{
        v.type_name
      }}</mt-tab-item>
    </mt-navbar>
    <!-- 面板 -->
    <mt-tab-container
      v-model="active_">
      <mt-tab-container-item :id="active_">
        <div class="canp fen" v-cloak>
          <ul id="ul" class="list-style d-fled fled-w">
            <li v-for="(v, i) of chanpObj" :key="i">
              <router-link :to="`/goods/${v.cid}`">
                <div>
                  <img src="" v-lazy="v.img" alt="" />
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
          <!-- 当文章数据到底了  没有了  就出现提示 -->
          <div v-show="test" class="text-style">额--尴尬了--没有内容了</div>
        </div>
      </mt-tab-container-item>
    </mt-tab-container>
    <!-- 底部导航 -->
    <mt-tabbar v-model="active" fixed>
      <mt-tab-item  id="1"
        >{{tabbar[0].name}}
        <img :src="style==0 ? tabbar[0].p1:tabbar[0].p2" slot="icon" alt=""/>
      </mt-tab-item>
      <mt-tab-item  id="2"
        >{{tabbar[1].name}}
        <img :src="style==0 ? tabbar[1].p1:tabbar[1].p2" slot="icon" alt=""/>
      </mt-tab-item>
      <mt-tab-item  id="3"
        >{{tabbar[2].name}}
        <img :src="style==0 ? tabbar[2].p1:tabbar[2].p2" slot="icon" alt=""/>
      </mt-tab-item>
      <mt-tab-item  id="4"
        >{{tabbar[3].name}}
        <img :src="style==0 ? tabbar[3].p1:tabbar[3].p2" slot="icon" alt=""/>
      </mt-tab-item>
    </mt-tabbar>
  </div>
</template>
<script>
export default {
  //解决搜索返回的bug
  data() {
    return {
      active_: "1", //顶部导航
      active: "2", //底部导航
      herobj: null, // 顶部导航的数据存储
      chanpObj: [],
      diab: false, //控制受否继续滚动加载
      isYa: 1,//当前页面
      isDeta: 1,//数据库数据中页面
      test:false,
      // 
      style: null,
      tabbar:[
        {name:''},
        {name:''},
        {name:''},
        {name:''}
      ]
    };
  },
  watch: {
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
    //当切换顶部选项卡发生变化时
    active_() {
      //切换面板时清空数组
      this.chanpObj = [];
      //并且切换面板时把当前的页码改为1
      this.isYa=1
      this.http();
    },
  },
  methods: {
    http() {
      //加载提示框 不会自动消失，要手动清楚
      this.$indicator.open({
        text: "加载中...",
        spinnerType: "triple-bounce",
      });
      //当滚动一次后先关闭滚动加载功能
      this.diab = true;
      this.axios.get("/chanp/inset", {
        params: {
          // 文章类型的id
          category_id: this.active_,
          //分页查询的当前页码
          page: this.isYa,
        },
      }).then(res=>{
        let obj = res.data.reslut;
        this.isDeta=res.data.data[0].count;
        for (var val of obj) {
          val.img = require("../../assets/chanp/fuzhu/" + val.img);
          this.chanpObj.push(val);
        }
        //清楚加载提示框
        this.$indicator.close();
        // 当这次请求完成后 继续开启滚动事件
        this.diab = false;
      })
    },
    //滚动事件函数
    isShow() {
      //没滚动一次对页码进行++
      this.isYa++;
      //只有当前页面小于数据总页面时才发送请求
      if(this.isYa<=this.isDeta){
        this.http()
      }
      if(this.chanpObj.length==this.isDeta){
        this.test=true
      }
    },
  },
  mounted() {
    //底部导航
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
      val.p1 = require('../../assets/svg/svg_daohang/'+val.p1);
      val.p2 = require('../../assets/svg/svg_daohang/'+val.p2);
    }
    this.tabbar=obj
    //首次加载顶部导航
    this.axios("/chanp/header").then((res) => {
      this.herobj = res.data.reslut;
      // console.log(res.data.reslut)
    });
    //首次加载数据
    this.http();
    // 底部
  },
};
</script>
<style >
[v-cloak] {
  display: none;
}
</style>
<style >
.chanp .text-style{
  margin-bottom: 50px;
  text-align: center;
  /* background: #ddd; */
  padding: 10px;
  color:rgba(0, 0, 0, 0.5);
}
a {
  color: #000;
  text-decoration: none;
}
.chanp.fens .mint-tabbar > .mint-tab-item.is-selected {
  color: #ff6699;
}
.chanp.zong .mint-tabbar > .mint-tab-item.is-selected {
  color: #9b7159;
}
.chanp.fens .fen {
  background: #ffcccc;
}

.chanp.zong .fen {
  background: #c4a68e;
}

/* 选项卡文字颜色 */
.chanp.fens .mint-navbar .mint-tab-item.is-selected {
  color: #ff6699;
  border-bottom: 3px solid #ff6699;
}
.chanp.zong .mint-navbar .mint-tab-item.is-selected {
  color: #9b7159;
  border-bottom: 3px solid #9b7159;
}
.chanp .m_t {
  margin-top: 41px;
}
.chanp .canp {
  margin-top: 5px;
  padding: 5px;
}
.chanp .canp #ul {
  /* margin-bottom: 45px; */
  padding-left: 0;
}
.chanp .canp ul > li {
  /* width: 167px; */
  margin: 0 auto;
  width: 47.5%;
  text-align: center;
  /* padding: 5px 1rem; */
  margin-top: 5px;
  margin-bottom: 10px;
}
.chanp .canp ul > li div:first-child {
  background: rgba(255, 255, 255, 0.3);
  padding: 15px 0;
  border-radius: 10px;
}

.chanp .canp ul > li img {
  /* margin-top: 11%; */
  width: 134px;
  height: 134px;
}
.chanp .canp ul > li div:last-child {
  margin-top: 15px;
}
.chanp .canp ul > li div:last-child p {
  margin: 5px 10px;
  text-align: center;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.chanp .canp ul > li div:last-child p + button {
  outline: none;
  border: none;
  padding: 6px 12px;
  font-size: 12px;
  border-radius: 5px;
  color: #fff;
}
.chanp.fens .canp ul > li div:last-child p + button {
  background: #ffccdd;
}
.chanp.zong .canp ul > li div:last-child p + button {
  background: #9b7159;
}
.chanp .canp ul > li div:last-child p:nth-child(2) {
  width: 90%;
  font-size: 12px;
  color: rgba(0, 0, 0, 0.5);
  padding-right: 5px;
  text-align: center;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.chanp.fens .canp ul > li div:last-child p:nth-child(3) {
  color: #ff6699;
}
.chanp.zong .canp ul > li div:last-child p:nth-child(3) {
  color: #9b7159;
}
</style>
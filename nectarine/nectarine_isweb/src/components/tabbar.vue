<template>
  <div class="tabbar" v-my-pigment>
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
<style >
.tabbar.fens .mint-tabbar>.mint-tab-item.is-selected{
  color: #ff6699;
}
.tabbar.zong .mint-tabbar>.mint-tab-item.is-selected{
  color: #9b7159;
}
</style>
<script>
export default {
  data() {
    return {
      active: "1",
      style: null,
      tabbar:[
        {name:''},
        {name:''},
        {name:''},
        {name:''}
      ]
    };
  },
  mounted() {
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
      val.p1 = require('../assets/svg/svg_daohang/'+val.p1);
      val.p2 = require('../assets/svg/svg_daohang/'+val.p2);
    }
    this.tabbar=obj
  },
  watch: {
    active(active) {
      if (active == "1") {
        this.$router.push("/index");
      } else if (active == "2") {
        this.$router.push("/chanp");
      } else if (active == "3") {
        this.$router.push("/dongtai");
      } else if (active == "4") {
        this.$router.push("/personal");
      }
    },
  },
};
</script>
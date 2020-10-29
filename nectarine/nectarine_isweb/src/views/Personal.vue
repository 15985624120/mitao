<template>
  <div class="" v-my-pigment>
    <div >
      <!-- 顶部导航开始 -->
      <mt-header title="个人中心" class="bg"> </mt-header>
      <!-- 顶部导航结束 -->
      <!-- 头像部分 -->
      <div class="personal_zhuti">
        <div class="personal_tx">
          <img v-image-preview src="../assets/personal/touxiang-1.svg" alt="" /><br />
          <span class="uname">欢迎: {{usename==null?'佩奇':usename}}</span>
          <!-- 头像下导航栏 -->
          <div class="personal_dh">
            <div>
              <p>收藏</p>
            </div>
            <div>
              <p>关注</p>
            </div>
            <div>
              <p>粉丝</p>
            </div>
            <div>
              <p>喜欢</p>
            </div>
          </div>
        </div>
        <!-- 头像部分结束 -->
        <!-- 单元格开始 -->
        <mt-cell title="我的动态" isLink value="动态" to="">
          <img
            slot="icon"
            src="../assets/svg/svg_personal/dongtai-1.svg"
            width="24"
            height="24"
          />
        </mt-cell>
        <mt-cell title="我的订单" isLink value="订单" to="/qrd">
          <img
            slot="icon"
            src="../assets/svg/svg_personal/dongtai-1.svg"
            width="24"
            height="24"
          />
        </mt-cell>
        <mt-cell title="我的购物" isLink value="购物车" to="">
          <img
            slot="icon"
            src="../assets/svg/svg_personal/gouwu-1.svg"
            width="24"
            height="24"
          />
        </mt-cell>
        <mt-cell title="我的钱包" isLink value="钱包" to="/wallet">
          <img
            slot="icon"
            src="../assets/svg/svg_personal/qianbao-1.svg"
            width="24"
            height="24"
          />
        </mt-cell>
        <mt-cell title="我的设置" isLink value="修改" to="/modify">
          <img
            slot="icon"
            src="../assets/svg/svg_personal/shezhi-1.svg"
            width="24"
            height="24"
          />
        </mt-cell>
        <mt-cell title="联系客服" isLink value="帮助" to="">
          <img
            slot="icon"
            src="../assets/svg/svg_personal/kefu-1.svg"
            width="24"
            height="24"
          />
        </mt-cell>
      </div>
    </div>
    <!-- 底部导航 -->
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

<style scoped>
.fens .mint-tabbar>.mint-tab-item.is-selected{
  color: #ff6699;
}
.zong .mint-tabbar>.mint-tab-item.is-selected{
  color: #9b7159;
}
/* 底部导航 */
.fens .mint-tabbar > .mint-tab-item.is-selected {
  color: #ff6699;
}
.zong .mint-tabbar > .mint-tab-item.is-selected {
  color: #9b7159;
}
/* color */
.fens .bg {
  background: #ff6699;
}
.zong .bg {
  background: #9b7159;
}
.fens .bg_1 {
  background: #ffccdd;
}
.zong .bg_1 {
  background: #c4a86e;
}
/* 主体颜色 */
.personal_zhuti {
  widows: 100%;
  height: 100%;
  background: #fff;
}
/* 头像部分 */
.personal_tx {
  width: 100%;
  height: 190px;
  text-align: center;
  padding: 10px 0;
  background: url(../assets/personal/beijin.jpg);
  background-size: 100%;
}
/* 用户名 */
span.uname{
  display: inline-block;
  padding: 5px 10px;
  color: #fff;
  border-radius: 8px;
  background: rgba(255, 255, 255, 0.7);
}
.personal_tx > img {
  width: 110px;
  margin-top: -5px;
}
.personal_tx > span {
  color: #000;
}
/* 头像下导航栏 */
.personal_dh {
  width: 100%;
  height: 70px;
  margin: auto;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
}
.personal_dh > div {
  width: 24%;
  height: 60px;
  background: rgba(255, 255, 255, 0.2);
  margin: auto;
  border-radius: 10px;
}
.personal_dh > div > p {
  width: 100%;
  font-size: 16px;
  color: #fff;
  text-align: center;
  line-height: 60px;
}
/* 单元格 */
</style>
<script>
export default {
  data() {
    return {
      active:'4',
     style: null,
      tabbar:[
        {name:''},
        {name:''},
        {name:''},
        {name:''}
      ],
      usename:null
    };
  },
  mounted(){
    this.usename=localStorage.getItem('uname')
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
    active(active){
            if(active=='1'){
                localStorage.setItem('fanhuiISurl',location.pathname )
                this.$router.push('/index')
            }else if(active=='2'){
              localStorage.setItem('fanhuiISurl',location.pathname )
                this.$router.push('/chanp')
            }else if(active=='3'){
              localStorage.setItem('fanhuiISurl',location.pathname )
                this.$router.push('/dongtai')
            }else if(active=='4'){
              localStorage.setItem('fanhuiISurl',location.pathname )
                this.$router.push('/personal')
            }
        }
  },
};
</script>
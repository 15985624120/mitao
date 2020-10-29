<template>
  <div class="chanpxiaoq fens">
    <my-header />
    <!-- 用户订单列表类型选择卡开始 -->
    <mt-navbar v-model="active">
      <mt-tab-item id="1"> 预约订单 </mt-tab-item>
      <mt-tab-item id="2"> 商品订单 </mt-tab-item>
    </mt-navbar>
    <!-- 用户订单列表类型选择卡结束 -->
    <!-- 用户订单列表类型选择面板开始 -->
    <mt-tab-container v-model="active" class="mianban">
      <!-- 用户订单列表摄影师预约订单开始 -->
      <mt-tab-container-item id="1" class="bg_1">
        <div class="yydd" v-for="(v, i) of iSarr" :key="i">
          <div class="yyll">
            <div class="yytx">
              <img :src="v.portduce" alt="" />
              <span class="name">{{ v.nickname }}</span>
            </div>
            <div class="shijianbox">
              <span class="shijian">
                预约时间：{{ v.convention_time.slice(0, 10) }}</span
              >
            </div>
          </div>
          <div class="yyrr">
            <p>拍摄风格：{{ v.direction }}</p>
            <p>摄影师门店：{{ v.suoshu }}</p>
            <p>预约价格：{{ v.convention_price }}</p>
            <p>付款状态：{{ v.booking_status }}</p>
          </div>
          <div class="yybutton">
            <mt-button size="small" class="bg btn">修改订单</mt-button>
            <mt-button size="small" class="bg btn">取消订单</mt-button>
            <mt-button size="small" class="bg btn">立即付款</mt-button>
          </div>
        </div>
      </mt-tab-container-item>
      <!-- 用户订单摄影师预约订单结束 -->
      <!-- 用户订单商品订单开始 -->
      <mt-tab-container-item id="2" class="bg_1">
        <div class="yydd">
          <!-- <div class="yyll">
            <div class="yytx">
    
              <span class="name">小花花</span>
            </div>
            <div class="shijianbox">
              <span class="shijian"> 预约时间：9:00-18:00</span>
            </div>
          </div>
          <div class="yyrr">
            <p>拍摄风格：人体艺术摄影，人像摄影等</p>
            <p>摄影师姓名：老人</p>
            <p>预约价格：10k-9k</p>
          </div>
          <div class="yybutton">
            <mt-button size="small" class="bg">修改订单</mt-button>
            <mt-button size="small" class="bg">取消订单</mt-button>
          </div> -->
        </div>
      </mt-tab-container-item>
      <!-- 用户订单商品订单结束 -->
    </mt-tab-container>
    <!-- 用户订单列表类型选择面板结束 -->
  </div>
</template>
<style scoped>
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
.yybutton {
  text-align: right;
}
.yybutton .btn {
  width: 88px;
}
/* 选项卡文字颜色 */
.chanpxiaoq.fens .mint-navbar .mint-tab-item.is-selected {
  color: #ff6699;
  border-bottom: 3px solid #ff6699;
}
.chanpxiaoq.zong .mint-navbar .mint-tab-item.is-selected {
  color: #9b7159;
  border-bottom: 3px solid #9b7159;
}
.chanpxiaoq {
  color: #000;
}
.mint-navbar {
  padding-top: 40px;
}
.mianban {
  margin-top: 5px;
}
.yydd {
  /* width: 100vw; */
  padding: 10px;
}
.yyll {
  display: flex;
  align-content: center;
  justify-content: space-between;
  color: #fff;
}
.name {
  margin-left: 14px;
}
.shijianbox {
  line-height: 38px;
}
.font {
  font-size: 16px;
}
.yyrr {
  margin-top: 10px;
  padding: 15px;
  background: rgba(255, 255, 255, 0.5);
  border-radius: 10px;
}
.yyrr p {
  margin-bottom: 8px;
}
.yyrr p:last-child {
  margin-bottom: 0;
}

.yytx img {
  width: 38px;
  height: 38px;
  background-size: 100%;
  border-radius: 50%;
}
.yybutton {
  width: 100%;
  margin-top: 10px;
}
.yybutton button {
  width: 48%;
  color: #fff;
  margin: 1%;
}
</style>
<script>
export default {
  data() {
    return {
      active: "1",
      iSarr: [],
    };
  },
  mounted() {
    let suers = localStorage.getItem("uname");
    let aid = localStorage.getItem("usename_id");
    if (suers != null) {
      this.axios.post("/users/dingdan", "uname=" + aid).then((res) => {
        let datas = res.data;
        if (res.data.sax == 1) {
          let data = datas.result;
          console.log(data);
          for (let n of data) {
            n.portduce = require("../../assets/camerama/" + n.portduce);
          }
          this.iSarr = data;
        } else {
          this.$toast({
            message: "订单获取失败",
            position: "top",
            duration: "2000",
          });
        }
      });
    } else {
      this.$messagebox
        .confirm("", {
          message: "是否现在登录",
          title: "请登录",
          showConfirmButton: true,
          showCancelButton: true,
          cancelButtonClass: "cancelButton",
          confirmButtonClass: "confirmButton",
          confirmButtonText: "确定",
          cancelButtonText: "暂不",
        })
        .then((action) => {
          if (action == "confirm") {
            this.$router.push("/login");
          }
        });
    }
  },
};
</script>
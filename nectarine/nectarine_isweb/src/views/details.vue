<template>
  <div>
    <div class="bg_1" v-my-pigment>
      <!-- 顶部导航开始 -->
      <mt-header title="我的资料" class="bg">
        <router-link to="/modify" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
      </mt-header>
      <!-- 顶部导航结束 -->
      <!-- 个人资料开始 -->
      <div class="details_tx" @click="paizhaoaction">
        <div class="details_wz">
          <span>头像</span>
         
        </div>
        <div class="details_tp">
          <img src="../assets/personal/touxiang-1.svg" alt="" />
        </div>
      </div>
      <!-- <div class="details_tx" @click="paizhaoaction" icon='isLink'>
        <div class="details_wz">
            <span>主页背景</span>
        </div>
        <div class="details_tp">
          <img src="../assets/personal/beijin.jpg" alt="" />
        </div>
      </div> -->
      <mt-cell title="主页背景">
        <div @click="paizhaoaction" class="details_bj">
          <img
            class="details_xgbj"
            src="../assets/personal/beijin.jpg"
            alt=""
          />
        </div>
      </mt-cell>
      <mt-cell title="昵称" value="" isLink to="/nickname"> 挽风 </mt-cell>
      <mt-cell title="账号" value="" isLink> 1448902209 </mt-cell>
      <mt-cell title="性别" value="">
        <div class="details_xb" @click="xingbieaction">男</div>
      </mt-cell>
      <mt-cell title="电话号码" value="" isLink> 15687537527 </mt-cell>
      <mt-cell title="邮箱" value="" isLink> 123456789@qq.com </mt-cell>
      <mt-cell title="主题" value="">
        <div class="details_xb" @click="fenggeaction">珊瑚粉</div>
      </mt-cell>
    </div>
    <!-- 更改头像 -->
    <mt-actionsheet
      :actions="paizhao"
      cancelText="取消"
      closeOnClickModal="true"
      v-model="paizhaovisible"
    ></mt-actionsheet>
    <mt-actionsheet
      :actions="xingbie"
      cancelText="取消"
      closeOnClickModal="true"
      v-model="xingbievisible"
    ></mt-actionsheet>
    <mt-actionsheet
      :actions="fengge"
      cancelText="取消"
      closeOnClickModal="true"
      v-model="fenggevisible"
    ></mt-actionsheet>
  </div>
</template>
<style scoped>
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
  background: #c4a68e;
}
/* 头像 */
.details_tx {
  width: 100%;
  height: 100px;
  margin: auto;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  line-height: 100px;
}
.details_wz {
  width: 70%;
}
.details_wz > span {
  margin-left: 10px;
}
.details_tp {
  width: 30%;
}
.details_tp > img {
  margin-right: 20px;
  float: right;
  width: 80px;
  padding: 10px 0;
}
/* 背景 */
.details_bj {
  padding: 0 15px 0 190px;
}
.details_xgbj {
  width: 15vw;
  margin: 5px;
}
/* 单元格样式 */
.details_xb {
  padding-right: 20px;
  padding-left: 150px;
  width: 100%;
  height: 100%;
}
</style>
<script>
export default {
  data() {
    return {
      imgInfo: null,
      paizhao: [
        {
          name: "拍照",
          method: this.paizhaopian, // 调用methods中的函数
        },
        {
          name: "从相册中选择",
          method: this.xiangce, // 调用methods中的函数
        },
      ],
      paizhaovisible: false,
      xingbie: [
        {
          name: "男",
          method: this.nan, // 调用methods中的函数
        },
        {
          name: "女",
          method: this.nv, // 调用methods中的函数
        },
      ],
      xingbievisible: false,
      fengge: [
        {
          name: "死亡芭比粉",
          method: this.fens, // 调用methods中的函数
        },
        {
          name: "巧克力棕",
          method: this.zong, // 调用methods中的函数
        },
      ],
      fenggevisible: false,
    };
  },
  methods: {
 
    
    //
    paizhaoaction: function () {
      this.paizhaovisible = true;
    },
    xingbieaction: function () {
      this.xingbievisible = true;
    },
    fenggeaction: function () {
      this.fenggevisible = true;
    },
    paizhaopian: function () {
      //拍照
    },
    xiangce: function () {
      this.$refs.filElem.dispatchEvent(new MouseEvent("click"));
      // 相册
      this.getFile();
    },
    nan: function () {},
    nv: function () {},
    fens: function () {
      var uname = localStorage.getItem("uname");
      this.axios.get(`/users/style?uname=${uname}&styif=0`).then((res) => {
        if (res.data.sax == 1) {
          localStorage.setItem("style", "0");
        }
        this.$toast({
          message: "修改成功",
          position: "middle",
          duration: "1000",
        });
        this.$router.push("/index");
      });
    },
    zong: function () {
      var uname = localStorage.getItem("uname");
      this.axios.get(`/users/style?uname=${uname}&styif=1`).then((res) => {
        if (res.data.sax == 1) {
          localStorage.setItem("style", "1");
        }
        this.$toast({
          message: "修改成功",
          position: "middle",
          duration: "1000",
        });
        this.$router.push("/index");
      });
    },
  },
};
</script>
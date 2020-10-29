<template>
  <div v-my-pigment>
    <div class="bg_1">
      <!-- 顶部导航开始 -->
      <mt-header title="摄影预约" class="bg" fixed>
        <!-- <a href="javascript:history.go(-1);" slot="left">
          <mt-button icon="back"></mt-button>
        </a> -->
        <router-link to="/index" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
      </mt-header>
      <!-- 顶部导航结束 -->
      <!-- 摄影师照片轮播 -->
      <div class="photographer_lbt">
        <mt-swipe :speed="1000" :continuous="true">
          <mt-swipe-item v-for="(v, i) of iSsy.imgt" :key="i"
            ><img
              v-image-preview
              :src="v.big_tu"
              class="photographer_img"
              alt=""
          /></mt-swipe-item>
        </mt-swipe>
      </div>
      <mt-cell title="姓名：" is-link>
        <span style="color: #000; opacity: 0.5">{{ iSsy.usname }}</span>
      </mt-cell>
      <mt-cell title="擅长风格：" is-link>
        <span style="color: #000; opacity: 0.5">{{ iSsy.direction }}</span>
      </mt-cell>
      <mt-cell title="所属门店：" is-link>
        <span style="color: #000; opacity: 0.5">{{ iSsy.suoshu }}</span>
      </mt-cell>
      <mt-cell title="预约价格：" is-link>
        <span style="color: #000; opacity: 0.5">{{ iSsy.pathe }}</span>
      </mt-cell>
      <mt-cell title="工作时间：" is-link>
        <span style="color: #000; opacity: 0.5">{{ iSsy.shijian }}</span>
      </mt-cell>
      <mt-cell title="作品展示" value="室内写真" is-link> </mt-cell>
      <div class="image">
        <img
          v-for="(v, i) of iSsy.imgs"
          :key="i"
          class="xunhuan"
          v-image-preview
          :src="v.two_tu"
          alt=""
        />
      </div>
      <!-- 底部选项卡 -->
      <mt-tabbar fixed class="bg text">
        <mt-tab-item id="关注" to="">
          <img slot="icon" src="../assets/photographer/3-product.svg" />
          <span class="text">关注</span>
        </mt-tab-item>
        <mt-tab-item id="立即预约" to="">
          <mt-button @click="yuey" type="primary" size="large" class="bg"
            >立即预约</mt-button
          >
        </mt-tab-item>
        <mt-tab-item id="动态" to="">
          <img slot="icon" src="../assets/photographer/3-product.svg" />
          <span class="text">更多</span>
        </mt-tab-item>
      </mt-tabbar>
    </div>
  </div>
</template>
<style scoped>
.fens .bg {
  background: #ff6699;
  color: #fff;
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
/* 摄影师信息展示 */
.photographer_img {
  width: 150px;
}
.photographer_lbt {
  margin: auto;
  width: 150px;
  height: 200px;
  margin-top: 40px;
}
.photographer_section {
  list-style: none;
}
/* 作品展示 */
.image {
  /* box-sizing: border-box; */
  max-width: 345px;
  margin-top: 5px;
  max-width: 345px;
  margin: 0 auto;
  margin-bottom: 55px;
}
.image img {
  max-width: 345px;
  box-sizing: border-box;
  padding: 2px;
}
.photogrpher_box {
  border: 0;
}
.text {
  color: #fff;
}
</style>
<script>
export default {
  data() {
    return {
      imgFu: null, //保存图片的父元素盒子
      img: null, //保存图片子元素对象
      iSsy: "",
    };
  },
  methods: {
    yuey() {
      let fid = this.$route.params.fid;
      let suers = localStorage.getItem("uname");
      if (suers != null) {
        this.$router.push("/order/" + fid);
        //  let suers=localStorage.getItem('uname');
        //       this.axios.post('/users/yueyu','uname='+suers+'&'+'sheyid=1').then(res=>{
        //         if(res.data.sax==1){
        //           this.$toast({
        //               message: "订单提交成功",
        //               position: "top",
        //               duration: "1500",
        //           });
        //           setTimeout(()=>{this.$router.push('/positioning')},500)
        //         }else{
        //           this.$toast({
        //               message: "订单提交失败",
        //               position: "top",
        //               duration: "1500",
        //           });
        //         }
        //       })
      } else {
        this.$messagebox
          .confirm("", {
            message: "是否现在登录",
            title: "请登录后预约",
            showConfirmButton: true,
            showCancelButton: true,
            cancelButtonClass: "cancelButton",
            confirmButtonClass: "confirmButton",
            confirmButtonText: "确定",
            cancelButtonText: "暂不",
          })
          .then((action) => {
            if (action == "confirm") {
              // //点击确定的回调
              // // 删除用户名
              // localStorage.removeItem('uname')
              // // 删除登录状态
              // localStorage.removeItem('uname-show')
              // this.$toast({
              //     message: "已退出登录",
              //     position: "top",
              //     duration: "1500",
              // });
              this.$router.push("/login");
            }
          })
          .catch((err) => {
            if (err == "cancel") {
              //点击暂不的回调
              //获取用户名
            }
          });
      }
    },
  },
  mounted() {
    //获取摄影师id
    let fid = this.$route.params.fid;
    this.axios.get("/zongh/sysxq?fid=" + fid).then((res) => {
      let data = res.data[0];
      data.portduce = require("../assets/camerama/" + data.portduce);
      for (let val of data.imgs) {
        val.two_tu = require("../assets/camerama/" + val.two_tu);
      }
      for (let val of data.imgt) {
        val.big_tu = require("../assets/camerama/" + val.big_tu);
      }
      this.iSsy = data;
    });

    //控制图片的显示大小
    //获取图片的父元素
    this.imgFu = document.querySelectorAll(".image");
    // console.log(this.imgFu)
    //遍历父元素
    for (var value of this.imgFu) {
      //遍历当前父元素下的所有直接子元素 得到一个子元素对象
      this.img = value.getElementsByTagName("img");
      //如果当前父元素下的子元素大于==2
      if (this.img.length == 2) {
        for (let img of this.img) {
          img.style = "width:50%;";
        }
      } else if (this.img.length > 2) {
        for (let img of this.img) {
          img.style = "width:33.33%;";
        }
      } else {
      }
    }
  },
  updated() {
    //控制图片的显示大小
    //获取图片的父元素
    this.imgFu = document.querySelectorAll(".image");
    // console.log(this.imgFu)
    //遍历父元素
    for (var value of this.imgFu) {
      //遍历当前父元素下的所有直接子元素 得到一个子元素对象
      this.img = value.getElementsByTagName("img");
      //如果当前父元素下的子元素大于==2
      if (this.img.length == 2) {
        for (let img of this.img) {
          img.style = "width:50%;";
        }
      } else if (this.img.length > 2) {
        for (let img of this.img) {
          img.style = "width:33.33%;";
        }
      } else {
      }
    }
  },
};
</script>
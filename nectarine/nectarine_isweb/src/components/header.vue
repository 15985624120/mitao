<template>
  <div class="input-sou " v-my-pigment>
    <div class="header bg d-fled">
      <div>
        <p class="dinwei" v-if="dinwei">{{ text }}</p>
        <a v-if="loca" href="javascript:history.go(-1);">
          <mt-button type="primary" plain size="normal" icon="back">
          </mt-button>
        </a>
      </div>

      <div class="input">
        <input type="text" placeholder="搜索" @click="search" />
        <a href="javascript:;"> × </a>
        <router-link to="">
          <img src="../assets/header/search.png" alt="" />
        </router-link>
      </div>
    </div>
  </div>
</template>
<style >
.input-sou {
  z-index: 999;
  position: fixed;
  top: 0;
  width: 100%;
}
.input-sou .dinwei {
  /* margin-left: 25px; */
  padding-left: 15px;
  color: #fff;
  font-weight: 800;
}
.input-sou .mint-button--primary.is-plain {
  border: none;
  color: #fff;
  /* width: 50px; */
}
.input-sou.fens .mint-header {
  position: relative;
  background: #ff6699;
}
/* 棕色 */
.input-sou.zong .mint-header {
  background: #9b7159;
}
.input-sou.fens .bg {
  background: #ff6699;
}
.input-sou.zong .bg {
  background: #9b7159;
}
.input-sou.fens .color {
  color: #ff6699;
}
.input-sou.zong .color {
  color: #9b7159;
}
.input-sou .header {
  height: 40px;
  align-items: center;
  justify-content: space-between;
}
.input-sou .header .input {
  position: relative;
  /* margin-right: 2%; */
}
.input-sou .svg {
  width: 24px;
  height: 24px;
}
.input-sou .header .input a:nth-child(2) {
  display: none;
  position: absolute;
  top: 7px;
  right: 54px;
  width: 15px;
  height: 15px;
  color: #ddd;
  text-align: center;
  line-height: 15px;
  background: rgba(0, 0, 0, 0.2);
  border-radius: 50%;
}
.input-sou .header .input input {
  padding: 0 12px;
  width: 212px;
  height: 28px;
  font-size: 12px;
  border-radius: 15px;
  border: none;
  outline: none;
}
.input-sou .header .input img {
  margin: 0 12px;
}
</style>
 
<script>
import { mapState } from "vuex";
export default {
  data() {
    return {
      loca: true,
      dinwei: false,
      text: "定位中...",
    };
  },
  computed: {
    //获取vuex中的url地址  获取过来的是一个计算属性 可以直接使用
    ...mapState(["fanhui"]),
  },

  mounted() {
    var url = location.href;
    var arr = url.split("8080")[1];
    if (arr == "/chanp") {
      this.loca = false;
      this.dinwei = true;
      setTimeout(()=>{
        let weiz=localStorage.getItem('dinwei')
        if(weiz==null){
          this.text='定位失败'
        }else{
          this.text=weiz
        }
      },5000)
      
    }
    
  },
  methods: {
    search() {
      //返回首页
      this.$router.push("/search");
    },
  },

  comments: {
    // BaiduMap
  },
};
</script>
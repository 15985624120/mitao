
<template>
  <div class="search " v-my-pigment>
    <div class="header bg d-fled">
      <div>
       <a href="javascript:history.go(-1);">
         <mt-button type="primary" plain size="normal" icon="back"> </mt-button>
       </a>
      </div>
      <div class="input">
        <input   v-model="value" v-my-focus type="text" placeholder="搜索">
        <a @click="xiaox" href="javascript:;" :style="display">
          ×
        </a>
        <router-link to="">
          <img  src="../assets/header/search.png" alt="" />
        </router-link>
      </div> 
    </div>
    <!-- 联想搜索 -->
    <ul class="lianx" v-if="ul">
      <li v-for="(v,i) of obj" :key="i">
        <router-link to="">
          {{v.seyins}}
        </router-link>
      </li>
    </ul>
    <!-- 下面空白处的内容 -->
    <div class="mx">
      <h3>搜索发现</h3>
      <p class="advert">
        <img src="../assets/guaogang/EM8`{E7X9B[WW[VTAE5]0]Y.png" alt="">
      </p>
      <ul class="text_guaog">
        <li>
          <span>今日特价摄影</span>
          <span>特价摄影师</span>
          <span>特价产品</span>
        </li>
      </ul>
      <p class="advert">
        <img src="../assets/guaogang/EM8`{E7X9B[WW[VTAE5]0]Y.png" alt="">
      </p>
      <p class="advert">
        <img src="../assets/guaogang/EM8`{E7X9B[WW[VTAE5]0]Y.png" alt="">
      </p>
    </div>
  </div>
</template>
<script>
//引入vuex辅助函数 用户获取vuex中的变量
import { mapState } from "vuex";
export default {
  data(){
    return {
      value:'',
      itm:null,//保存定时器
      display:{
        display:'none'
      },
      obj:null,
      ul:false
    }
  },
  methods:{
    //为小xx绑定事件
    xiaox(){
      this.value=''
    }
  },
  watch:{
    //在watch中访问data中变量不用this
    value(){
      //当每触发一次函数都要清楚一次定时器，不然定时器会重叠
      clearTimeout(this.itm)
      //声明一个定时器 当用户输入后 1秒后才发送请求
      this.itm=setTimeout(()=>{
        //当用户输入 等待一秒 进行判断 如果去除了其中得到空格 不等于空时才发送请求
        if(this.value.trim()!==''){
          this.axios.get('/zongh/search?guanjz='+this.value).then(res=>{
            if(res.data.sax==1){
              this.ul=true
              this.obj=res.data.result
            }else{
              this.ul=false
            }

          })
        }
      },1000)
    }
  },
  //挂载 (dom树创建完成)
  mounted(){
    // 控制颜色

  },
  computed: {
    //获取vuex中的url地址  获取过来的是一个计算属性 可以直接使用
    ...mapState(["fanhui"])
  },
  //data变量更新后
  updated(){
    //控制input中的小xx
    if(this.value!=''){
      this.display.display='block'
    }
    if(this.value==''){
      this.display.display='none'
      this.ul=false
    }
  }


}
</script>
 
<style >
.search .mint-button--primary.is-plain{
  border: none;
  color: #fff;
  /* width: 50px; */
}
.search.fens .mint-header {
  position: relative;
  background: #ff6699;
}
/* 棕色 */

.search.zong .mint-header {
  background: #9b7159;
}
.search.fens .bg {
  background: #ff6699;
}
.search.zong .bg {
  background: #9b7159;
}
.search.fens .color {
  color: #ff6699;
}
.search.zong .color {
  color: #9b7159;
}
.search .svg{
  width: 24px;
  height: 24px;
}
.search .header{
  height: 40px;
  align-items: center;
  justify-content: space-between;
}
.search .header .input{
  position: relative;
  /* margin-right: 2%; */
}
.search .header .input a:nth-child(2){
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
.search .header .input input{
  padding: 0 12px;
  width: 212px;
  height: 28px;
  font-size: 12px;
  border-radius: 15px;
  border: none;
  outline: none;
}
.search .header .input img{
  margin: 0 12px;
}
/* 联想搜索 */
.search .lianx{
  position: absolute;
  max-height: 258px;
  background:rgba(255, 255, 255, 0.9);
  /* border:2px solid red; */
  width: 100%;
  z-index: 222;
  /* 上下溢出出现滚动条 */
  overflow-y: scroll;
}
.search .lianx li{
  margin: 0 15px;
  line-height: 30px;
  padding-left: 5px;
}
.search .lianx li a{width: 100%; display: inline-block;}
.search .lianx li:not(:last-child){
  border-bottom: 2px solid #ddd;
}
/* 搜索发现 */
.search h3{
  margin-top: 30px;
  font-size: 14px;
  font-weight: 800;
}
/* 广告图 */
.search .advert img {
  margin-top: 15px;
  margin-bottom: 15px;
  width: 100%;
  height: 85px;
  border-radius: 10px;
}
.search .text_guaog li:first-child span{
  margin: 0 10px;
  /* color: #ddd; */
}
</style>
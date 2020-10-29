<template>
  <div class="camerama" v-my-pigment>
    <mt-header title="摄影师" fixed>
      <a href="javascript:history.go(-1);"  slot="left">
        <mt-button  type="default" icon="back"></mt-button>
      </a>
        
        <router-link to="/index" slot="right">
             <img src="../../assets/header/search.png" alt="" />
        </router-link>
    </mt-header>
    <div class="camerist bg canp top">
      <div class="shey_bg " v-for="(v,i) of issheys" :key="i" >
        <router-link :to="`/photographer/${v.fid}`">
          <div class="d-fled justify ">
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
    </div>
  </div>
</template>
<script>
import { mapState } from "vuex";
export default {
    data(){
        return {
            category_id:1,//当前页码
            page:1,//数据总页码
            issheys:''
        }
    },
    computed:{
        //  ...mapState(["fanhui"]),
         
    },
    mounted(){
        this.axios.get('/zongh/camerama?category_id='+this.category_id).then(res=>{
          this.page=res.data.max;
          let data=res.data.result;
          // console.log(data)
           //处理头像
          for(let val of data){
            // console.log(val)
            // 处理头像
            val.portduce=require("../../assets/camerama/"+val.portduce)
            for(let md of val.imgs){
              md.two_tu=require('../../assets/camerama/'+md.two_tu)
            }
            // 处理大图
            for(let xd of val.imgt){
              xd.big_tu=require('../../assets/camerama/'+xd.big_tu)
            }
          };
          this.issheys=data
          // console.log(this.issheys)
        })
    },
    methods:{
        
    }
}
</script>
<style >
/* 导航 */
.camerama.fens .mint-header {
  background: #ff6699;
}
/* 棕色 */
.camerama.zong .mint-header {
  background: #9b7159;
}
/* 背景 */
.camerama.fens .bg {
  background: #ffcccc;
}
.camerama.zong .bg {
  background: #c4a68e;
}
/* 一楼摄影师 */
.camerama h3 {
  font-size: 16px;
  font-weight: 800;
  margin: 10px 15px;
}
.camerama .camerist {
  padding: 15px;
}
/* 一楼以下的粉色 */
.camerama.fens .fen {
  background: #ffcccc;
}
/* 一楼以下的棕色色 */
.camerama.zong .fen {
  background: #c4a68e;
}
.top{
  margin-top: 40px;
}
.camerama .camerist .shey_bg:not(:first-child) {
  margin-top: 10px;
}
.camerama .camerist .shey_bg .touxiao {
  width: 36px;
  height: 36px;
  border-radius: 50%;
}
.camerama .shey_bg .justify {
  justify-content: space-between;
}
.camerama .camerist .shey_bg .btn-fu {
  line-height: 36px;
}
.camerama .camerist .shey_bg .btn {
  /* margin-left: 44%; */
  font-size: 14px;

  outline: none;
  border: none;
  border-radius: 5px;
}
.camerama.fens .camerist .shey_bg .btn {
  background: #ffccdd;
}
.camerama.zong .camerist .shey_bg .btn {
  background: #9b7159;
}
.camerama .camerist .shey_bg .font_12 {
  font-size: 12px;
  color: rgba(0, 0, 0, 0.5);
  padding: 8px 0;
}
.camerama .camerist .shey_bg ul.list-style > li {
  width: 33.3%;
  height: 150px;
}
.camerama .camerist .shey_bg ul.list-style li:not(:first-child) {
  margin-left: 5px;
}
.camerama .camerist .shey_bg ul.list-style > li:not(:last-child) img {
  width: 100%;
  height: 100%;
}
.camerama .camerist .shey_bg ul.list-style li:last-child div:last-child {
  /* margin-top: 5px; */
  box-sizing: border-box;
  padding-top: 5px;
}
.camerama .camerist .shey_bg ul.list-style li:last-child div {
  width: 100%;
  height: 50%;
}
.camerama .camerist .shey_bg ul.list-style li:last-child img {
  width: 100%;
  height: 100%;
}

.camerama .mx .mint-button {
  margin-top: 5px;
}
/* 按钮粉色系 */
.camerama.fens .mx .fen.mint-button {
  background: #ffccdd;
}
</style>
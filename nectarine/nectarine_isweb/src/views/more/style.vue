<template>
  <div class="style" v-my-pigment>
    <div>
      <!-- 顶部导航栏 -->
      <mt-header title="摄影风格" fixed>

        <a href="javascript:history.go(-1);"  slot="left">
         <mt-button icon="back"></mt-button>
        </a>
        <mt-button slot="right"></mt-button>
      </mt-header>
      <!-- 顶部选择卡 -->
      <mt-navbar v-model="active" class="top">
        <mt-tab-item id="1">人文摄影</mt-tab-item>
        <mt-tab-item id="2">美食摄影</mt-tab-item>
        <mt-tab-item id="3">风光摄影</mt-tab-item>
        <mt-tab-item id="4">特殊摄影</mt-tab-item>
      </mt-navbar>
      <!-- 面板开始 -->
      <div>
        <mt-tab-container v-model="active">
          <mt-tab-container-item id="1">
            <div class="bg">
              <div class="sheyin" v-for="(v, i) of 2" :key="i">
                <p class="biaot">婚纱摄影</p>
                <div>
                  <p>
                    如果主轴空间不足时,项目也设置了不换行 每个项目如何压缩
                    Flex-shrink : 无单位数字; 默认值为1 0为不压缩
                    主轴空间不足:按照分配的份数进行压缩
                    项目压缩后的宽度=项目原始宽度-不足空间*比例
                  </p>
                  <h3>风采展示</h3>
                  <div class="image">
                    <img
                      v-for="(v, i) of 9"
                      :key="i"
                      class="xunhuan"
                      src="../../assets/baobei.jpg"
                      alt=""
                    />
                  </div>
                </div>
              </div>
            </div>
          </mt-tab-container-item>
        </mt-tab-container>
      </div>
    </div>
  </div>
</template>
<style >
/* 页面风格颜色 */
/* 导航粉色 */
.style.fens .mint-header {
  background: #ff6699;
}
/* 棕色 */
.style.zong .mint-header {
  background: #9b7159;
}
/* 顶部选项卡颜色 */
/* 选项卡文字颜色 */
.style.fens .mint-navbar .mint-tab-item.is-selected {
  color: #ff6699;
  border-bottom: 3px solid #ff6699;
}
.style.zong .mint-navbar .mint-tab-item.is-selected {
  color: #9b7159;
  border-bottom: 3px solid #9b7159;
}
/* 背景 */
.style.fens .bg {
  background: #ffcccc;
}
.style.zong .bg {
  background: #c4a68e;
}

.style .bg {
  margin-top: 5px;
  padding: 15px;
}
.style .sheyin p.biaot {
  margin: 15px 0;
  text-align: center;
  font-weight: 800;
  font-size: 15px;
  border-radius: 10px;
  padding: 20px;
  color: #fff;

 
  /* background: rgba(255, 255, 255, 0.5); */
}
.top{
  margin-top:40px;
}
/* 渐变 */
.style.fens .sheyin p.biaot{
  background-image:linear-gradient(to bottom,#ff6699 0%,#ffcccc 50%,#ff6699 100% );
}
.style.zong .sheyin p.biaot{
     background-image:linear-gradient(to bottom,#9b7159 0%,#c4a68e 50%,#9b7159 100% );
}
.style .sheyin div:nth-child(2) p {
  margin-bottom: 15px;
  box-sizing: border-box;
  padding: 10px;
  border-radius: 12px;
  box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.8) inset,
    0px 0px 15px rgba(255, 255, 255, 0.8);
}
.style .sheyin div:nth-child(2) h3{
    font-weight: 800;
    padding: 5px 0;
}
.style .sheyin div:nth-child(2) .image {
  /* max-width: 345px; */
  margin-top: 5px;
  max-width: 665px;
  margin: auto;
}
.style .sheyin div:nth-child(2) .image img {
  max-width: 345px;
  box-sizing: border-box;
  padding: 2px;
}
</style>
<script>
//导入vuex的辅助函数
import {mapState} from 'vuex'
import {mapGetters} from 'vuex'
import {mapMutations} from 'vuex'
import {mapActions} from 'vuex'
export default {
  data() {
    return {
      active: "1",
      imgFu: null, //保存图片的父元素盒子
      img: null, //保存图片子元素对象
    };
  },
  computed:{
      //获取vuex中的url地址  获取过来的是一个计算属性 可以直接使用
    ...mapState(["fanhui"])
  },
  mounted() {
    //控制图片的显示大小
    //获取图片的父元素
    this.imgFu = document.querySelectorAll(".image");
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
      }
    }
  },
};
</script>
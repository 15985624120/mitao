<template>
  <div class="kep" v-my-pigment>
    <my-header />
    <div class="kepu  fen ">
      <div class="artilce" v-for="(v, i) of 4" :key="i">
        <router-link to="/popular">
          <!-- 标题开始 -->
          <div class="artilce-title">今天吃什么</div>
          <!-- 标题结束 -->
          <!-- 图片和简介开始 -->
          <div class="artilce-wrapper">
            <!-- 当图片没有时，就不显示这个元素 -->
            <div class="wrapper-img">
              <!-- 图片懒加载指令 -->
              <img src="../../assets/banler/timg (1).jpg" alt="" />
            </div>
            <div class="wrapper-text">
              是否在 touchstart 事件触发时阻止事件的默认行为。设为 true
              可提高运行在低版本安卓浏览器时的性能,运行在低版本安卓浏览器,运行在低版本安卓浏览器
            </div>
          </div>
        </router-link>
        <!-- 图片和简介结束 -->
      </div>
    </div>
  </div>
</template>
<style >

.kep.fens .fen{
  background: #ffcccc;
  /* box-shadow: 0px 0px 10px #ffcccc; */
}
/* 一楼以下的棕色色 */
.kep.zong .fen{
  background: #c4a68e;
}
.kep .svg{
  width: 24px;
  height: 24px;
}
.kep div:first-child{
  margin-top: 0;
}
.kep .artilce {
  margin: 10px;
  padding: 5px;
  padding-bottom: 10px;
  border-bottom: 1px solid #999;
}
.kep .artilce:last-child {
  border: none;
  margin-bottom: 0;
}
/* 文章标题 */
.kep .artilce .artilce-title {
  font-size: 16px;
  font-weight: bolder;
  color: #1a1a1a;
  line-height: 22px;
}
/* 文章容器 */
.kep .artilce .artilce-wrapper {
  display: flex;
  align-items: center; /*项目在交叉轴上的对齐方式 */
  margin-top: 5px;
}
/* 图片 */
.kep .artilce .artilce-wrapper .wrapper-img img {
  width: 80px;
  height: 80px;
  border-radius: 5px;
  margin-right: 15px;
}
/* 文章内容 */
.kep .artilce .artilce-wrapper .wrapper-text {
  font-size: 15px;
  font-weight: 400;
  line-height: 21px;
  color: #444;
  height: 64px;
  overflow: hidden;
}
</style>
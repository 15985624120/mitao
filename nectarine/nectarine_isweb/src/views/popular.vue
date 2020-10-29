<template>
    <div>
        <div class="fens">
            <div class="bg_1 suoding">
                <!-- 顶部导航开始 -->
            <mt-header title="科普详情" class="bg" fixed>
                <a id="a" href="javascript:history.go(-1);" slot="left">
                     <mt-button icon="back"></mt-button>
                </a>
            </mt-header>
            
            <!-- 顶部导航结束 -->
            <div class="popular_hz" >
                <div class="popular_title">
                    <span>打手机稍稍打手机稍稍打手机稍稍打手机稍稍打手机稍稍打手机</span>
                </div>
                <router-link to="" class="popular_a" >蜜桃官方</router-link>
                <router-link to="" class="popular_a" >转发于</router-link>
                <router-link to="" class="popular_a" >2020.10.12</router-link>
                <div v-for="(i,key) of 5" :key="key">
                    <div class="popular_img">
                        <img v-image-preview src="../assets/popular/fengjing.jpg" alt="">
                    </div>
                    <div class="popular_text">
                        <span style="opacity: 0;">占位</span><span>啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</span>
                    </div>
                </div>
            </div>
           
             <!-- 底部选项卡 -->
            <mt-tabbar class="bg " fixed>
                <mt-tab-item id="点赞"  class="div_like">
                    <div class="like">
                        <my-like class="like_1"></my-like>
                    </div>
                </mt-tab-item>
                 <mt-tab-item id="评论" to="">
                    <input class="popular_input" type="text" placeholder="点击评论">
                </mt-tab-item>
                <mt-tab-item id="评论" to="">
                    <mt-button class="bg mt-btn">发送</mt-button>
                </mt-tab-item>
            </mt-tabbar>
            </div>
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
/* 盒子模型 */
.popular_hz{
    margin: 5px;
    margin-top: 40px;
}
/* 标题 */
.popular_title{
    color: #000;
    font-size: 24px;
    line-height: 30px;
    font-weight: 800;
    margin-bottom:10px;
}
/* 发布人 */
.popular_a{
    color: #000;
    opacity: 0.5;
    font-size: 14px;
    text-decoration: none;
    margin: 0 7px;
}
#a{
    z-index: 999;
}
/* 图片 */
.popular_img{
    margin: 5px;
    
}
.popular_img>img{
    width: 100%;
    border-radius: 10px;
}
/* 文案 */
.popular_text{
    margin: 5px;
}
/* 底部 */
.mint-tabbar{
    position: relative;
}
.popular_input{
    width: 60vw;
    height: 25px;
    border: 0;
    margin: auto 5px;
    padding: auto 5px;
}
.mt-btn{
    height: 30px;
    border: none;
    outline: none;
}
.suoding{
    margin-bottom: 40px;
}
.div_like{
    width: 25vw;
    z-index:1;
}
@media (min-width: 0px) and (max-width: 575px){
    .like{ 
    position: relative;
    top: -397px;
    left: -65px;
}
}
@media (min-width: 575px) and (max-width: 800px){
    .like{ 
    position: relative;
    top: -397px;
    left: -28px;
}
}

</style>
<script>
export default {
    
}
</script>
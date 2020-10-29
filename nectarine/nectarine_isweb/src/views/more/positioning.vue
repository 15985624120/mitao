<template>
    <div>
        <div class="fens">
              <!-- 顶部导航开始 -->
            <mt-header title="门店定位" class="bg" fixed>
                <router-link to="/index" slot="left">
                    <mt-button icon="back"></mt-button>
                </router-link>
                <router-link to="" slot="right">
                    <mt-button >
                        重庆
                        <img src="../../assets/positioning/dingwei.svg" icon="slot">
                    </mt-button>
                </router-link>
            </mt-header>
            <!-- 顶部导航结束 -->
            <!-- 地图 -->
            <div class="positioning_map" id="container">
                
            </div>
            <!-- 底部导航 -->
            <div class="positioning_dbdh bg_1">
                <div class="positioning_div">
                    <div><span class="positioning_h" id="address"></span></div>
                    <div class="positioning_span"><span id="location"></span></div>
                    <div class="positioning_span"><span>距离地铁6号线康庄站1号口步行260m</span></div>
                    <!-- 底部导航 -->
                    <mt-tabbar  fixed >
                        <mt-tab-item>
                            <img src="../../assets/positioning/dingwei.svg" icon="slot"><br>
                            搜周边
                        
                      </mt-tab-item>
                      <mt-tab-item>
                            <img src="../../assets/positioning/dingwei.svg" alt=""><br>
                            收藏
                      </mt-tab-item>
                      <mt-tab-item>
                        <mt-button type="primary" size="large" class="button bg">立即预约</mt-button>
                      </mt-tab-item>
                      
                    </mt-tabbar>
                </div>
            </div>
            
        </div>
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
  background: #c4a86e;
}
/* 地图 */
.positioning_map{
    margin-top: 40px;
    height: 80vh;
    background: #abcacb;
}
/* 底部信息详情 */
.positioning_dbdh{
    width: 100vw;
    height: 170px;
    background: #e3e3e3;
    position: absolute;
    bottom: 0;
    border-radius: 30px 30px 0 0 ;
}
.positioning_div{
    margin: 20px 20px 0 20px;
    
}
.positioning_h{
    font-size: 24px;
    font-weight: 800;
}
.positioning_span{
    margin: 10px 0;
    font-size: 16px;
    font-weight: 300;
}
.mint-tabbar>.mint-tab-item.is-selected{
    background-color: #ffccdd;
    color: #000;
}
.button{
    width: 65vw;
}
</style>
<script>
export default {
    
}
</script>
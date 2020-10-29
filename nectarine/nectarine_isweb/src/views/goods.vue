<template>
    <div class="doogs" v-my-pigment>
        <div class="bg_1">
            <!-- 顶部导航栏 -->
            <mt-header title="商品"  class="bg" fixed>
                <a href="javascript:history.go(-1);"  slot="left">
                    <mt-button icon="back"></mt-button>
                 </a>
                <mt-button slot="right"></mt-button>
            </mt-header>
            <!-- 轮播图 -->
            <mt-swipe :auto="3000" class="lb top">
                <mt-swipe-item class="img" v-for="(i,key) of goods.big_tu" :key="key">
                    <img v-image-preview :src="goods.big_tu[key]" alt="">
                </mt-swipe-item> 
            </mt-swipe>
            <!-- 商品信息 -->
            <div class="sp">
                <p class="bt">{{goods.introduce}}</p>
                <p class="jg">
                   <span>￥{{goods.price.toFixed(2)}}</span> 
                   <strike class="chanc">￥998.00</strike>
                </p>
                <p class="ggkb">
                    <span class="fbs-1">快递：免费</span>
                    <span class="fbs-2">发货地：上海</span>
                </p>
            </div>
            <div class="xuanze">
                <!-- 规格颜色 -->
                <mt-cell title="颜色：">
                    <div class="ggkd" @click="guige">
                        黑色
                    </div>
                </mt-cell>
                <mt-actionsheet :actions="gui" cancelText="取消" closeOnClickModal="true" v-model="ge"></mt-actionsheet>
               <!-- 规格相机像素 -->
                <mt-cell title="规格:">
                    <div @click="yangshi" class="ggkd">
                        索尼a6400微单相机像素
                    </div>
                </mt-cell>
                <mt-actionsheet :actions="yang" cancelText="取消" closeOnClickModal="true" v-model="shi"></mt-actionsheet>
                <mt-cell title="服务" value="7天无理由·新品·72小时内发货"></mt-cell>
            </div>
            <!-- 商品选择 -->
            <div>
                <!-- 选项卡 -->
                <mt-navbar v-model="active">
                    <mt-tab-item id="1">商品详情</mt-tab-item>
                    <mt-tab-item id="2">商品属性</mt-tab-item>
                    <mt-tab-item id="3">商品推荐</mt-tab-item>
                </mt-navbar>
            <!-- 面板开始 -->
                <mt-tab-container v-model="active" class="xqmb">
                    <mt-tab-container-item id="1" class="img">
                        <img v-lazy='goods.xmall_tu' alt="">
                    </mt-tab-container-item>
                    <mt-tab-container-item id="2" class="img">
                        <img v-lazy='goods.two_tu' alt="">
                    </mt-tab-container-item>
                    <mt-tab-container-item id="3" class="img">
                        <img v-lazy='goods.small_tu' alt="">
                    </mt-tab-container-item>
                </mt-tab-container>
            </div>
            <!-- 底部导航栏 -->
            <mt-tabbar fixed class="bg ys_b">
                <mt-tab-item id="客服">
                    <img slot="icon" src="../assets/index/index_all.svg" alt="">
                    客服
                </mt-tab-item>
                <mt-tab-item id="收藏">
                    <img slot="icon" src="../assets/index/index_all.svg" alt="">
                    收藏
                </mt-tab-item>
                <mt-tab-item id="立即购买">
                    <mt-button class="bg button" type="primary">加入购物车</mt-button>
                </mt-tab-item>
                <mt-tab-item id="立即购买">
                    <mt-button class="bg button" type="primary">立即购买</mt-button>
                </mt-tab-item>
            </mt-tabbar>
        </div>
    </div>
</template>
<style scoped>
    a{
        text-decoration: none;
    }
    /* 页面风格颜色 */
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
    /* 选择卡颜色 */
    .fens .mint-navbar .mint-tab-item.is-selected{
        border-bottom-color: #ff6699;
        color: #ff6699;
    }
    /* 顶部导航栏 */
    .db{
        margin-top: 40px;
    }
    .top{
    margin-top:40px;
    }
    /* 面板 */
    .main{
        margin-bottom: 55px;
    }
    .ys_b{
        color: #fff;
    }
    /* 轮播模板 */
    .lb{
        width: 100%;
        height:375px;
    }
    .img{
        width: 100%;
        height: 100%;
    }
    .img img{
        width: 100%;
        height: 100%;
    }
    /* 商品信息规格 */
    .sp{
        margin: 0 10px;
    }
    .sp .bt{
        font-weight: 800;
        font-size: 16px;
        margin-top: 10px;
        overflow: hidden;
    }
    .sp .jg{
        margin-top: 0px;
        font-size: 24px;
        font-weight: 800;
        color: red;
        line-height: 40px;
    }
    .sp .jg .chanc{
        margin-left: 15px;
        color: #000;
        opacity: 0.5;
        font-size: 14px;
    }
    .ggkd{
        width: 100%;
        height: 100%;
    }
    .fbs{
        font-size: 12px;
        color:#fff;
        opacity: 0.5;
    }
    .fbs-1{
        opacity: 0.5;
    }
    .fbs-2{
        opacity: 0.5;
        float: right;
    }
    /* 商品规格选择 */
    .xuanze{
        margin-top: 10px;
    }
    .button{
        width: 33vw;
    }
    /* 商品详情面板 */
    .xqmb{
        width: 100%;
        margin-bottom: 54px;
    }
    .xqmb .img{
        width: 100%;
        height: 100%;
        text-align: center;
    }
</style>
<script>
export default {
    data(){
        return{
            active:'1',
            swipeable:'true',
            gui:[
               { 
                name:'黑色',
                method:this.hs
                },
                {
                name:'灰色',
                method:this.lhs
                }
            ],
            ge:false,
            yang:[
                {
                    name:'约1210万像素',
                    method:this.axs
                },
                {
                    name:'约3630万像素',
                    method:this.bxs
                },
                {
                    name:'约2420万像素',
                    method:this.cxs
                }
            ],
            shi:false,
            goods:{
                price:0
            },

        }
    },
    mounted(){
        //加载提示框 不会自动消失，要手动清楚
        this.$indicator.open({
        text: "加载中...",
        spinnerType: "triple-bounce",
        });
        let cid=this.$route.params.cid
        this.axios.get('/chanp/xq?cid='+cid).then(res=>{
            let arr=[]
            let obj=res.data.reslut[0]
            let banler=obj.big_tu.slice(1,-1)
            let setArr=banler.split(',')
            for(let val of setArr){
                let btn=val.split(':')[1].slice(1,-1)
                btn=require('../assets/chanp/fzxiaoq/'+btn)
                arr.push(btn)
            }
            obj.small_tu=require('../assets/chanp/fzxiaoq/'+obj.small_tu)
            obj.two_tu=require('../assets/chanp/fzxiaoq/'+obj.two_tu)
            obj.xmall_tu=require('../assets/chanp/fzxiaoq/'+obj.xmall_tu)
            obj.big_tu=arr
            this.goods=obj
            //清楚加载提示框
            console.log(obj)
            this.$indicator.close()
        })
    },
    methods:{
        guige:function(){
            this.ge=true;
        },
        hs:function(){
            console.log('123')
        },
        lhs:function(){
            console.log('123')
        },
        yangshi:function(){
            this.shi=true;
        },
        axs:function(){
            console.log('约1210万像素');
        },
        bxs:function(){
            console.log('约2420万像素');
        },
        cxs:function(){
            console.log('约3630万像素');
        }

    }
}
</script>
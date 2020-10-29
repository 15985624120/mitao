<template>  
    <div class="ydy-body">
        <mt-swipe :speed="1000" :continuous="false">
            <mt-swipe-item><img src="..\assets\yindaoye\guide(3).png" alt=""></mt-swipe-item>
            <mt-swipe-item><img src="..\assets\yindaoye\1 (2).jpg" alt=""></mt-swipe-item>
            <mt-swipe-item>
                <img src="..\assets\yindaoye\1 (3).jpg" alt="" class="limg">
                <p class="logo-p">
                    <img src="..\assets\logo\6logo.png" alt="" class="logo">
                </p>
                <p class="button-p">
                    <mt-button type="primary" class="button" @click="index"> 
                        蜜桃摄影
                    </mt-button>
                </p>
            </mt-swipe-item>
        </mt-swipe>
        
    </div>
</template>
<script>
export default {
    data(){
        return {

        }
    },
    methods:{
        index(){
            this.$router.push('/index')
            //当用户加载过首页广告后 记录一下
            localStorage.setItem('index_show',1)
        }
    },
    mounted(){
        
    }
}
</script>
<style scoped>
    /* 引导页设置 */
    img{
        width: 100%;
        height: 100vh;
    }
    .ydy-body{
        width:100%;
        height: 100vh;
        background-size: 100%;
    }
    /* 第三页按钮p标签定位 */
    .logo-p{
        position: relative;
        top: -85vh;
        text-align: center;
    }
    .button-p{
        position: relative;
        top: -30vh;
        text-align: center;
    }
    /* 第三页按钮样式 */
    .button{
        background: #c3a68e;
        margin: 0 auto;
    }
    .logo{
        width: 144px;
        height: 96px;
        text-align: center;
    }
</style>
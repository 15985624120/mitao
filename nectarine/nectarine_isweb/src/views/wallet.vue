<template>
    <div>
        <div v-my-pigment>
            <!-- 顶部导航开始 -->
            <mt-header title="我的钱包" class="bg">
                <router-link to="/personal" slot="left">
                <mt-button icon="back"></mt-button>
                </router-link>
            </mt-header>
            <!-- 顶部导航结束 -->
            <!-- 个人信息开始 -->
            <div class="bg_1">
                
             <mt-cell title="账单" isLink  value="" to="" ></mt-cell>
             <mt-cell title="订单" isLink  value="" to="" ></mt-cell>
             <mt-cell title="地址" isLink  value="" to="" ></mt-cell>
             <mt-cell title="银行卡" isLink  value="" to="" class="modify_dyg"></mt-cell>
             
             <mt-cell title="待付款" isLink  value="" to="" ></mt-cell>
             <mt-cell title="已付款" isLink  value="" to="" ></mt-cell>
             <mt-cell title="发货中" isLink  value="" to="" ></mt-cell>
             <mt-cell title="已签收" isLink  value="" to="" class="modify_dyg"></mt-cell>
             
             <mt-cell title="安全保障" isLink  value="" to="" class="modify_dyg1"></mt-cell>
             <!-- 底部 -->
             <div class="wallet_a">
                 <router-link to="/personal" class="wallet_a1">
                帮助中心
                 </router-link><br>
                 <br>
                 <span>本服务由花里胡哨团队提供</span>
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
  background: #c4a68e;
}
/* 单元格设置 */
.modify_zt{
    width: 100%;
    height: 100%;
}
.modify_dyg{
    margin-bottom: 10px ;
}
.modify_dyg1{
    margin-bottom:50px
}
/* }底部 */
.wallet_a{
    font-size: 12px;
    text-align:center;
    padding-bottom: 30px;
}
.wallet_a>span{
    color: #fff;
}
.wallet_a1{
    text-decoration: none;
    color: #fff;
}

</style>
<script>
export default {
    data(){
        return{

        }
    },
    mounted(){

    }
}
</script>
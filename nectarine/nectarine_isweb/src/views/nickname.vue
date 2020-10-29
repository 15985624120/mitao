<template>
  <div>
    <div class=" bg_1" v-my-pigment>
        <mt-header title="修改昵称" class="bg" fixed>
                <router-link to="/details" slot="left">
                    <mt-button icon="back"></mt-button>
                </router-link>
                <router-link to="/details" slot="right">
                    <mt-button >完成</mt-button>
                </router-link>
        </mt-header>
        <!-- 修改栏 -->
        <mt-field
              class="nickname_style"
              type="text"
              label="昵称"
              placeholder="请输入新昵称"
              :attr={maxlength:20}
              ></mt-field> 
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
.nickname_style{
  margin-top:40px
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
<template>
  <div id="app">

    <router-view/>
  </div>
</template>
<script>
export default {
  data(){
    return{}
  },
  mounted(){
    //当页面开始加载时 判断用户是否已经加载过引导页
    if(localStorage.getItem('index_show')!=1){
      //加载过了就跳转真正的首页
      this.$router.push('/')
    }
  }
}
</script>
<style>
  .list-style{
    list-style: none;
  }
  .mx{
    margin-left:15px;
    margin-right:15px;
  }
  .d-fled{
    display: flex;

  }
  .fled-w{
    flex-wrap: wrap;
  }
  .mt-1{
    margin-top: 0.5rem;
  }
  .mt-2{
    margin-top: 1rem;
  }
  .mb-1{
    margin-bottom: 0.5rem;
  }
  .mb-2{
    margin-bottom: 1rem;
  }
  .ml-1{
    margin-left: 0.5rem;
  }
  .ml-2{
    margin-left: 1rem;
  }
  .mr-1{
    margin-right: 0.5rem;
  }
  .mr-2{
    margin-right: 1rem;
  }
</style>

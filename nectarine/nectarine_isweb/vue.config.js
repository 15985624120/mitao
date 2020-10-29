module.exports={
  //彻底懒加载
    chainWebpack:config=>{
      //删除编译后的独立js文件上的预获取操作
      config.plugins.delete("prefetch")
    }
}

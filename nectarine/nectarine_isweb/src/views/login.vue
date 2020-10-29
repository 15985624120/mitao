<template>
<div >
    <div class="login_back" v-my-pigment>
         <!-- 部导航开始 -->
        <mt-header title="蜜桃摄影" class="bg">
            <router-link to="/index" slot="left">
                <mt-button icon="back"></mt-button>
            </router-link>
            <router-link to="/register" slot="right" class="shortcut">
          注册
        </router-link>
        </mt-header>
        <!-- 顶部导航结束 -->
        <!-- 表单区域开始 -->
        <!-- 输入框部分开始 -->
        <div class="login_op">
          <!-- 头像 -->
            <div class="login_touxiang">
                <img src="../assets/login/touxiang84.svg">
            </div>
              <!-- 用户名输入框 -->
              <mt-field 
              class="login_op_field login_field_s"
              type="text" 
              label="用户名"
              placeholder="请输入用户名"
              :attr="{maxlength:15}"
              v-model="username"
              :state="usernameState"
              @blur.native.capture="checkUsername">
              </mt-field>   
              <!-- 密码输入框 -->
              <mt-field 
              class="login_op_field login_field_x"
              type="password" 
              label="密码"
              placeholder="请输入密码"
              :attr="{maxlength:20,autocomplete:'off'}"
              v-model="password"
              :state="passwordState"
              @blur.native.capture="checkPassword">
              </mt-field>  
              <div class="login_wangji">
                    <router-link to="" slot="left" class="shortcut login_wj">
                        <span class="login_span">忘记密码？</span>
                    </router-link>
                    <router-link to="" slot="right" class="shortcut login_dx">
                        <span class="login_span">短信验证</span>
                    </router-link>
              </div>
        </div>
        <!-- 输入框部分结束 -->
        <div class="login_jj">
          <!-- 按钮 -->
            <mt-button type="primary" size="large" @click="handle" class="login_anniu bg">登录</mt-button>  
            <!-- 分享部分 -->
            <div class="login_fgx"></div>
            <div class="login_div_fx">
                <img class="login_img" src="../assets/login/QQ36.svg" alt="">
                <img class="login_img" src="../assets/login/weixin36.svg" alt="">
                <img class="login_img" src="../assets/login/weibo36.svg" alt="">
            </div> 
        </div>
        <!-- 表单区域结束 -->
    </div>
</div>
</template>
<style >
.login_op_field input.mint-field-core{
   background:rgba(196, 166,142, 0);
}
.login_op_field{
  background-image: none;
}

</style>
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
/* 背景 */
.login_back{
  background: url(../assets/login/gonglu.jpg) ;
  background-size: 100vw 115vh;
}
/* 去除下划线 */
.shortcut{
  text-decoration: none;
}
/* 表单左右边距 */
.login_op{
  padding: 0 10%;
}
/* 表单属性 */
.login_field_s{
  border-radius: 10px 10px 0 0;
}
.login_field_x{
  border-radius:0 0 10px 10px;
}
.login_op_field{
  background:rgba(255, 255,255, 0.5);
}
/* 忘记密码 */
.login_wangji{
    width: 100%;
    height: 24px;
}
.login_wj{
    margin: 15px 0;
    float: left;
}
.login_dx{
    margin: 15px 0;
    float: right;
}
.login_span{
  color:#fff;
  font-size: 12px;
}
/* 表单头像部分 */
.login_touxiang{
    text-align: center;
    margin-top: 20px;
    margin-bottom: 55px;
}
/* 表单按钮部分 */
.login_jj{
    margin-top: 72px;
}
.login_anniu{
    margin-top: 48px;
    margin: 20px auto;
    width: 50%;
    border-radius: 10px;
}
/* 底部分享部分 */
.login_div_fx{
    width: 50%;
    height: 36px;
    padding-top: 20px;
    margin: auto;
    padding-bottom: 100px;
    display: flex;
    flex-direction: row-reverse;
    flex-wrap: wrap;
    
}
/* 分割线 */
.login_fgx{
  margin-top: 20px;
  width: 28%;
  margin: auto;
 border-top: 1px solid #d4d4d4;
}
.login_img{
    width: 36px;
    height: 36px;
    margin: auto;
}
</style>
<script>
export default {
  data(){
    return {
      // 用户名
      username:'',
      // 密码
      password:'',

      // 用户名的状态
      usernameState:'',
      // 密码的状态
      passwordState:'',


    }
  },
  mounted(){
    // 控制颜色

    
  },
  methods:{
    //校验用户名
    checkUsername(){  
      let usernameRegExp = /^[0-9a-zA-Z_]{6,20}$/;
      if(usernameRegExp.test(this.username)){
        this.usernameState = '';
        return true;
      } else {
        this.usernameState = 'error';
        this.$toast({
          message:"用户名不合法",
          position:"top",
          duration:"2000"
        });
        return false;
      }
    },
    //校验密码
    checkPassword(){
      //密码的正则表达式
      let passwordRegExp = /^[0-9A-Za-z]{8,20}$/;
      if(passwordRegExp.test(this.password)){
        this.passwordState=''
        return true;
      } else {
        this.passwordState='error'
        this.$toast({
          message:"密码不合法",
          position:"top",
          duration:"2000"
        });
        return false;
      }
    },
    //提交数据
    handle(){
      if(this.checkUsername() && this.checkPassword()){
        let obj={ 
            account:this.username,
            pwd:this.password
          }
        //该将获取到的信息提交到WEB服务器
        this.axios.post('/users',this.qs.stringify(obj))
          .then(res=>{
            if(res.data.sxa==1){
              localStorage.setItem('uname',this.username)
              localStorage.setItem('style',res.data.style)
              //存储登录状态
              localStorage.setItem('uname-show',1)
              this.$toast({
                message:"登录成功",
                position:"top",
                duration:"2000"
              });
              this.$router.push('/index')
            }else{
              this.$messagebox("登录提示","账号或密码不正确")
            }
          })
      }
    }
    
  }
}
</script>
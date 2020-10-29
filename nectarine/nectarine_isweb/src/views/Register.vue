<template>
  <div>
    <div class="register_back " v-my-pigment>
      <!-- 顶部导航开始 -->
      <mt-header title="蜜桃摄影" class="bg">
        <router-link to="/index" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
        
        <router-link to="/login" slot="right" class="shortcut">
          登录
        </router-link>
      </mt-header>
      <!-- 顶部导航结束 -->
      <!-- 表单区域开始 -->
      <!-- 输入框部分开始 -->
      <div class="register_op">
        <!-- 头像 -->
        <div class="register_touxiang">
          <img src="../assets/login/touxiang84.svg" />
        </div>
        <div>
          <!-- 用户名输入框 -->
          <mt-field
            class="register_op_field register_field_s"
            type="text"
            label="用户名"
            placeholder="请输入用户名"
            :attr="{ maxlength: 15 }"
            v-model="username"
            :state="usernameState"
            @blur.native.capture="checkUsername"
          >
          </mt-field>
          <!-- 密码输入框 -->
          <mt-field
            class="register_op_field"
            type="password"
            label="密码"
            placeholder="请输入密码"
            :attr="{ maxlength: 20, autocomplete: 'off' }"
            v-model="password"
            :state="passwordState"
            @blur.native.capture="checkPassword"
          >
          </mt-field>
          <!-- 确认密码输入框 -->
          <mt-field
            class="register_op_field"
            type="password"
            label="确认密码"
            placeholder="请再次输入密码"
            :attr="{ maxlength: 20, autocomplete: 'off' }"
            v-model="conpassword"
            :state="conpasswordState"
            @blur.native.capture="checkConpassword"
          >
          </mt-field>
          <!-- 手机号输入框 -->
          <mt-field
            class="register_op_field register_field_x"
            type="text"
            label="手机号"
            placeholder="请输入手机号码"
            v-model="phone"
             :state="phoneState"
            :attr="{ maxlength: 11 }"
            @blur.native.capture="phoneshijian"
          ></mt-field>
        </div>
      </div>
      <!-- 输入框部分结束 -->
      <div>
        <!-- 按钮 -->
        <mt-button
          type="primary"
          size="large"
          @click="handle"
          class="register_anniu bg"
          >注册</mt-button
        >
        <!-- 分享部分 -->
        <div class="register_fgx"></div>
        <div class="register_div_fx">
          <img class="register_img" src="../assets/login/QQ36.svg" alt="" />
          <img class="register_img" src="../assets/login/weixin36.svg" alt="" />
          <img class="register_img" src="../assets/login/weibo36.svg" alt="" />
        </div>
      </div>
      <!-- 表单区域结束 -->
    </div>
  </div>
</template>
<style >
.register_op_field input.mint-field-core {
  background: rgba(196, 166, 142, 0);
}
.register_op_field {
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
.register_back {
  background: url(../assets/login/gonglu.jpg);
  background-size: 100vw 115vh;
}
/* 去除下划线 */
.shortcut {
  text-decoration: none;
}
/* 表单左右边距 */
.register_op {
  padding: 0 10%;
}
/* 表单属性 */
.register_field_s {
  border-radius: 10px 10px 0 0;
}
.register_field_x {
  border-radius: 0 0 10px 10px;
}
.register_op_field {
  background: rgba(255, 255, 255, 0.5);
}
/* 表单头像部分 */
.register_touxiang {
  text-align: center;
  margin-top: 20px;
  margin-bottom: 35px;
}
/* 表单按钮部分 */
.register_anniu {
  margin: 20px auto;
  width: 50%;
  border-radius: 10px;
}
/* 底部分享部分 */
.register_div_fx {
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
.register_fgx {
  width: 28%;
  margin: auto;
  border-top: 1px solid #d4d4d4;
}
.register_img {
  width: 36px;
  height: 36px;
  margin: auto;
}
</style>
<script>
export default {
  data() {
    return {
      // 用户名
      username: "",
      // 密码
      password: "",
      // 确认密码
      conpassword: "",
      //手机号码
      phone:'',
      // 用户名的状态
      usernameState: "",
      // 密码的状态
      passwordState: "",
      // 确认密码的状态
      conpasswordState: "",
      phoneState:''
    };
  },
  mounted(){

  },
  methods: {
    //校验用户名
    checkUsername() {
      let usernameRegExp = /^[0-9a-zA-Z_]{6,20}$/;
      if (usernameRegExp.test(this.username)) {
        this.usernameState = "";
        return true;
      } else {
        this.usernameState = "error";
        this.$toast({
          message: "用户名不合法",
          position: "top",
          duration: "2000",
        });
        return false;
      }
    },
    //校验密码
    checkPassword() {
      //密码的正则表达式
      let passwordRegExp = /^[0-9A-Za-z]{8,20}$/;
      if (passwordRegExp.test(this.password)) {
        this.passwordState = "";
        //确认面明的bug
        if (this.password != this.conpassword && this.conpassword!='') {
          this.conpasswordState = "error";
          this.$toast({
            message: "两次密码不一致",
            position: "top",
            duration: "2000",
          });
          return false;
        } else {
          this.conpasswordState = "";
          return true;
        }
        return true;
      } else {
        this.passwordState = "error";
        this.$toast({
          message: "密码不合法",
          position: "top",
          duration: "2000",
        });
        return false;
      }
    },
    //校验确认密码
    checkConpassword() {
      if (this.password == this.conpassword && this.conpassword != "") {
        this.conpasswordState = "";
        return true;
      } else {
        this.conpasswordState = "error";
        this.$toast({
          message: "两次密码不一致",
          position: "top",
          duration: "2000",
        });
        return false;
      }
    },
    //手机号码应征
    phoneshijian(){
      var reg=/^1[3-9]\d{9}$/;
			//     去除空格在判断
			if(reg.test(this.phone.trim())){
        this.phoneState=''
        return true;
      }else{
        this.phoneState = "error";
        this.$toast({
          message: "手机号码不合法",
          position: "top",
          duration: "2000",
        });
        return false
      }
    },
    //提交数据
    handle() {
      // this.$router.push('/hsq')
      if (
        this.checkUsername() &&
        this.checkPassword() &&
        this.checkConpassword() &&
        this.phoneshijian()
      ) {
        //该将获取到的信息提交到WEB服务器
        let obj={ 
            account:this.username,
            pwd:this.password,
            phone:this.phone
          }
        this.axios.post(
          '/users/register',
          this.qs.stringify(obj)
        ).then(res=>{
          if(res.data.sxa==1){
            //存储用户名
            localStorage.setItem('uname',this.username)
            //保存用户登录状态
            localStorage.setItem('uname-show',1)
            this.$router.push('/hsq')
          }else{
             this.$messagebox("注册提示","用户名被占用")
          }
        })
      }
    },
  },
};
</script>
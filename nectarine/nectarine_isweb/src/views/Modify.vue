<template>
  <div>
    <div class="modify_zt" v-my-pigment>
      <!-- 顶部导航开始 -->
      <mt-header title="修改设置" class="bg">
        <router-link to="/personal" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
      </mt-header>
      <!-- 顶部导航结束 -->
      <!-- 个人信息开始 -->
      <div class="bg_1">
        <router-link to="/details">
          <div class="modify_zh">
            <div>
              <img
                class="modify_img"
                src="../assets/personal/touxiang-1.svg"
                alt=""
              />
            </div>
            <div>
              <span>我的账户</span>
            </div>
          </div>
        </router-link>
        <mt-cell
          title="账号与安全"
          isLink
          value=""
          to=""
          class="modify_dyg"
        ></mt-cell>
        <mt-cell title="新消息通知" isLink value="" to=""></mt-cell>
        <mt-cell title="隐私" isLink value="" to=""></mt-cell>
        <mt-cell title="通用" isLink value="" to=""></mt-cell>
        <mt-cell
          title="关于蜜桃"
          isLink
          value="v1.1"
          to=""
          class="modify_dyg"
        ></mt-cell>
        <mt-button
          @click="isshow"
          type="primary"
          size="large"
          class="modify_anniu"
          >退出登录</mt-button
        >
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
/* 个人账号 */
.modify_zh {
  padding: 0 10px;
  height: 80px;
  background: #fff;
}
.modify_zh > div {
  float: left;
  line-height: 80px;
  color: #000;
}
.modify_img {
  margin-right: 10px;
  width: 60px;
}
/* 单元格设置 */
.modify_zt {
  width: 100%;
  height: 100%;
}
.modify_dyg {
  margin: 25px 0;
  height: 40px;
}
/* 按钮 */
.modify_anniu {
  color: #000;
  font-size: 16px;
  background: #fff;
}
</style>
<script>
export default {
  data() {
    return {};
  },
  methods: {
    isshow() {
      // localStorage.removeItem('uname')
      this.$messagebox.confirm("", {
        message: "是否退出登录",
        title: "退出提示",
        showConfirmButton: true,
        showCancelButton: true,
        cancelButtonClass: "cancelButton",
        confirmButtonClass: "confirmButton",
        confirmButtonText: "确定",
        cancelButtonText: "暂不",
      })
        .then((action) => {
          if (action == "confirm") {
            //点击确定的回调
            // 删除用户名
            localStorage.removeItem('uname')
            // 删除登录状态
            localStorage.removeItem('uname-show')
            this.$toast({
                message: "已退出登录",
                position: "top",
                duration: "1500",
            });
            this.$router.push('/index')
          }
        })
        .catch((err) => {
          if (err == "cancel") {
            //点击暂不的回调
          }
        });
    },
  },
};
</script>
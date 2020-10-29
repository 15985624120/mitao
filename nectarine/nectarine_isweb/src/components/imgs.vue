<template>
  <div class="imgs fens">
    <mt-header title="动态">
      <router-link to="/dongtai" slot="left">
        <mt-button type="default" icon="back" size="normal"></mt-button>
      </router-link>
    </mt-header>
    <div>
      <textarea
        v-model="text"
        placeholder="说说您此刻的想法"
        class="textar"
      ></textarea>
    </div>
    <div class="dongtai">
      <van-uploader
        v-model="fileList"
        multiple
        :after-read="afterRead"
        :max-count="9"
        :max-size="500 * 1024"
        @oversize="onOversize"
      />
      <br />
      <mt-button @click="imgsc" type="primary" size="large">发布</mt-button>
    </div>
  </div>
</template>
<style  >
/* 导航粉色 */
.imgs.fens .mint-header {
  background: #ff6699;
}
/* 棕色 */
.imgs.zong .mint-header {
  background: #9b7159;
}
.imgs .textar {
  width: 100%;
  margin: 0;
  box-sizing: border-box;
  padding: 20px;
  border: none;
  resize: none;
}
.imgs .dongtai {
  padding: 20px;
}
.imgs.fens .mint-button--primary {
  background: #ffccdd;
}
/* 按钮粉色系 */
.imgs.zong .mint-button--primary {
  background: #9b7159;
}
</style>
<script>
export default {
  data() {
    return {
      text: "",
      fileList: [],
    };
  },
  methods: {
    imgsc() {
      console.log("1");
      if (this.fileList.length == 0 || this.text.length == 0) {
        console.log("2");
        this.$toast({
          message: "没有内容可发布",
          position: "top",
          duration: "1000",
        });
      } else {
        let usename = localStorage.getItem("uname");
        let arr = [];
        let formData = new FormData();
        for (let val of this.fileList) {
          formData.append("files", val.file);
        }
        if (this.afterRead()) {
          this.$indicator.open({
            text: "加载中...",
            spinnerType: "triple-bounce",
          });
          this.axios
            .post("/users/upload", formData, {
              headers: {
                enctype: "multipart/form-data",
              },
            })
            .then((res) => {
              let src = res.data.arr;
              this.axios
                .post(
                  "/users/test",
                  `arr=${src}&text=${this.text}&usename=${usename}`
                )
                .then((res) => {
                  if (res.data.sax == 1) {
                    this.$indicator.close();
                    this.$toast({
                      message: "发表成功",
                      position: "top",
                      duration: "1000",
                    });
                    this.$router.push("/dongtai");
                  } else {
                    this.$toast({
                      message: "发表失败",
                      position: "top",
                      duration: "1000",
                    });
                    this.$router.push("/dongtai");
                  }
                });
            });
        }
      }
    },
    afterRead(file) {
      // console.log(file);
      for (var val of this.fileList) {
        if (
          val.file.type !== "image/jpeg" &&
          val.file.type !== "image/png" &&
          val.file.type !== "image/gif"
        ) {
          this.$messagebox("上传提示", "只能上传png或jpg或gif格式的图片");
          return false;
        }
      }
      return true;
    },
    onOversize(file) {
      this.$messagebox("上传提示", "文件不能超过500kb");
      return false;
    },
  },
};
</script>
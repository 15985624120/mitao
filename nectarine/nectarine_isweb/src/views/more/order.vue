<template>
  <div class="zong">
    <!-- 顶部导航开始 -->
    <mt-header title="填写订单" class="bg" fixed>
      <router-link :to="`/photographer/${fid}`" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <!-- 顶部导航结束 -->
    <!-- 表单部分开始 -->

    <div class="biaodan">
      <div class="btn">
        <mt-cell title="摄影师名称">
          <div class="biaodan_xingxi">{{ usename.usname }}</div>
        </mt-cell>
        <mt-cell title="摄影风格">
          <div class="biaodan_xingxi">{{ usename.direction }}</div>
        </mt-cell>
        <mt-cell title="价格">
          <div class="biaodan_xingxi">{{ usename.pathe }}元</div>
        </mt-cell>
        <mt-cell title="预约人数">
          <div class="renshu">
            <button @click="minus" class="renshu_btn">-</button>
            <span class="renshu_span">{{ n }}</span>
            <button @click="add" class="renshu_btn">+</button>
          </div>
        </mt-cell>
        <mt-cell title="时间">
          <mt-button @click.native="open('picker')" size="large">{{
            value | formatDate
          }}</mt-button>
        </mt-cell>
        <!-- 时间选择器 -->
        <mt-datetime-picker
          class="picker_show"
          ref="picker"
          type="date"
          v-model="value"
          :startDate="startDate"
          :endDate="endDate"
        ></mt-datetime-picker>
      </div>
      <div>
        <mt-field
          v-model="yname"
          type="text"
          label="姓名"
          placeholder="请填写真实姓名（必填）"
          :attr="{ maxlength: 20 }"
        ></mt-field>
        <mt-field
          class=""
          type="text"
          label="电话"
          v-model="yphone"
          :attr="{ maxlength: 20 }"
        ></mt-field>
        <mt-cell>
          <textarea
            class="textarea"
            v-model="bei"
            placeholder="备注        （选填）"
          ></textarea>
        </mt-cell>
      </div>
    </div>
    <!-- 表单部分结束 -->
    <div>
      <mt-button @click="iSlink" type="primary" size="large" class="bg"
        >点击提交</mt-button
      >
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
  background: #c4a86e;
}
/* 表单部分 */
.biaodan {
  margin: 40px 0;
}
/* 预约人数 */
.renshu {
  height: 100%;
  width: 74px;
}
.renshu_span {
  text-align: center;
  margin: 0 10px;
}
.btn {
  margin-bottom: 45px;
}
.renshu_btn {
  border: 0;
}
.textarea {
  width: 100vw;
  height: 100px;
  resize: none;
  border: 0;
  margin: 5px auto;
}
</style>
<script>
export default {
  data() {
    return {
      n: 1,
      fid: 1,
      aid: 1,
      yname: "",
      yphone: "",
      bei: "",
      data: null,
      usename: [],
      phone: [],
      // 时间选择器
      value: new Date(), //定义显示时间
      visible: false,
      startDate: new Date(), //设置开始时间
      endDate: new Date("2021-12-31"), //设置结束时间
    };
  },
  filters: {
    //时间转换
    formatDate(time) {
      var date = new Date(time);
      return formatDate(date, "yyyy-MM-dd");
    },
  },
  methods: {
    iSlink() {
      if (this.yname.length == 0) {
        this.$toast({
          message: "姓名不能为空",
          position: "top",
          duration: "2000",
        });
        return;
      } else {
        var reg = /^1[3-9]\d{9}$/;
        //     去除空格在判断
        if (reg.test(this.yphone.trim())) {
        } else {
          this.phoneState = "error";
          this.$toast({
            message: "手机号码不合法",
            position: "top",
            duration: "2000",
          });
          return;
        }
      }
      // 提交内容
      let obj = {
        aid: this.aid, //用户id
        sid: this.fid, //摄影师id
        paceth: this.usename.pathe, //价格
        rens: this.n, //仁苏
        shij: this.value, //月圆时间
        yname: this.yname, //用户名
        yphone: this.yphone, //电话
        beizu: this.bei,
      };
      this.axios.post("/chanp/yydd", this.qs.stringify(obj)).then((res) => {
        console.log(res.data);
      });
    },
    add() {
      this.n++;
    },
    minus() {
      if (this.n > 1) {
        this.n--;
      }
    },
    yuyue() {
      // 预约查询摄影师姓名、价格、风格
      this.$router.push("/yuyue");
    },
    yydh() {
      this.$router.push("/yydh");
    },
    yymc() {
      this.$router.push("/yymc");
    },
    open(picker) {
      this.$refs[picker].open(); //设置开始
    },
    handleConfirm(value) {
      console.log(value);
      this.year = value.getFullYear();
      this.month = value.getMonth() + 1;
      this.date = value.getDate();
      this.isClicked = true;
    },
  },
  mounted() {
    // let fid = this.$route.params.fid;
    // console.log(fid);
    let aname = localStorage.getItem("uname");
    let fid = this.$route.params.fid;
    this.fid = fid;
    console.log(aname);
    this.axios.post("/chanp/yuyue?fid=" + fid).then((res) => {
      this.usename = res.data.reslut[0];
      // console.log(this.usename);
    });

    this.axios.get("/chanp/yymc?aname=" + aname).then((res) => {
      this.usebana = res.data.reslut[0];

      this.aid = this.usebana.aid;
      // console.log(this.aid);
      localStorage.setItem("usename_id", this.aid);
      this.yphone = this.usebana.phone;
    });

    // this.axios.get("/chanp/yydh?aname=" + this.usebana.aid).then((res) => {
    //   this.phone = res.data.reslut[0];
    //   console.log(this.phone);
    //   this.yphone = this.phone.phone;
    // });
  },
};
export function formatDate(date, fmt) {
  if (/(y+)/.test(fmt)) {
    fmt = fmt.replace(
      RegExp.$1,
      (date.getFullYear() + "").substr(4 - RegExp.$1.length)
    );
  }
  let o = {
    "M+": date.getMonth() + 1,
    "d+": date.getDate(),
    "h+": date.getHours(),
    "m+": date.getMinutes(),
    "s+": date.getSeconds(),
  };
  for (let k in o) {
    if (new RegExp(`(${k})`).test(fmt)) {
      let str = o[k] + "";
      fmt = fmt.replace(
        RegExp.$1,
        RegExp.$1.length === 1 ? str : padLeftZero(str)
      );
    }
  }
  console.log(fmt);
  return fmt;
}

function padLeftZero(str) {
  return ("00" + str).substr(str.length);
}
</script>
// import { from } from 'core-js/fn/array'

import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//引入mint-ui
import MintUI from 'mint-ui'
//引入mint-ui的样式文件
import 'mint-ui/lib/style.min.css';
//通过Vue.use()方法将MintUI注册为插件
Vue.use(MintUI);

import Vant from 'vant';
// import Uploader from 'vant/lib/uploader';
import 'vant/lib/index.css';
// import 'vant/lib/uploader/style';
Vue.use(Vant);

//引入一键查看大图的插件
import VueDirectiveImagePreviewer from 'vue-directive-image-previewer'
import 'vue-directive-image-previewer/dist/assets/style.css'
Vue.use(VueDirectiveImagePreviewer)
//引入axios
import axios from 'axios';
//添加默认请求地址
// axios.defaults.baseURL = 'https://ma.rickyduan.ink';
axios.defaults.baseURL = 'http://127.0.0.1:3100';
//把axios添加到vue的原型对象
Vue.prototype.axios = axios;
//引入qs模块
import qs from 'qs';
//添加到原型对象
Vue.prototype.qs = qs;
//引入时间对象
import moment from 'moment';
Vue.prototype.moment = moment;

Vue.config.productionTip = false
//引入全局组件
import Header from './components/header'
import Tabbar from './components/tabbar'
import like from './components/like'
//把Header注册为全局组件
Vue.component('my-header', Header)
Vue.component('my-tabbar', Tabbar)
Vue.component('my-like', like)

//创建一个自定义指令my-focus
Vue.directive("my-focus", {
  //(当元素)插入到页面后自动执行
  inserted(domElem) {
    //让当前带有v-my-focus指令的元素自动获得焦点
    domElem.focus();//复习DOM第三天HTMLDOM常用对象
  }
})
//封装更换颜色的自定义指令
Vue.directive("my-pigment", {
  //(当元素)插入到页面后自动执行
  inserted(domElem) {
    var yinse = localStorage.getItem('style') ? localStorage.getItem('style') : '0'
    if (yinse == 1) {
      domElem.className += ' zong'
    } else {
      domElem.className += ' fens'
    }

  }
})
//功能暂未开放
Vue.directive("my-map", {
  //(当元素)插入到页面后自动执行
  inserted(domElem) {
    

  }
})
new Vue({
  router, //注入路由
  store,//注入vuex
  render: h => h(App)
}).$mount('#app')

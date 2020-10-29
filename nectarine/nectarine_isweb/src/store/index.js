import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {//创库

    islogin:localStorage.getItem('uname-show')?localStorage.getItem('uname-show'):0,
    //获取用户名
    uname:localStorage.getItem('uname'),
  },
  mutations: {
  },
  actions: {
  },
  modules: {
  }
})

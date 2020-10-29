import Vue from "vue";
import VueRouter from "vue-router";
// import Home from '../views/Home.vue'
import Index from "../views/index"; //首页
import Personal from "../views/Personal"; //我的
import Search from "../views/search"; //搜索
import index_yindao from "../views/index_1"; //yindao
import hsq from "../views/hsq"; //风格  hsq
import Xzfs from "../views/Xzfs"; //风格   hl
import Chanp from "../views/more/chanp"; //产品查看更多
import Kepu from "../views/more/kepu"; //科普
import style from "../views/more/style"; //摄影分类
import Dongtai from "../views/dongtai"; //动态
import camerama from "../views/more/camerama"; //摄影师列表
import Register from "../views/Register"; //注册页
import login from "../views/login"; //登录页
import Modify from "../views/Modify"; //资料修改
import wallet from "../views/wallet"; //我的钱包
import details from "../views/details"; //个人资料
import nickname from "../views/nickname"; //修改昵称
import photographer from "../views/photographer"; //摄影师详情页
import popular from "../views/popular";
import goods from "../views/goods";
import positioning from "../views/more/positioning"; //门顶地图
import Orderlist from "../views/more/Orderlist"; //订单

import imgs from "../components/imgs";
import order from "../views/more/order";
Vue.use(VueRouter);

const routes = [
  {
    path: "/order/:fid",
    component: order,
  },
  {
    path: "/img",
    component: imgs,
  },
  {
    path: "/qrd",
    component: Orderlist,
  },
  {
    path: "/",
    component: index_yindao,
  },
  {
    path: "/search",
    component: Search,
  },
  {
    path: "/index",
    component: Index,
  },
  {
    //我的
    path: "/personal",
    component: Personal,
  },
  {
    path: "/hsq",
    component: hsq,
  },
  {
    path: "/hli",
    component: Xzfs,
  },
  {
    //产品
    path: "/chanp",
    component: Chanp,
  },
  {
    //科普
    path: "/kepu",
    component: Kepu,
  },
  {
    //动态
    path: "/dongtai",
    component: Dongtai,
  },
  {
    //摄影师列表
    path: "/camerama",
    component: camerama,
  },
  {
    path: "/style",
    component: style,
  },
  {
    path: "/register",
    component: Register,
  },
  {
    path: "/login",
    component: login,
  },
  {
    path: "/modify",
    component: Modify,
  },
  {
    path: "/wallet",
    component: wallet,
  },
  {
    path: "/details",
    component: details,
  },
  {
    path: "/nickname",
    component: nickname,
  },
  {
    path: "/photographer/:fid",
    component: photographer,
  },
  {
    path: "/popular",
    component: popular,
  },
  {
    path: "/goods/:cid",
    component: goods,
  },
  {
    path: "/positioning",
    component: positioning,
  },
  // {
  //   path: '/about',
  //   name: 'About',
  //   // route level code-splitting
  //   // this generates a separate chunk (about.[hash].js) for this route
  //   // which is lazy-loaded when the route is visited.
  //   component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  // }
];

const router = new VueRouter({
  mode: "history", //路由模式
  // base: process.env.BASE_URL,
  routes,
});

export default router;

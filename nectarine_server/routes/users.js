var express = require('express');
var router = express.Router();//创建路由对象
const pool=require("./pool");
//引入md5 模块 用于把密码
// 转换为加密格式
const md5=require('md5');
/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

module.exports = router;

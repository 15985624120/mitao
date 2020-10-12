var express = require('express');
var router = express.Router();//创建路由对象
const pool=require("./pool");
/* GET home page. */
router.get('/', (req, res, next)=>{
  res.send('123456');
});

module.exports = router;

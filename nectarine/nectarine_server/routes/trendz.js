//动态路由文件
var express = require("express");
var server = express.Router(); //创建路由对象
const pool = require("./pool");
//动态接口
server.get("/", (req, res) => {
  let sql =
    "select aid,nickname,portrait,dy_id,copyss,release_time,imgs from mt_aid,mt_dy_id where mt_dy_id.dy_aid=mt_aid.aid";
  pool.query(sql, (err, result) => {
    res.send(result);
  });
});

module.exports = server;

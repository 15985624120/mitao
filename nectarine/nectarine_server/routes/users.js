var express = require("express");
var fs = require("fs");
const multer = require("multer");
const upload = multer({ dest: "upload/" });
var router = express.Router(); //创建路由对象
const pool = require("./pool");
//引入md5 模块 用于把密码
// 转换为加密格式
const md5 = require("md5");
// 用户登录接口
router.post("/", function (req, res) {
  // 获取用户名和密码
  var { account, pwd } = req.body;
  pwd = md5(pwd);
  let sql = "SELECT account,pwd,style FROM mt_aid WHERE account=? AND pwd=?";
  pool.query(sql, [account, pwd], (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      res.send({
        msage: "登录成功",
        sxa: "1",
        account: result[0].account,
        style: result[0].style,
      });
    } else {
      res.send({
        msage: "登录失败,账号或密码错误",
        sxa: "0",
      });
    }
  });
});
//用户注册
router.post("/register", (req, res) => {
  var { account, pwd, phone } = req.body;
  console.log(account, pwd, phone);
  pwd = md5(pwd);
  let sql = "SELECT account FROM mt_aid WHERE account=?";
  pool.query(sql, [account], (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      res.send({ msage: "账户名已存在", sxa: "0" });
    } else {
      let sql = "INSERT INTO mt_aid(account,pwd,phone) VALUES(?,?,?)";
      pool.query(sql, [account, pwd, phone], (err, results) => {
        if (err) throw err;
        res.send({ msage: "注册成功", sxa: "1" });
      });
    }
  });
  // 轮播接口
});
//存储风格
router.get("/style", (req, res) => {
  var { uname, styif } = req.query;
  // console.log(uname,styif)
  let sql = `UPDATE mt_aid SET style=? WHERE account=?`;
  pool.query(sql, [styif, uname], (err, result) => {
    if (err) throw err;
    if (result.affectedRows == 1) {
      res.send({ age: "保存成功", sax: "1" });
    } else {
      res.send({ age: "保存失败", sax: "0" });
    }
  });
});
//
router.post("/touxiao", (req, res) => {
  let img = req.body;
  console.log(img);
  res.send(img);
});
//预约接口
router.post("/yueyu", (req, res) => {
  // console.log(123)
  var { uname, sheyid } = req.body;
  let sql = `UPDATE mt_aid SET sheysid=? WHERE account=?`;
  pool.query(sql, [sheyid, uname], (err, result) => {
    if (result.affectedRows == 1) {
      res.send({ sax: "1", msage: "预约成功" });
    } else {
      res.send({ sax: "0", msage: "订单提交失败" });
    }

    // console.log(result)
  });
});
//订单接口
router.post("/dingdan", (req, res) => {
  let aid = req.body.aid;
  let sql = `select convention_id,mt_convention_id.fid,orty_id,booking_status,
      convention_time,convention_price,convention_people,nickname,portduce,suoshu,direction 
      from mt_convention_id,mt_fid where aid=2 and mt_fid.fid=mt_convention_id.fid`;
  pool.query(sql, [aid], (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      res.send({ sax: "1", result: result });
    } else {
      res.send({ sax: "0", msage: "没有获取到订单" });
    }
  });
});
//
router.post("/img", (req, res) => {
  let arr = req.body.arr;
  // console.log(arr)
  fs.writeFileSync("image.jpg", arr, function (err) {
    if (err) {
      res.send(err);
    } else {
      res.send("保存成功！");
    }
  });

  // res.send(arr)
});
//图片上传接口
router.post("/upload", multer({ dest: "upload" }).array("files", 10), function (
  req,
  res
) {
  const file = req.files;
  const fileList = [];
  for (var i in file) {
    var files = file[i];
    fs.renameSync(files.path, `upload/${files.originalname}`);
    files.path = `upload/${files.originalname}`;
    fileList.push(files);
    if (fileList.length == file.length) {
      pool();
    }
  }
  function pool() {
    let arr = [];
    for (let val of fileList) {
      arr.push(val.originalname);
    }
    res.send({ sax: "1", arr: arr });
  }
});
// 图片下载接口
router.get("/useImg", (req, res) => {
  req.query.src
    ? res.download("upload/" + req.query.src)
    : res.send({ success: false });
});
//动态提交接口
router.post("/test", (req, res) => {
  let { arr, text, usename } = req.body;
  let sql = "select aid from mt_aid where account=?";
  pool.query(sql, [usename], (err, result) => {
    if (err) throw err;
    if (result[0].aid != undefined && result[0].aid != null) {
      let aid = result[0].aid;
      let shij = Date.now();
      // console.log(arr, text, usename, aid, shij);
      let sql =
        "INSERT INTO mt_dy_id(dy_aid,copyss,release_time,imgs) VALUES(?,?,?,?)";
      pool.query(sql, [aid, text, shij, arr], (err, result) => {
        if (err) throw err;
        if (result.affectedRows == 1) {
          res.send({ sax: "1", mags: "成功" });
        } else {
          res.send({ sax: "0", mags: "失败" });
        }
      });
    } else {
      res.send({ sax: "0", mags: "失败" });
    }
  });
});
// 127.0.0.1:3100/users/useImg?src=232.jpg
//预约接口

module.exports = router;

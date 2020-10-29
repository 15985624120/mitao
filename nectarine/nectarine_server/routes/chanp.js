//产品路由文件
var express = require("express");
var server = express.Router(); //创建路由对象
const pool = require("./pool");
//产品顶部导航接口
server.get("/header", (req, res) => {
  let sql = "select type_id,type_name from mt_type_id";
  pool.query(sql, (err, reslut) => {
    if (err) throw err;
    res.send({ sxa: "1", reslut: reslut });
  });
});
//产品接口
server.get("/inset", (req, res) => {
  let { category_id, page } = req.query;
  //保存每次页面加载的数据条数
  let pags = 6;
  //计算分页显示数据开始位置的公式  页码-1*每次显示数据的条数
  let set = (page - 1) * pags;
  //查询数据总页数
  let sql1 = `SELECT COUNT(cid) AS count FROM mt_cid WHERE type_id=?`;
  pool.query(sql1, [category_id], (err, reslus) => {
    if (err) throw err;
    let data = reslus; //保存数据的总量
    //当总条数查询成功后 开始执行查询数据
    let sql =
      `SELECT cid,type_id,trade_name,introduce,price,img FROM
         mt_cid WHERE type_id=?  LIMIT ` +
      set +
      `,` +
      pags;
    pool.query(sql, [category_id], (err, reslut) => {
      if (err) throw err;
      res.send({ sxa: "1", reslut: reslut, data: data });
    });
  });
});
//产品详情页
server.get("/xq", (req, res) => {
  let cid = req.query.cid;
  let sql = `select cid,type_id,introduce,details,price,did,big_tu,two_tu,small_tu,xmall_tu from mt_cid,mt_did where mt_did.did=? and mt_cid.cid=?`;
  pool.query(sql, [cid, cid], (err, reslut) => {
    if (err) throw err;
    if (reslut.length > 0) {
      res.send({ sxa: "1", reslut: reslut });
    } else {
      res.send({ sxa: "0", mags: "未找到数据" });
    }
  });
});

// 摄影预约
server.post("/yuyue", (req, res) => {
  let fid = req.query.fid;
  console.log(fid);
  let sql = `select fid,usname,direction,pathe from mt_fid where fid=?`;
  pool.query(sql, [fid], (err, reslut) => {
    if (err) throw err;
    if (reslut.length > 0) {
      res.send({ sxa: "1", reslut: reslut });
    } else {
      res.send({ sxa: "0", mags: "未找到数据" });
    }
  });
});
// 摄影预约用户电话默认获取
server.get("/yydh", (req, res) => {
  let aid = req.query.aid;
  console.log(aid);
  let sql1 = `select aid,phone from mt_aid where aid=?`;
  pool.query(sql1, [aid], (err, reslut) => {
    if (err) throw err;
    if (reslut.length > 0) {
      res.send({ sxa: "1", reslut: reslut });
    } else {
      res.send({ sxa: "0", mags: "未找到数据" });
    }
  });
});
server.get("/yymc", (req, res) => {
  let aname = req.query.aname;
  let sql = `select aid,account,phone from mt_aid where account=?`;
  pool.query(sql, [aname], (err, reslut) => {
    if (err) throw err;
    if (reslut.length > 0) {
      res.send({ sxa: "1", reslut: reslut });
    } else {
      res.send({ sxa: "0", mags: "未找到数据" });
    }
  });
});
server.post("/yydd", (req, res) => {
  var { aid, sid, shij, yname, yphone, paceth, beizu, rens } = req.body;
  console.log(aid, sid, shij, yname, yphone, paceth, beizu, rens);
  let sql = `INSERT INTO mt_convention_id(aid,fid,convention_time,reservation_name,appointment_phone,convention_price,remarks,convention_people) VALUES(?,?,?,?,?,?,?,?)`;
  pool.query(
    sql,
    [aid, sid, shij, yname, yphone, paceth, beizu, rens],
    (err, results) => {
      if (err) throw err;

      if (results.affectedRows == 1) {
        res.send({ sxa: "1", msage: "预约成功" });
      } else {
        res.send({ sxa: "0", results: "预约失败" });
      }
    }
  );
});
module.exports = server;

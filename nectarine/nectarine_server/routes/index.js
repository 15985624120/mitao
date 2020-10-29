var express = require('express');
var router = express.Router();//创建路由对象
const pool = require("./pool");
// 首页轮播
router.get('/banler', (req, res) => {
  //轮播
  let sql = 'select lid,two_tu from mt_lid';
  pool.query(sql, (err, result) => {
    if (err) throw err
    if (result.length > 0) {
      // console.log(result)
      res.send(result)
    }
  })
});
//分类
router.get('/classify', (req, res) => {
  let sql = 'Select bid,path1,path2,text,href from mt_vid'
  pool.query(sql, (err, result) => {
    if (err) throw err
    if (result.length > 0) {
      res.send({ age: '1', result: result })
    }
  })
});
//摄影师
router.get('/camerama', (req, res) => {
  let sql = `select fid,nickname,portduce,direction from mt_fid LIMIT 0,4`
  let sql1=`select mid,two_tu from mt_mid where mid=?`
let sql2=`select xid,big_tu from mt_xid where xid=?`
  pool.query(sql, (err,resisobj) => {
    if (err) throw err;
    let arr=[]
    resisobj.forEach(element => {
      pool.query(sql1,[element.fid],(err,result)=>{
        element.imgs=result
        pool.query(sql2,[element.fid],(err,res)=>{
          element.imgt=res
          arr.push(element)
          send()
        })
      })
    });
    function send(){
      if(arr.length==resisobj.length){
        res.send(arr)
      }
    }
  })
});
//首页产品
router.get('/chanp', (req, res) => {
  let sql = `SELECT cid,type_id,trade_name,introduce,price,img FROM
  mt_cid  LIMIT 0,4`;
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      res.send({ sax: '1', msage: '查询成功', result: result })
    } else {
      res.send({ sax: '1', msage: '查询失败', result: null })
    }
  })
})
// 科普
router.get('/kepuIsindex',(req,res)=>{
  var kpikep = [
    {
      imgs: "b7fd5266d016092406b075d8d73c79ffe7cd3418.jpeg",
      text: "我的相机突然对不了焦了？",
      vals:"我相信，大部分摄影师在拍照过程中会遇到这种情况。对于新手来说，这可是个灾难性的突发状况，其实，这个问题远没有那么可怕。这是我们在拍摄过程中不小心碰到了镜头上的对焦环，改变了镜头的对焦方式。",
    },
    {
      imgs: "f7246b600c33874402d90a61543495fcd72aa04b.jpeg",
      text: "对上了焦， 可是取景器里面的画面还是模糊的",
      vals: "从取景器里面看，不管对没对上焦，画面都是模糊的。这个是屈光度没有调节到合适的位置，或者说我们不小心碰到了转动了屈光度调节转盘。",
    },
    {
      imgs: "10dfa9ec8a1363279db62cde94b4ece909fac741.jpeg",
      text: "拍着拍着照片突然有暗角了。",
      vals: "你得看下你镜头用的遮光罩是不是没拧好，而且用的是花瓣形的遮光罩。这个突发状况很好解决，把遮光罩拧好或者直接摘下它。",
    },
    {
      imgs: "a5c27d1ed21b0ef4453d8ab4deff1ddf83cb3ec6.jpeg",
      text: " 使用三脚架的时候一条腿对着自己还是两条腿对着自己？",
      vals: "拍照的时候，我们经常会不小心碰到三脚架，生怕相机摔了。弄得自己手忙脚乱的。三脚架的正确放法是，让三脚架的两条腿，正对自己。这样一来方便我们观看照相机，二来避免我们误碰三脚架，导致相机摔倒。",
    }
  ];
  res.send({lpi:kpikep})
})
module.exports = router;

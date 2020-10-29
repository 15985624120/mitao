//综合路由文件
var express = require('express');
var server = express.Router();//创建路由对象
const pool=require("./pool");
//搜索接口
server.get('/search',(req,res)=>{
    var text=req.query.guanjz;
    let arr=['%'+text+'%'];
    var sql = `select * from mt_search_id where seyins like ?`
    pool.query(sql,arr,(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({age:'查询成功',sax:'1',result:result})
        }else{
            res.send({age:'未查询到结果',sax:'0'})
        }
    })
})
//摄影师列表页
server.get('/camerama', (req, res) => {
    let ym=req.query.category_id;
    let pagesize=5;
    // 当前页码
    let offset=(ym-1)*pagesize;
     // 查询当前分类id数据的条数     cont是用于id数的别名
     let sqlh = `SELECT COUNT(fid) AS count FROM mt_fid`
    let sql = `select fid,nickname,portduce,direction from mt_fid LIMIT ${offset},${pagesize}`
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
            pool.query(sqlh,(err,result)=>{
                res.send({result:arr,max:result[0].count})
            })
        }
      }
    })
  });
//摄影师详情页
server.get('/sysxq',(req,res)=>{
    let fid=req.query.fid;
    let sql=`select fid,usname,suoshu,pathe,shijian,nickname,portduce,direction 
        from mt_fid where fid=?`
    pool.query(sql,[fid],(err,result)=>{
        if(err) throw err;
        let obj=result;
        if(result.length>0){
            let sql1=`select mid,two_tu from mt_mid where mid=?`
            let sql2=`select xid,big_tu from mt_xid where xid=?`
            pool.query(sql1,[fid],(err,mid)=>{
                obj[0].imgs=mid
                pool.query(sql2,[fid],(err,xid)=>{
                    obj[0].imgt=xid
                    res.send(obj)
                })
            })
        }
    })
})
module.exports = server;
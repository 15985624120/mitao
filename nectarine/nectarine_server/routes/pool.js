//引入MySQL模块
const mysql=require('mysql');
//创建连接池
var pool = mysql.createPool({
  // host: 'localhost',
  // port:'3306',//数据库服务器端口
  // user: 'mt',
  // password: '123456789',
  // database: 'mt',
  // charset:'utf8',//数据库编码
  // connectionLimit: 20

  
    host: '127.0.0.1',
    port:'3306',//数据库服务器端口
    user: 'root',
    password: '',
    database: 'MT',
    charset:'utf8',//数据库编码
    connectionLimit: 20
  });
  //保护pool对象 保证不会被修改
   Object.freeze(pool);
  //把创建好的连接池导出
  module.exports = pool;
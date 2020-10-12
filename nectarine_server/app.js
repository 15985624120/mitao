var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

//引入cors模块   用于解决跨域问题
const cors=require('cors');
//引入body中间件
const bodyParser=require('body-parser');

//引入路由
var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var app = express();

//使用cors模块进行跨域
app.use(cors({
  //     需要跨域的地址
  origin:['http://localhost:8080','http://192.168.43.111:8080']
}));
//使用body-parser中间件
app.use( bodyParser.urlencoded({//获取post请求数据
	extended:false
}) );
// view engine setup
// app.set('views', path.join(__dirname, 'views'));
// app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
//托管静态资源
app.use(express.static(path.join(__dirname, 'public')));
//挂载路由
app.use('/', indexRouter);
app.use('/users', usersRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;

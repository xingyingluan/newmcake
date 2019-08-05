//引入express
const express = require("express");
//创建服务器
var server = express();
//引入cors
const cors = require("cors");
//引入express-session
const session = require("express-session");
server.listen(8080);

//引入body-parser
const bodyParser = require("body-parser");

//引入user路由
const userRouter = require("./routes/user.js");
const listsRouter = require("./routes/lists");

//跨域
server.use(cors({
    origin: ["http://127.0.0.1:3002",
        "http://localhost:3002"],
    credentials: true
}))
//session
server.use(session({
    secret: "128位字符串",
    resave: true,
    saveUninitialized: true
}))

//托管静态资源到public下
server.use(express.static("public"));

//使用bodyParser，将post请求的数据格式化为对象
server.use(bodyParser.urlencoded({
    extended: false
}));

//引入(挂载)user路由器
server.use("/user", userRouter);
server.use("/lists", listsRouter);


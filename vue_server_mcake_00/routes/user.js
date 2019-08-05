//引入express
const express = require("express");
//引入连接池对象
const pool = require("../pool.js");
//创建路由器对象
var router = express.Router();

//1.用户注册路由
router.post("/register", function (req, res) {
    //获取用户信息
    var obj = req.body;
    console.log(obj);
    //判断数据是否为空
    for (var key in obj) {
        if (!obj[key]) {
            res.send({ code: 0, mag: key + "不能为空" })
            return;
        }
    }
    //访问数据库，判断当前用户是否存在
    var sql1 = "SELECT uid FROM mk_user WHERE phone=?";
    pool.query(sql1, [obj.phone], function (err, result) {
        if (err) throw err;
        if (result.length > 0) {
            res.send({ code: 2, msg: "该用户已存在" });
            return;
        } else {
            //访问数据库，插入用户信息
            var sql = "INSERT INTO mk_user SET ?";
            pool.query(sql, [obj], function (err, result) {
                //如果服务器错误，就抛出
                if (err) throw err;
                if (result.affectedRows > 0) {
                    res.send({ code: 1, msg: "注册成功" });
                } else {
                    res.send({ code: -1, msg: "注册失败" });
                }
            })
        }
    })
})

//2.用户登录
router.post("/login", function (req, res) {
    //获取手机号码和密码
    var obj = req.body;
    var $phone = obj.phone;
    var $upwd = obj.upwd;
    console.log(obj);
    //判断数据是否为空
    for (var key in obj) {
        if (!obj[key]) {
            res.send({ code: 0, mag: key + "不能为空" })
            return;
        }
    }
    //访问数据库，查询用户是否存在
    var sql = "SELECT uid FROM mk_user WHERE phone=? AND upwd=?";
    pool.query(sql, [$phone, $upwd], function (err, result) {
        if (err) throw err;
        if (result.length > 0) {
            //把当前登录用户的uid保存到session对象
            req.session.uid = result[0].id;
            res.send({ code: 1, msg: "登录成功" })
        } else {
            res.send({ code: -1, msg: "用户名或密码错误" })
        }
    })
})

//3.用户评论插入
router.post("/comment", (req, res) => {
    //获取用户评论信息
    var obj = req.body;
    console.log(obj);
    //访问数据库，插入数据
    var sql = "INSERT INTO mk_product_reviews SET ?";
    pool.query(sql, [obj], (err, result) => {
        if (err) throw err;
        if (result.affectedRows > 0) {
            res.send({ code: 1, msg: "评论成功" });
        } else {
            res.send({ code: -1, msg: "评论失败" })
        }
    })
})

//5.用户评论查询
router.get("/commentsel", (req, res) => {
    //获取对应某商品的用户评论
    var productId = req.query.product_id;
    //console.log(productId);
    //访问数据库，查询数据
    var sql = "SELECT rid,product_id,user_id,reviews_time,container,grade,phone FROM mk_product_reviews WHERE product_id=?"
    pool.query(sql, [productId], (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

//6.用户评论分页查询
router.get("/commentpagesel", (req, res) => {
    //获取显示的page页码
    var page = req.query.page;
    //获取显示的每页条数
    var count = req.query.count;
    //获取当前商品的id
    var productId = req.query.product_id;
    //console.log(page, count, productId);
    //访问数据库，查询数据
    var sql = "SELECT rid,product_id,user_id,reviews_time,container,grade,phone FROM mk_product_reviews WHERE product_id=? limit ?,?"
    pool.query(sql, [productId, parseInt((page - 1) * count), parseInt(count)], (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

//7.获取单个商品详情信息
router.get("/getdetail", (req, res) => {
    //获取当前商品的id
    var $cid = req.query.cid;
    //判断商品id是否为空
    if (!$cid) {
        res.send({ code: 0, mag: "cid不能为空" })
        return;
    }
    //访问数据库，获得数据，返回结果
    var sql = "SELECT cid,family_id,title,subtitle,price,spec,lname,promise_c,promise_e,onsale,is_onsale,sweetness,acidite,base,texture,flavor,special_version,img_first,img_tow,img_three,img_bottom FROM mk_cake WHERE cid=?";
    pool.query(sql, [$cid], (err, result) => {
        if (err) throw err;
        if (result.length > 0) {
            res.send(result);
        } else {
            res.send({ code: -1, msg: "查询商品不存在" });
        }
    })
})

//8.查询购物车信息
router.get("/getCartList", (req, res) => {
    //获取当前用户的id
    var $userid = req.query.user_id;
    //判断用户id是否为空
    if (!$userid) {
        res.send({ code: 0, msg: "user_id不能为空" });
        return;
    }
    //获取当前用户所有的购物车商品信息 
    var sql = "SELECT iid,user_id,product_id,title,subtitle,price,spec,imgurl,count,is_checked FROM mk_shoppingcart_item WHERE user_id=?";
    pool.query(sql, [$userid], (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

//导出路由
module.exports = router;

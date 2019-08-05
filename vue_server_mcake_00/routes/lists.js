//引入express
const express=require("express");
//引入连接池
const pool=require("../pool.js");
//创建路由器对象
var router=express.Router();

//访问蛋糕的商品列表
router.get("/cake",(req,res)=>{
    var fid=req.query.family_id;
    if(!fid){
        res.send({code:0,msg:"family_id不能为空"});
        return;
    }
    pool.query("select cid,title,subtitle,price,img_one,onsale from mk_cake where family_id = ?",[fid],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }else{
            res.send({code:-1,msg:"商品不存在"});
        }

    })

})

//主页商品列表
router.get("/home",(req,res)=>{
    pool.query("select cid,title,subtitle,price,img_one,home_type from mk_cake where is_index_product = 1",(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }else{
            res.send({code:-1,msg:"商品不存在"});
        }
    })
})

//主页banner图
router.get("/banner",(req,res)=>{
    pool.query("select img from mk_index_carousel",(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }else{
            res.send({code:-1,msg:"图片不存在"});
        }
    })
})

/* 精选商品列表 */
router.get("/sift",(req,res)=>{
    var str=req.query.lname;
    console.log(str,111)
    if(!str){
        res.send({code:-1,msg:"lname不能为空"});
        return;
    }
    console.log(str,2222)
    var sql=`select cid,title,subtitle,price,img_one,onsale from mk_cake where lname like '%${str}%' `;
    pool.query(sql,(err,result)=>{
        if(err)  throw err;
        res.send(result);
    });
})

//导出路由
module.exports = router;

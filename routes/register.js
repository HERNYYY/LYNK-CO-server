const express = require("express");
const pool = require("../pool");
var router = express.Router();

router.post("/",(req,res)=>{
    var uname = req.body.uname;
    var phone = req.body.phone;
    var upwd = req.body.upwd;
    if(uname!==undefined&&phone!==undefined&&upwd!==undefined){
        var sql1 = "select uname from user where uname=? or phone=?"
        pool.query(sql1,[uname,phone],(err,result)=>{
            if(err) console.log(err);
            if(result.length==0){
                var sql2 = "insert into user set ?";
                pool.query(sql2,[req.body],(err,result)=>{
                    if(err) console.log(err);
                    if(result.affectedRows>0){
                        res.send({code:1,msg:"注册成功"})
                    }
                })
            }else{
                res.send({code:0})
            }
        })
    }else{
        res.send({code:401,msg:"ERROR"})
    }
})

module.exports = router;
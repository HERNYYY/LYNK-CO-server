const express = require("express");
const pool = require("../pool");
var router = express.Router();

router.post("/",(req,res)=>{
    var phone = req.body.phone;
    var upwd = req.body.upwd;
    if(!phone&&!upwd){
        res.send({code:0})
        return;
    }
    var sql = "select phone,id from user where phone=? and upwd=?"
    pool.query(sql,[phone,upwd],(err,result)=>{
        if(err) console.log(err);
        if(result.length>0){
            res.send({code:1,result})
        }else{
            res.send({code:0})
        }
    })
})

module.exports = router;
const express = require("express");
const pool = require("../pool")
var router = express.Router()

router.get("/",(req,res)=>{
    var uid = req.query.uid;
    var pid = req.query.pid;
    var count1 = parseInt(req.query.count);
    //console.log(uid,pid,count1)
    //console.log(req.query)
    var sql1 = `select pid,count from cart where uid=? and pid=?`
    pool.query(sql1,[uid,pid],(err,result)=>{
        if(err) console.log(err);
        if(result.length>0){
            //console.log(result[0].count)
            var count2 = parseInt(result[0].count)
            var count = count2 + count1;
            var sql2 = `update cart set count=? where pid=?`
            pool.query(sql2,[count,pid],(err,result)=>{
                if(err) console.log(err)
                if(result.affectedRows>0){
                    res.send({code:1})
                }else{
                    res.send({code:0})
                }
            })
        }else{
            var sql = `insert into cart set ?`
            pool.query(sql,[req.query],(err,result)=>{
            if(err) console.log(err);
            if(result.affectedRows>0){
                res.send({code:1})
            }else{
                res.send({code:0})
            }
        })
        }
    })




     
})

module.exports = router;
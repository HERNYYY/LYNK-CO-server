const express = require("express");
const pool = require("../pool");
var router = express.Router();

router.get("/",(req,res)=>{
    var pid = req.query.pid;
    var count = req.query.count;
    var sql = `update cart set count=? where pid=?`
    pool.query(sql,[pid,count],(err,result)=>{
        if(err) console.log(err);
        if(result.affectedRows>0){
            res.send({code:1})
        }else{
            res.send({code:0})
        }
    })
})


module.exports = router;
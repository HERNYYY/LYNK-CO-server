const express = require("express");
const pool = require("../pool")
var router = express.Router();

router.get("/",(req,res)=>{
    var pid = req.query.pid;
    var sql = `delete from cart where pid=?`;
    pool.query(sql,[pid],(err,result)=>{
        if(err) console.log(err);
        if(result.affectedRows>0){
            res.send({code:1})
        }else{
            res.send({code:0})
        }
    })
})


module.exports = router;
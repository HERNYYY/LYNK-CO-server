const express = require("express");
const pool = require("../pool");
var router = express.Router();

router.get("/",(req,res)=>{
    var pid = req.query.pid;
    if(pid!==undefined){
        var sql1 = "select title,price,dp1img,dp2img,dp3img,dp4img from product where pid = ?"
        pool.query(sql1,[pid],(err,result)=>{
            if(err) console.log(err);
            //console.log(result);
            res.send(result)
        })
    }
})

module.exports = router;
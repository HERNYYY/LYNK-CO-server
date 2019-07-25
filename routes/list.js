const express = require("express");
const pool = require("../pool");
var router = express.Router();

router.get("/",(req,res)=>{
    var page = req.query.page;
    var count = 0;
    if(page!=0){count = (page-1)*12}
    var sql1 = `select pid,title,price,pimg from product limit ${count},12`;
    pool.query(sql1,[],(err,result)=>{
        if(err) console.log(err);
        //console.log(result)
        res.send(result)
        
    })

})

module.exports = router
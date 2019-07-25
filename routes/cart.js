const express = require("express");
const pool = require("../pool");
var router = express.Router();

router.get("/",(req,res)=>{
    var output = {};
    var uid = req.query.uid
    var sql = "select pid,count from cart where uid=?"
    pool.query(sql,[uid],(err,result)=>{
        if(err) console.log(err);
        if(result.length>0){
            output.data = result;
            //console.log(output)
            for(var i=0;i<output.data.length;i++){
                var pid = output.data[i].pid;
                (function(pid,i){
                   var sql1 = `select title,price,pimg from product where pid=?` 
                   pool.query(sql1,[pid],(err,result)=>{
                       if(err) console.log(err)
                     output.data[i].title = result[0].title;
                    output.data[i].price = result[0].price;
                    output.data[i].pimg = result[0].pimg;
                }) 
                })(pid,i);
               
            }
            setTimeout(()=>{
                res.send(output)
            },100)
        }else{
            res.send({code:0})
        }
    })
})


module.exports = router;
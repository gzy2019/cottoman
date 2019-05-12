const express=require("express");
var pool=require("../pool.js");
let router=express.Router();

router.get("/register",(req,res)=>{
	var uid=req.query.uid;
	var uname=req.query.uname;
	var upwd=req.query.upwd;
	var sql="insert into cottoman_user(uid,uname,upwd) values(?,?,?)";
	pool.query(sql,[uid,uname,upwd],(err,result)=>{
		if(err) throw err;
		if(result.affectedRows==0){
			res.json({code:-1,msg:"注册失败"});
		}else{
			res.json({code:1,msg:"注册成功"});
		}
	});
});
module.exports=router;

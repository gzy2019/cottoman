const express=require("express");
var pool=require("../pool.js");
let router=express.Router();

router.get("/login",(req,res)=>{
	var u_name=req.query.uname;
	var u_pwd=req.query.upwd;
	var sql="select uid from cottoman_user where uname=? and upwd=?";
	pool.query(sql,[u_name,u_pwd],(err,result)=>{
		if(err) throw err;
		if(result.length==0){
			res.json({code:-1,msg:"用户名或密码错误"})
		}else{
				res.json({code:1,msg:"登陆成功",name:u_name})
			}
	});
});
module.exports=router;



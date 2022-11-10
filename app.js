//const express = require("express");
//const bodyParser = require("body-parser");
//const app = express();
//app.use(bodyParser.urlencoded({extended: true}));
//app.use(express.static("public"));
//
//app.get("/", function(req, res){
//	res.sendFile(__dirname + "/index.html");
//});
//
//app.post("/", function(req, res){
//	var uname = req.body.uname;
//	var pwd = req.body.pwd;
//	console.log("Username: " + uname);
//	console.log("Password: " + pwd);
//});
//
//app.listen(3000, function(){
//	console.log("Server has started on port 3000.");
//});
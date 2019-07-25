const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const register = require("./routes/register");
const login = require("./routes/login")
const list = require("./routes/list")
const detail = require("./routes/detail")
const addcart = require("./routes/addcart")
const cart = require("./routes/cart")
const delcart = require("./routes/delcart")
const setcart = require("./routes/setcart")

var app = express();
var server = app.listen(3000);
app.use(cors({
    origin:"http://127.0.0.1:5501"
}))
app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static('boot'));

app.use("/register",register);
app.use("/login",login);
app.use("/list",list)
app.use("/detail",detail)
app.use("/addcart",addcart)
app.use("/cart",cart)
app.use("/delcart",delcart)
app.use("/setcart",setcart)
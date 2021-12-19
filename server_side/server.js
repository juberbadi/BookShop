const express = require('express')
const bodyParser = require('body-parser')

const routerCategory = require('./routes/category')
const routerProduct = require('./routes/product')
const routerUsers = require('./routes/user')
const routerMR = require('./routes/MRlogin')
const routeCategoryAndSearch = require('./routes/categoryAndSearch')
const routeCartAndOrders = require('./routes/cartAndOrder')
const app = express()



app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*"); // update to match the domain you will make the request from
    res.header("Access-Control-Allow-Methods", "GET,POST,PUT,DELETE"); // update to match the domain you will make the request from
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});


app.use(bodyParser.json())
app.use('/category',routerCategory)
app.use('/login/dashboard/product',routerProduct)
app.use('/login/dashboard/user',routerUsers)
app.use('/MRlogin',routerMR)
app.use('/MRlogin',routeCategoryAndSearch)
app.use('/MRlogin',routeCartAndOrders)
app.use(express.static('images'))

app.listen(4000,  () =>{
    console.log('server started')
})

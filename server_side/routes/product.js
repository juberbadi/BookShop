const db = require('../config/db')
const utils = require('../utils')
const express = require('express')
const multer = require('multer')

const router = express.Router()

const upload = multer({dest: 'images'})

router.get('/', (request, response) => {
    const connection = db.connect1()
    const statement = `select * from products`
    connection.query(statement, (error, data) => {
        connection.end()
        response.send(utils.createResult(error, data))
    })
})

router.post('/',upload.single('image'), (request, response) => {
    const file = request.file.filename
    const {name,price,discount,priceWithDiscount,description} = request.body

    // console.log(categoryid);

    const connection = db.connect1()
    const statement = `
    insert into products (name, price, discount, priceWithDiscount, description,image) values('${name}', ${price}, ${discount}, ${priceWithDiscount}, '${description}','${file}')`
    connection.query(statement, (error, data) => {
        connection.end()
        response.send(utils.createResult(error, data))
    })
})


router.delete('/:id', (request, response) => {
    const {id} = request.params
    const connection = db.connect1()
    const statement = `delete from products where id = ${id}`
    connection.query(statement, (error, data) => {
        connection.end()
        response.send(utils.createResult(error, data))
    })
})

// this api is for get details of product
router.get('/edit_product/:id', (request, response) => {
    const {id} = request.params
    const connection = db.connect1()
    const statement = `select * from products where id='${id}'`
    connection.query(statement, (error, data) => {


        response.send(utils.createResult(error, data))

    })
})


//this api is for uodate product list

router.put('/edit_product/:id',(request,response)=>{
    const {id} = request.params
    const {name,price,discount,priceWithDiscount,description} = request.body
    const connection = db.connect1()

    const statement = `update products set name='${name}',price='${price}',discount='${discount}',priceWithDiscount='${priceWithDiscount}', description='${description}' where id =${id}`

    connection.query(statement,(error,data)=>{
        connection.end()
        response.send(utils.createResult(error,data))
    })
})

// to get single result of product by id for product details
router.get('/:id', (request, response) => {
    const {id} = request.params
    const connection = db.connect1()
    const statement = `select * from products where id='${id}'`
    connection.query(statement, (error, data) => {


        response.send(utils.createResult(error, data))

    })
})

module.exports = router

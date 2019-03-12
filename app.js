const express = require('express');
const app = express()

app.get('/', (req, res)=> res.send('hello world'));

app.listen (3000, ()=>{

    console.log('Running our Hello World app on port 3000');
})
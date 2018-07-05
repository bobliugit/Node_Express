'use strict';
const express=require('express');
/* constants */
const PORT=8080;
const HOST='0.0.0.0';
/* App */
const app=express();
app.get('/', (req, res)=>{
    res.send('Hello Bob\n');
});
app.listen(PORT, HOST);
console.log('Running on http://${HOST}:${POST}');

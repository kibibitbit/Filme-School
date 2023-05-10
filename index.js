"use strict"
const express = require('express');
const app = express();
const session = require('express-session');
const flash = require('connect-flash');
const path = require("path");
const PublicRoutes = require('./app/routes/PublicRoutes');
const PrivateRoutes = require('./app/routes/PrivateRoutes');


app.set('views', './views');
app.set('view engine','ejs');
app.use(express.static(path.join(__dirname,'public')));
app.use(express.urlencoded({extended:false}));
app.use(express.json());

app.use('/',PublicRoutes);
app.use('/auth',PrivateRoutes);

const server = app.listen(3000,(req,res)=>{
        try {
            console.log(`Server Listening on http://localhost:3000`) //Hier wird die URL ausgegeben auf dem der Server gehostet wird
        }catch (error){
            console.log(error);// error wird gecatched
            console.log('Fehler bei dem starten der Startseite');
        }
});
module.exports = server;
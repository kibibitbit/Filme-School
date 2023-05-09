const db = require('../Controller/db');
const user = require('../models/user');

exports.register = (req,res)=>{
    console.log(req.body);
    res.redirect('/');
}
exports.login = (req,res)=>{
    console.log(req.body);
    res.redirect('/');
}
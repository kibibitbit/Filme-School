"use strict"
const user = require('../models/user');
const Filme = require('../models/Filme');
const path = require("path");
const db = require('../Controller/db');
async function Manage(req,res){
    try {
        res.render('Manage');
    }catch (error){
        console.log(error)
    }
}
async function error(req,res){
    try {
        res.render('Error');
    }catch (error){
        console.log(error)
    }
}
async function Filmsite(req,res){
    try {
        res.render('Filmsite');
    }catch (error){
        console.log(error)
    }
}
async function betweenslash(req,res){
    db.query(`SELECT * FROM filme WHERE FilmID = ${req.url.replace('/','')} `)
        .then(results => {
            res.render('Filmsite',{filme:results});
        })
        .catch(Error =>{
            res.render('Error');
        });
}
async function create(req,res){
    try {
        const {FSK, Description,Titel,Img,Serienlink,Statistik} = req.body;
        await Filme.CreateNewMovie(FSK,Description,Titel,Img,Serienlink,Statistik)
        res.redirect('/');
    }catch (error){
        console.error(error)
    }
}
async function index(req,res){
    try {
        await Filme.getAllMovies().then(filme =>{
           res.render('Index',{filme});
        })
    } catch (error) {
        console.error(error);
        res.status(500).send('Fehler beim Abrufen der Filme');
    }
}
async function del(req,res){
    try {
        const {FilmID} = req.body;
        await Filme.DeleteMovie(FilmID);
        res.redirect('/');
    } catch (error) {
        console.error(error);
        console.log(`Error deleting film with ID ${FilmID}`);
    }
}
async function update(req,res) {
    try {
        const {FilmID, FSK, Description, Titel, Img, Serienlink, Statistik} = req.body;
        await Filme.UpdateMovie(FilmID, FSK, Description, Titel, Img, Serienlink, Statistik);
        res.redirect('/');
    } catch (error) {
        console.error(error);
        console.log(`Error Updating the Film ${Titel}`);
    }
}
async function register (req,res){
   try {
       res.render('register');
   }catch (error){
       console.log(error)
   }
}
async function login (req,res){
    try {
        res.render('login');
    }catch (error){
        console.log(error)
    }
}



module.exports = {Manage,create,index,Filmsite,betweenslash,error,del,update,login,register};

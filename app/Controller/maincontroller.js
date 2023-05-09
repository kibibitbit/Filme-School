"use strict"
const Filme = require('../modules/Filme');
const bodyParser = require("body-parser");
const path = require("path");
const PulbicRoutes = require('../routes/PublicRoutes');
const PrivateRoutes = require('../routes/PrivateRoutes');
const express = require('express');
const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.set('views', './views');
app.set('view engine','ejs');
app.use( express.static(path.join(__dirname,'app')));
app.use( express.static(path.join(__dirname,'public')));
async function add(req,res){
    res.render('Add');
}
async function error(req,res){
    res.render('Error');
}
async function Filmsite(req,res){
    res.render('Filmsite');
}
async function betweenslash(req,res){
    db.query(`SELECT * FROM filme WHERE FilmID = ${req.url.replace('/','')}`)
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
        await controller.create(FSK,Description,Titel,Img,Serienlink,Statistik);
        res.redirect('/');

    }catch (error){
        console.error(error)
    }
}
async function main(req,res){
    try {
        await Filme.getAllMovies().then(filme =>{
           res.render('Index',{filme});
        })
    } catch (error) {
        console.error(error);
        res.status(500).send('Fehler beim Abrufen der Filme');
    }
}

/*exports.delete = async (req, res) => {
    const FilmID = req.params.id;
    try {
        await Filme.DeleteMovie(FilmID);
        res.redirect('Index');
    } catch (error) {
        console.error(error);
        console.log(`Error deleting film with ID ${FilmID}`);
    }
}*/
exports.create = async (req, res) => {
    const {FSK,Description,Titel,Img,Serienlink,Statistik} = req.body;

    try {
        await Filme.CreateNewMovie(FSK,Description,Titel,Img,Serienlink,Statistik);
        res.redirect('/');

    } catch (error) {
        console.error(error);
        console.log('Error creating film');
    }
}

module.exports = {add,create,main,Filmsite,betweenslash,error}


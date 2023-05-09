"use strict"
const express = require('express');
const app = express();
const router = express.Router();
const controller = require('../Controller/maincontroller');
const path = require('path');
const bodyParser = require("body-parser");
const db = require('../Controller/db');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.set('views', './views');
app.set('view engine','ejs');
app.use(express.static(path.join(__dirname, 'public')));

router.get('/Add', (req, res) => {
    res.render('Add');
});
router.post('/create',async (req,res)=>{
    try {
        const {FSK, Description,Titel,Img,Serienlink,Statistik} = req.body;
        await controller.create(FSK,Description,Titel,Img,Serienlink,Statistik);
        res.redirect('/');

    }catch (error){
        console.error(error)
    }
});
router.get('/', async (req, res) => {
    try {
        const filme = await controller.index().then(filme =>{
            res.render('Index',{filme:filme});
        });
    } catch (error) {
        console.error(error);
        res.status(500).send('Fehler beim Abrufen der Filme');
    }
});
router.get('/Filmsite', (req, res) => {
    res.render('Filmsite');
});
router.get('/*/',(req, res)=>{
    db.query(`SELECT * FROM filme WHERE FilmID = ${req.url.replace('/','')}`)
        .then(results => {
            res.render('Filmsite',{filme:results});
        })
        .catch(Error =>{
            res.render('Error');
        });
});
router.get('*',(req, res)=>{
    res.render('Error')
});

module.exports = router;
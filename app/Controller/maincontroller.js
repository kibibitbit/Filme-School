"use strict"
const Filme = require('../modules/Filme');
const {render} = require('ejs');

exports.index = async (req,res)=>{
    try{
        const filme = await Filme.getAllMovies();
        render('Index',{filme})
        return filme;
    }catch (error){
        console.error(error);
        console.log('Internal Error in index');
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

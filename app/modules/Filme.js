const db = require('../Controller/db');
const io = require("socket.io");
   class filme{

       constructor(FilmID,FSK,Description,Titel,Img,Serienlink,Statistik) {
           this.FilmID = FilmID;
           this.FSK = FSK;
           this.Description = Description;
           this.Titel = Titel;
           this.Img = Img;
           this.Serienlink = Serienlink;
           this.Statistik = Statistik;

       }
       static async getAllMovies() {
           try {
               const rows = await db.query('SELECT * FROM filme');
               const Filme = [];

               rows.forEach(row => {
                   const film = new filme(
                       row.FilmID,
                       row.FSK,
                       row.Description,
                       row.Titel,
                       row.Img,
                       row.Serienlink,
                       row.Statistik
                   );
                   Filme.push(film);
               });
               return Filme;
           } catch(error) {
               console.log('Fehler bei dem Abrufen der Daten: ', error);
           }
       };
        static async CreateNewMovie(FSK,Description,Titel,Img,Serienlink,Statistik){
            try{
                await db.query('INSERT INTO filme (FSK, Description,Titel,Img,Serienlink,Statistik) VALUES (?,?,?,?,?,?)', [FSK, Description, Titel, Img, Serienlink, Statistik]);
                console.log('Der Filme wurde Erfolgreich Erstellt');
            }catch(error){
                console.log('Fehler beim Createn des Films');
                console.log(error);
            }
        }
        static async UpdateMovie(){
        }
       /* static async DeleteMovie() {
            try {
                await db.query('DELETE FROM filme WHERE FilmID= ?',[FilmID]);
                console.log('Der Film'+Filme.Titel+ 'wurde Erfolgreich gelöscht.');
            }catch (error){
                console.log('Film konnte nicht gelöscht werden');
            }
        }*/
   }
module.exports = filme;


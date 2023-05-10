const db = require('../Controller/db');
const bcrypt = require('bcrypt');
    class User{
        constructor(ID,Vorname,Nachname,Mail,Passwort,Username) {
            this.ID = ID;
            this.Vorname = Vorname;
            this.Nachname = Nachname;
            this.Mail = Mail;
            this.Passwort = Passwort;
            this.Username = Username;
        }
        static async getAlluser() {
            try {
                const rows = await db.query('SELECT * FROM user');
                const Users = [];

                rows.forEach(row => {
                    const user = new User(
                        row.ID,
                        row.Vorname,
                        row.Nachname,
                        row.Mail,
                        row.Passwort,
                        row.Username
                    );
                    Users.push(user);
                });
                return Users;
            } catch(error) {
                console.log('Fehler bei dem Abrufen der Daten: ', error);
            }
        };
        static async CreateNewUser(Vorname,Nachname,Mail,Passwort,Username){
            try{
                    await db.query('INSERT INTO user (Vorname,Nachname,Mail,Passwort,Username) VALUES (?,?,?,?,?)', [Vorname,Nachname,Mail,Passwort,Username]);
                    console.log('Successful Register');
            }catch(error){
                console.log('Fehler beim erstellen des users');
                console.log(error);
            }
        }
        static async Mailcheck(mail){
            try {
                const result = await db.query('SELECT * FROM user WHERE mail = ?', [mail]);
                return result.length > 0;
            } catch (error) {
                console.log(error);
            }
        }
        static async cheackloginuser(Passwort,mail){
            try {
            }catch (error){
                console.log(error)
            }
        }
    }

module.exports = User;
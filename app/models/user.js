const db = require('../Controller/db');

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
    }

module.exports = User;
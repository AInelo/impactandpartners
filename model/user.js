// models/utilisateur.js
const pool = require("../db/connexionDb"); // Importez votre connexion à la base de données
const Database = require('../db/connexionDb');


class User {

  constructor(id, nom, email) {
    this.id = id;
    this.nom = nom;
    this.email = email;
  }

  static async AllInformationAboutAbonnement(date, AbonnementTime ) {
    const startDate = new Date(date);

    const formattedstartDate = `${startDate.getDate().toString().padStart(2, '0')}-${(startDate.getMonth() + 1).toString().padStart(2, '0')}-${startDate.getFullYear()}`;
    console.log('Started Date formated :', formattedstartDate);


      // Obtenir la date actuelle
    const currentDate = new Date();

    // Calculer la différence entre la date actuelle et la date de début en millisecondes
    const differenceInTime = currentDate.getTime() - startDate.getTime();

    // Convertir la différence en jours
    const differenceInDays = Math.floor(differenceInTime / (1000 * 3600 * 24));




    const EndDate = new Date(startDate);
    EndDate.setDate(EndDate.getDate() + AbonnementTime);



    const result = {
      "startdate": startDate,
      "enddate": EndDate
    }
    return { result }
  }

}

module.exports = User;

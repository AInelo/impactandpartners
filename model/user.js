// models/utilisateur.js
import Database from '../db/connexionDb.js';
import { hash } from 'bcrypt';


class User {

  constructor(id, nom, email) {
    this.id = id;
    this.nom = nom;
    this.email = email;
  }


  static async SignUp({ firstname, lastname, email, password, password2 }) {
    const db = new Database();
    let errors = [];

    if (!firstname || !lastname || !email || !password || !password2) {
      errors.push({ message: "Please enter all fields" });
    }

    if (password.length < 6) {
      errors.push({ message: "Password must be at least 6 characters long" });
    }

    if (password !== password2) {
      errors.push({ message: "Passwords do not match" });
    }

    if (errors.length > 0) {
      return { status: 400, errors };
    } else {
      const hashedPassword = await hash(password, 10);

      const query = "SELECT * FROM users WHERE email = $1";

      try {
        const results = await db.query(query, [email]);

        if (results.length > 0) {
          return { status: 409, error: 'L\'utilisateur avec cet email existe déjà.' };
        } else {
          const insertQuery = `INSERT INTO users (firstname, lastname, email, password)
                                VALUES ($1, $2, $3, $4)
                                RETURNING users_id, password`;

          const insertResult = await db.query(insertQuery, [firstname, lastname, email, hashedPassword]);

          return { status: 201, data: insertResult[0] };
        }
      } catch (error) {
        console.error('Erreur lors de l\'exécution de la requête', error);
        return { status: 500, error: 'Une erreur s\'est produite lors de l\'enregistrement de l\'utilisateur.' };
      }
    }
  }





  
  static async AllInformationAboutAbonnement(date, AbonnementTime ) {
    const startDate = new Date(date);

    const formattedstartDate = `${startDate.getDate().toString().padStart(2, '0')}-${(startDate.getMonth() + 1).toString().padStart(2, '0')}-${startDate.getFullYear()}`;
    const EndDate = new Date(startDate);
    EndDate.setDate(EndDate.getDate() + AbonnementTime);
    const formattedEndDate = `${EndDate.getDate().toString().padStart(2, '0')}-${(EndDate.getMonth() + 1).toString().padStart(2, '0')}-${EndDate.getFullYear()}`;
    console.log('Started Date formated from the model-User :', formattedstartDate);


    const currentDate = new Date();

    const differenceInTime = currentDate.getTime() - startDate.getTime();

    const differenceInDays = Math.floor(differenceInTime / (1000 * 3600 * 24));
    
    const a = (differenceInDays/AbonnementTime)* 100
    const PourcentageRemained = Math.round(a)
    const remainDay = AbonnementTime - differenceInDays;
    

    const result = {
      "startdate": formattedstartDate,
      "enddate": formattedEndDate,
      "pourcentageRemained": PourcentageRemained,
      "remainday": remainDay
    }
    return result;
  }

  static async ConformationSignUpInformation () {

  }

}

export default User;

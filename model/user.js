// models/utilisateur.js

const Database = require('../db/connexionDb');
const { hash } = require('bcrypt');
const iconv = require('iconv-lite');

class User {
  constructor(id, nom, email) {
    this.id = id;
    this.nom = nom;
    this.email = email;
  }

  // static async SignUp({ firstname, lastname, email, password, password2, country_code, numero_tel, date_inscription, date_paiement, duree_abonnement, amount_to_pay, user_category, type_user }) {
  //   const db = new Database();
  //   let errors = [];

  //   if (!firstname || !lastname || !email || !password || !password2) {
  //     errors.push({ message: "Please enter all fields" });
  //   }

  //   if (password.length < 6) {
  //     errors.push({ message: "Password must be at least 6 characters long" });
  //   }

  //   if (password !== password2) {
  //     errors.push({ message: "Passwords do not match" });
  //   }

  //   if (errors.length > 0) {
  //     return { status: 400, errors };
  //   } else {
  //     const hashedPassword = await hash(password, 10);

  //     const query = "SELECT * FROM users WHERE email = $1";

  //     try {
  //       const results = await db.query(query, [email]);

  //       if (results.length > 0) {
  //         return { status: 409, error: 'L\'utilisateur avec cet email existe déjà.' };
  //       } else {
  //         const insertQuery = `
  //           INSERT INTO users (firstname, lastname, email, password, country_code, numero_tel, date_inscription, date_paiement, duree_abonnement, amount_to_pay, user_category, type_user)
  //           VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12 )
  //           RETURNING users_id, password`;

  //         const insertResult = await db.query(insertQuery, [firstname, lastname, email, hashedPassword, country_code, numero_tel, date_inscription, date_paiement, duree_abonnement, amount_to_pay, user_category, type_user ]);

  //         return { status: 201, data: insertResult[0] };
  //       }
  //     } catch (error) {
  //       console.error('Erreur lors de l\'exécution de la requête', error);
  //       return { status: 500, error: 'Une erreur s\'est produite lors de l\'enregistrement de l\'utilisateur.' };
  //     }
  //   }
  // }

  static async SignUp({ firstname, lastname, email, password, password2, country_code, numero_tel, date_inscription, date_paiement, duree_abonnement, amount_to_pay, user_category, type_user }) {
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
                const insertQuery = `
                    INSERT INTO users (firstname, lastname, email, password, country_code, numero_tel, date_inscription, date_paiement, duree_abonnement, amount_to_pay, user_category, type_user)
                    VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)
                    RETURNING users_id, password`;

                const insertResult = await db.query(insertQuery, [firstname, lastname, email, hashedPassword, country_code, numero_tel, date_inscription, date_paiement, duree_abonnement, amount_to_pay, user_category, type_user]);

                return { status: 201, data: insertResult[0] };
            }
        } catch (error) {
            console.error('Erreur lors de l\'exécution de la requête', error);
            return { status: 500, error: 'Une erreur s\'est produite lors de l\'enregistrement de l\'utilisateur.' };
        }
    }
}



  static async AllInformationAboutAbonnement(date, AbonnementTime) {
    const startDate = new Date(date);

    const formattedstartDate = `${startDate.getDate().toString().padStart(2, '0')}-${(startDate.getMonth() + 1).toString().padStart(2, '0')}-${startDate.getFullYear()}`;
    const EndDate = new Date(startDate);
    EndDate.setDate(EndDate.getDate() + AbonnementTime);
    const formattedEndDate = `${EndDate.getDate().toString().padStart(2, '0')}-${(EndDate.getMonth() + 1).toString().padStart(2, '0')}-${EndDate.getFullYear()}`;
    console.log('Started Date formated from the model-User :', formattedstartDate);

    const currentDate = new Date();
    const differenceInTime = currentDate.getTime() - startDate.getTime();
    const differenceInDays = Math.floor(differenceInTime / (1000 * 3600 * 24));
    const a = (differenceInDays / AbonnementTime) * 100;
    const PourcentageRemained = Math.round(a);
    const remainDay = AbonnementTime - differenceInDays;

    const result = {
      "startdate": formattedstartDate,
      "enddate": formattedEndDate,
      "pourcentageRemained": PourcentageRemained,
      "remainday": remainDay
    };
    return result;
  }

  static convertLatin1ToUTF8ooo(latin1String) {
    // Convertir la chaîne Latin-1 en un tableau d'octets
    const latin1Bytes = new Uint8Array([...latin1String].map(char => char.charCodeAt(0)));

    // Décoder les octets Latin-1 en une chaîne
    const latin1Decoder = new TextDecoder('iso-8859-1');
    const decodedString = latin1Decoder.decode(latin1Bytes);

    // Encoder la chaîne décodée en UTF-8
    const utf8Encoder = new TextEncoder();
    const utf8Bytes = utf8Encoder.encode(decodedString);

    // Convertir les octets UTF-8 en une chaîne
    const utf8String = new TextDecoder('utf-8').decode(utf8Bytes);

    return utf8String;
  }

  static convertLatin1ToUTF8ooooooooooo(latin1String) {
    // Échapper la chaîne Latin-1
    const escapedString = escape(latin1String);

    // Décoder la chaîne échappée en UTF-8
    const utf8String = decodeURIComponent(escapedString);

    return utf8String;
  }

  static convertLatin1ToUTF8o(latin1String) {
    // Convertir la chaîne Latin-1 en un tableau d'octets
    const latin1Bytes = new Uint8Array([...latin1String].map(char => char.charCodeAt(0)));

    // Décoder les octets Latin-1 en une chaîne
    const latin1Decoder = new TextDecoder('iso-8859-1');
    const decodedString = latin1Decoder.decode(latin1Bytes);

    return decodedString;
  }

  static convertLatin1ToUTF8(latin1String) {
    // Décodez la chaîne Latin-1 en UTF-8
    const utf8Buffer = iconv.encode(latin1String, 'latin1');
    const utf8String = utf8Buffer.toString('utf-8');

    return utf8String;
  }

  static removeAccents(str) {
    // Remplacements spécifiques pour chaque accent
    const accentMap = {
      'é': 'e', 'è': 'e', 'ê': 'e', 'ë': 'e',
      'à': 'a', 'â': 'a', 'ä': 'a',
      'ï': 'i', 'î': 'i',
      'ü': 'u', 'ù': 'u', 'û': 'u',
      'ç': 'c'
    };

    // Remplacer chaque caractère accentué par son équivalent non accentué
    return str.split('').map(char => accentMap[char] || char).join('');
  }

  static formaterDate(date) {
    const formattedDate = `${date.getDate().toString().padStart(2, '0')}-${(date.getMonth() + 1).toString().padStart(2, '0')}-${date.getFullYear()}`;
    return formattedDate;
  }

  static ConformationSignUpInformation({ firstname, lastname, email, country_code, numero_tel, date_inscription, user_category }) {
    let UserObject = {
      firstname: firstname,
      lastname: lastname,
      email: email,
      country_code: country_code,
      numero_tel: numero_tel,
      date_inscription: date_inscription,
      date_paiement: null,
      amount_to_pay: 0,
      user_category: user_category,
      type_user: 'simple',
      duree_abonnement: 0
    };

    UserObject.firstname = User.removeAccents(firstname);
    UserObject.lastname = User.removeAccents(lastname);
    const startDate = new Date(date_inscription);
    const formattedstartDate = `${startDate.getDate().toString().padStart(2, '0')}-${(startDate.getMonth() + 1).toString().padStart(2, '0')}-${startDate.getFullYear()}`;
    UserObject.date_inscription = formattedstartDate;

    if (UserObject.user_category === 'entreprise') {
      UserObject.amount_to_pay = 7500;
      UserObject.duree_abonnement = 365;
    } else if (UserObject.user_category === 'etudiant') {
      UserObject.amount_to_pay = 4500;
      UserObject.duree_abonnement = 1095;
    } else if (UserObject.user_category === 'particulier') {
      UserObject.amount_to_pay = 5000;
      UserObject.duree_abonnement = 365;
    }

    return UserObject;
  }

  static async PaymentConfirmation(user_id, duree_abonnement) {
    const db = new Database();
    const now = new Date().toISOString();
    const date_paiement = this.formaterDate(now);

    const query1 = `
      UPDATE users
      SET status_paiement = true
      WHERE users_id = $1;
    `;
    const query2 = `
      UPDATE users
      SET date_paiement = $2
      WHERE users_id = $1;
    `;
    const query3 = `
      UPDATE users
      SET duree_abonnement = $3
      WHERE users_id = $1;
    `;

    try {
      // Commencer une transaction
      await db.query('BEGIN');
      const userId = parseInt(user_id, 10);
      const dureeAbonnement = parseInt(duree_abonnement, 10);

      // Exécuter les requêtes dans la transaction
      await db.query(query1, [userId]);
      await db.query(query2, [userId, date_paiement]);
      await db.query(query3, [userId, dureeAbonnement]);

      // Valider la transaction
      await db.query('COMMIT');
      return { status: 200, message: 'Payment confirmed successfully.' };
    } catch (error) {
      // Annuler la transaction en cas d'erreur
      await db.query('ROLLBACK');
      console.error('Error confirming payment:', error);
      return { status: 500, error: 'An error occurred while confirming payment.' };
    } finally {
      // Libérer la connexion après la transaction
      db.release();
    }
  }

  static ListAllUserData() {
    const query = `
      SELECT *
      FROM users
      ORDER BY date_paiement ASC;
    `;

    try {
      const db = new Database();
      const users = db.query(query);
      return { status: 200, data: users };
    } catch (error) {
      console.error('Error listing all users:', error);
      return { status: 500, error: 'An error occurred while fetching user data.' };
    }
  }

  static async UserChosenFromEmail(userEmail) {
    const db = new Database();
    const query = `
      SELECT *
      FROM users
      WHERE email = $1;
    `;

    try {
      const result = await db.query(query, [userEmail]);

      if (result.length > 0) {
        return { status: 200, data: result[0] };
      } else {
        return { status: 404, error: 'User not found.' };
      }
    } catch (error) {
      console.error('Error fetching user by email:', error);
      return { status: 500, error: 'An error occurred while fetching user data.' };
    }
  }
}

module.exports = User;

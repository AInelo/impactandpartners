import { Strategy as LocalStrategy } from "passport-local";
import { compare } from "bcrypt";
import Database from "./db/connexionDb.js";

function initialize(passport) {
  console.log("Passport Initialized");

  // const authenticateUser = (email, password, done) => {
  //   const db = new Database();
  //   const query = `SELECT * FROM users WHERE email = $1`;
  //   db.query(query, [email])
  //     .then(results => {
  //       if (results.length > 0) {
  //         const user = results[0];
  //         compare(password, user.password, (err, isMatch) => {
  //           if (err) {
  //             return done(err);
  //           }
  //           if (isMatch) {
  //             return done(null, user);
  //           } else {
  //             return done(null, false, { message: "Password is incorrect" });
  //           }
  //         });
  //       } else {
  //         return done(null, false, { message: "No user with that email address" });
  //       }
  //     })
  //     .catch(err => {
  //       console.error('Erreur lors de la récupération des utilisateurs : ', err);
  //       return done(err);
  //     });
  // };

  const authenticateUser = (email, password, done) => {
    const db = new Database();
    const query = `SELECT * FROM users WHERE email = $1`;
    db.query(query, [email])
      .then(results => {
        if (results.length > 0) {
          const user = results[0];
          
          if (user.is_logged_in) {
            return done(null, false, { message: "User already logged in from another device" });
          }
  
          compare(password, user.password, (err, isMatch) => {
            if (err) {
              return done(err);
            }
            if (isMatch) {
              // Update the user's status to logged in
              const updateQuery = `UPDATE users SET is_logged_in = TRUE WHERE users_id = $1`;
              db.query(updateQuery, [user.users_id])
                .then(() => {
                  return done(null, user);
                })
                .catch(err => {
                  console.error('Error updating user login status: ', err);
                  return done(err);
                });
            } else {
              return done(null, false, { message: "Password is incorrect" });
            }
          });
        } else {
          return done(null, false, { message: "No user with that email address" });
        }
      })
      .catch(err => {
        console.error('Error fetching users: ', err);
        return done(err);
      });
  };
  




  passport.use(new LocalStrategy({ usernameField: "email", passwordField: "password" }, authenticateUser));
  
  passport.serializeUser((user, done) => done(null, user.users_id));

  passport.deserializeUser((users_id, done) => {
    const db = new Database();
    db.query(`SELECT * FROM users WHERE users_id = $1`, [users_id])
      .then(results => {
        if (results.length > 0) {
          return done(null, results[0]);
        } else {
          return done(null, false, { message: "User not found" });
        }
      })
      .catch(err => {
        console.error('Erreur lors de la récupération de l\'utilisateur : ', err);
        return done(err);
      });
  });
}



export default initialize;

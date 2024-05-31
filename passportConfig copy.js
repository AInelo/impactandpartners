import { Strategy as LocalStrategy } from "passport-local";
import { compare } from "bcrypt";
import Database from "./db/connexionDb.js";



function initialize(passport) {
  console.log("Passport Initialized");

  const authenticateUser = (email, password, done) => {
    console.log(email, password);

    const db = new Database(); // Utilisez la classe Database
    const query = `SELECT * FROM users WHERE email = $1`;
    db.query(query, [email])
      .then(results => {
        console.log(results);

        if (results.length > 0) {
          const user = results[0];

          compare(password, user.password, (err, isMatch) => {
            if (err) {
              console.log(err);
            }
            if (isMatch) {
              return done(null, user);
            } else {
              //password is incorrect
              return done(null, false, { message: "Password is incorrect" });
            }
          });
        } else {
          // No user
          return done(null, false, {
            message: "No user with that email address"
          });
        }
      })
      .catch(err => {
        console.error('Erreur lors de la récupération des utilisateurs : ', err);
        return done(err);
      });
  };

  passport.use(
    new LocalStrategy(
      { usernameField: "email", passwordField: "password" },
      authenticateUser
    )
  );
  // Stores user details inside session. serializeUser determines which data of the user
  // object should be stored in the session. The result of the serializeUser method is attached
  // to the session as req.session.passport.user = {}. Here for instance, it would be (as we provide
  //   the user id as the key) req.session.passport.user = {id: 'xyz'}
  passport.serializeUser((user, done) => done(null, user.users_id));

  // In deserializeUser that key is matched with the in memory array / database or any data resource.
  // The fetched object is attached to the request object as req.user

  passport.deserializeUser((users_id, done) => {
    const db = new Database();
    db.query(`SELECT * FROM users WHERE users_id = $1`, [users_id])
      .then(results => {
        if (results.length > 0) {
          console.log(`ID is ${results[0].users_id} and firstname ${results[0].firstname}`);
          return done(null, results[0]); // Return user data
        } else {
          return done(null, false, { message: "User not found" }); // Return error if no user found
        }
      })
      .catch(err => {
        console.error('Erreur lors de la récupération de l\'utilisateur : ', err);
        return done(err); // Return error if database query fails
      });
  });
  
}









export default initialize;
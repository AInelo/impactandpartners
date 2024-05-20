import express from 'express';
import { urlencoded, json } from 'express';
import { hash } from 'bcrypt';
import passport from 'passport';
const { initialize, session: _session, authenticate } = passport;

import flash from 'express-flash';
import session from 'express-session';
import dotenv from 'dotenv';
dotenv.config();

import Database from './db/connexionDb.js';
import comptes from './routes/comptesRoutes.js';
import users from './routes/usersRoutes.js';
import path from 'path'; // Importez le module path
import { fileURLToPath } from 'url';

// Définir __dirname en utilisant import.meta.url
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const { join} = path; // Utilisez join directement

const app = express();

// Définir le répertoire contenant les fichiers statiques (fichiers HTML)
let initial_path = join(__dirname, 'frontend');

app.use(express.static(initial_path));

import initializePassport from './passportConfig.js';

initializePassport(passport);

// Middleware

// Parses details from a form
app.use(urlencoded({extended: true}));
app.use(json());

app.use(session({
        secret: "secret",
        resave: false,
        saveUninitialized: false
    })
);

// Function in passport which initialize passport
// app.use(initialize());
app.use(passport.initialize());
app.use(passport.session());
// Store our variable to be persited across the whole session. Works with app.use(sesion) above
app.use(_session());
app.use(flash());

// routes
app.use('/api/v1/comptes', comptes);
app.use('/', users );


app.get("/", (req, res) => {
    // res.render("index.html");
    res.sendFile(join(initial_path, 'index.html'));
});
  
app.get("/register", checkAuthenticated, (req, res) => {
    res.sendFile(join(initial_path, 'sign-up.html'));
});
  
app.get("/login", checkAuthenticated, (req, res) => {
    // flash sets a messages variable. passport sets the error message
    if (req.session.flash && req.session.flash.error) {
        console.log(req.session.flash.error);
    }
    // res.render("sign-in.html");
    res.sendFile(join(initial_path, 'sign-in.html'));

});


app.get("/sign-in.html", (req, res) => {
  // Renvoyer une page d'erreur personnalisée
  res.sendFile(join(initial_path, "error-404.html"));
});

app.get("/plancomptable/:name", checkNotAuthenticated, (req, res) => {
  console.log(req.isAuthenticated());
  firstNameLowarecase = req.params.name.toLowerCase();

  res.sendFile(join(initial_path, 'plancomptable.html'))
});

app.get("/etatfinanciers/:name", checkNotAuthenticated, (req, res) => {
  console.log(req.isAuthenticated());
  firstNameLowarecase = req.params.name.toLowerCase();

  res.sendFile(join(initial_path, 'etatfinancier.html'))
});



app.get("/dashboard/:name", checkNotAuthenticated, (req, res) => {
    console.log(req.isAuthenticated());

    const firstNameLowercase = req.params.name.toLowerCase();

    res.sendFile(join(initial_path, 'dashboard.html'))
}); 
  
  // app.get("/dashboard", checkNotAuthenticated, (req, res) => {
  //   console.log(req.isAuthenticated());
    
  //   res.sendFile(path.join(initial_path, 'plancomptable.html'));

  //   // res.render("plancomptable.html", { user: req.user.name });
  // });
  

app.get("/logout", (req, res) => {
    req.logout((err) => {
      if (err) {
        console.error("Erreur lors de la déconnexion :", err);
        res.status(500).send("Erreur lors de la déconnexion");
      } else {
        res.redirect("/");
        console.log("Déconnexion réussi")
      }
    });
    //res.render("index", { message: "You have logged out successfully" });
    // res.sendFile(path.join(initial_path, 'index.html'));
    res.sendFile(join(initial_path, 'sign-in.html'));
});
  



app.post("/register", async (req, res) => {
    const { firstname, lastname, email, password, password2 } = req.body;
    const db = new Database();
    let errors = [];
  
    console.log({
      firstname,
      lastname,
      email,
      password,
      password2
    });
  
    if (!firstname || !lastname || !email || !password || !password2) {
      errors.push({ message: "Please enter all fields" });
      console.log("remplissez tout !")
    }
  
    if (password.length < 6) {
      errors.push({ message: "Password must be a least 6 characters long" });
    }
  
    if (password !== password2) {
      errors.push({ message: "Passwords do not match" });
    }
  
    if (errors.length > 0) {
      // res.render("register", { errors, name, email, password, password2 });
      res.status(400).json({ errors });
    } else {
      hashedPassword = await hash(password, 10);
      console.log('The Password Hashed: ' + hashedPassword);

    
        const query = "SELECT * FROM users WHERE email = $1";

        try {
          const results = await db.query(query, [email]);

          console.log(results);

          if (results.length > 0) {
            console.error('Erreur E11000 : La clé est en double. L\'utilisateur existe déjà.');
            res.status(409).json({ error: 'L\'utilisateur avec cet email existe déjà.' });
          } else {
            const insertQuery = `INSERT INTO users (firstname, lastname, email, password)
                                VALUES ($1, $2, $3, $4)
                                RETURNING users_id, password`;

            const insertResult = await db.query(insertQuery, [firstname, lastname, email, hashedPassword]);

            console.log(insertResult);

            req.flash("success_msg", "You are now registered. Please log in");
            res.redirect("/login");
          }
        } catch (error) {
          console.error('Erreur lors de l\'exécution de la requête', error);
          // Gérez l'erreur en conséquence
          res.status(500).json({ error: 'Une erreur s\'est produite lors de l\'enregistrement de l\'utilisateur.' });
        }


    }
});

function UserFirstnameGet (req, res) {
  const firstNameLowercase = req.user.firstname.toLowerCase();
  res.redirect("/dashboard/" + firstNameLowercase);
}

app.post("/login",
  authenticate("local", {
    failureRedirect: "/login",
    failureFlash: true
  }),
  function(req, res) {
    const firstNameLowercase = req.user.firstname.toLowerCase();
    res.redirect("/dashboard/" + firstNameLowercase);
  }
);


function checkUserConnection(req) {
    return req.isAuthenticated(); // Utilisez isAuthenticated() pour vérifier si l'utilisateur est authentifié
}
  
    // Endpoint pour vérifier si l'utilisateur est connecté et récupérer ses informations
app.post("/user", (req, res) => {
  try {
    // Vérifiez si l'utilisateur est connecté
    if (checkUserConnection(req)) {
      // Créez un nouvel objet utilisateur en excluant le mot de passe
      const userWithoutPassword = { ...req.user };
      delete userWithoutPassword.password;

      // Renvoyez les informations de l'utilisateur sans le mot de passe
      res.status(200).json({ user: userWithoutPassword });
    } else {
      // Si l'utilisateur n'est pas connecté, renvoyez un message d'erreur
      res.status(401).json({ message: "Utilisateur non connecté" });
    }
  } catch (error) {
    console.error('Une erreur est survenue:', error);

    // Vérifiez le type d'erreur et envoyez une réponse appropriée
    // if (error instanceof ValidationError) {
    //   res.status(400).json({ message: "Erreur de validation des données", error: error.message });
    // } else if (error instanceof DatabaseError) {
    //   res.status(500).json({ message: "Erreur de connexion à la base de données", error: error.message });
    // } else {
    //   res.status(500).json({ message: "Erreur interne du serveur", error: error.message });
    // }
  }
});

function checkAuthenticated(req, res, next) {
  if (req.isAuthenticated()) {
    const firstNameLowercase = req.user.firstname.toLowerCase();
    return res.redirect("/dashboard/" + firstNameLowercase);
  }
  next();
}

function checkUserAbonnement (req, res, next) {

}

function checkNotAuthenticated(req, res, next) {
  if (req.isAuthenticated()) {
    return next();
  }
  res.redirect("/login");
}


  // function checkAuthenticated(req, res, next) {
  //   if (req.isAuthenticated()) {
  //     return res.redirect("/dashboard/:name");
  //   }
  //   next();
  // }
  
  // function checkNotAuthenticated(req, res, next) {
  //   if (req.isAuthenticated()) {
  //     return next();
  //   }
  //   res.redirect("/login");
  // }



/* ROUTES USING */


const port = process.env.PORT;
const port2 = 3001
const ipAddress = "0.0.0.0";



const start = async () => {
  const db = new Database();
  const query = 'SELECT NOW();'
  try {
    const result = await db.query(query);
    console.log("la base marche!");
    console.log(result);
    app.listen(port2,  () => {
      console.log(`The server is running on: http://localhost:${port2} `)
    })
  
  } catch (error) {
    console.log(error);
  }
};

start();
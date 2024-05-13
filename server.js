/* CONSTANT OF SERVEUR*/
const express = require('express');
const { pool } = require("./db/connexionDb");
const bcrypt = require("bcrypt");
const passport = require("passport");
const flash = require("express-flash");
const session = require("express-session");
require('dotenv').config();
const Database = require("./db/connexionDb")
const comptes = require('./routes/comptesRoutes');
const path = require("path");

const app = express();

// Définir le répertoire contenant les fichiers statiques (fichiers HTML)
let initial_path = path.join(__dirname, 'frontend');



app.use(express.static(initial_path));




const initializePassport = require("./passportConfig");

initializePassport(passport);

// Middleware

// Parses details from a form
app.use(express.urlencoded({extended: true}));
app.use(express.json());

app.use (
    session({
        secret: "secret",
        resave: false,
        saveUninitialized: false
    })
);

// Function in passport which initialize passport
app.use(passport.initialize());
// Store our variable to be persited across the whole session. Works with app.use(sesion) above
app.use(passport.session());
app.use(flash());

// routes
app.use('/api/v1/comptes', comptes);

app.get("/", (req, res) => {
    // res.render("index.html");
    res.sendFile(path.join(initial_path, 'index.html'));
  });
  
  app.get("/register", checkAuthenticated, (req, res) => {
    res.sendFile(path.join(initial_path, 'sign-up.html'));
  });
  
  app.get("/login", checkAuthenticated, (req, res) => {
    // flash sets a messages variable. passport sets the error message
    if (req.session.flash && req.session.flash.error) {
        console.log(req.session.flash.error);
    }
    // res.render("sign-in-cover.html");
    res.sendFile(path.join(initial_path, 'sign-in-cover.html'));

  });


  // Middleware pour bloquer l'accès à /sign-in-cover.html
app.get("/sign-in-cover.html", (req, res) => {
  // Renvoyer une page d'erreur personnalisée
  res.sendFile(path.join(initial_path, "error-404.html"));
});



  app.get("/dashboard/:name", checkNotAuthenticated, (req, res) => {
    console.log(req.isAuthenticated());

    const firstNameLowercase = req.params.name.toLowerCase();

    // const FistrNameLowercase = req.user.firstname.toLowerCase();
    res.sendFile(path.join(initial_path, 'dashboard.html'))
  }); 
  
  // app.get("/dashboard", checkNotAuthenticated, (req, res) => {
  //   console.log(req.isAuthenticated());
    
  //   res.sendFile(path.join(initial_path, 'dashboard.html'));

  //   // res.render("dashboard.html", { user: req.user.name });
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
    res.sendFile(path.join(initial_path, 'sign-in-cover.html'));
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
      hashedPassword = await bcrypt.hash(password, 10);
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

  // app.post("/login",
  //   passport.authenticate("local", {
  //     successRedirect: "/dashboard/:name",
  //     failureRedirect: "/login",
  //     failureFlash: true
  //   })
  // );

  app.post("/login",
  passport.authenticate("local", {
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
});

function checkAuthenticated(req, res, next) {
  if (req.isAuthenticated()) {
    const firstNameLowercase = req.user.firstname.toLowerCase();
    return res.redirect("/dashboard/" + firstNameLowercase);
  }
  next();
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
const ipAddress = "192.168.1.106";



const start = async () => {
  const db = new Database();
  const query = 'SELECT NOW();'
  try {
    const result = await db.query(query);
    console.log("la base marche!");
    console.log(result);
    app.listen(port2, () => {
      console.log(`The server is running on: http://localhost:${port2} `)
    })
  
  } catch (error) {
    console.log(error);
  }
};

start();
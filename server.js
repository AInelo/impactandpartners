import express from 'express';
import { urlencoded, json } from 'express';
import passport from 'passport';
import flash from 'express-flash';
import session from 'express-session';
import dotenv from 'dotenv';
import path from 'path';
import { fileURLToPath } from 'url';

// Charger les variables d'environnement
dotenv.config();

// Définir __dirname en utilisant import.meta.url
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Importer les modules de base de données et de routes
import Database from './db/connexionDb.js';
import comptes from './routes/comptesRoutes.js';
import users from './routes/usersRoutes.js';
import initializePassport from './passportConfig.js';

// Initialiser l'application Express
const app = express();

// Définir le répertoire contenant les fichiers statiques (fichiers HTML)
const initial_path = path.join(__dirname, 'frontend');
app.use(express.static(initial_path));

// Initialiser Passport
initializePassport(passport);

// Configurer les middlewares
app.use(urlencoded({ extended: true }));
app.use(json());
app.use(flash());
app.use(session({
  secret: process.env.SESSION_SECRET || 'secret',
  resave: false,
  saveUninitialized: false
}));

// Utiliser les middlewares de Passport
app.use(passport.initialize());
app.use(passport.session());

// Routes
app.use('/api/v1/comptes', comptes);
app.use('/', users);

app.get("/", (req, res) => {
  res.sendFile(path.join(initial_path, 'index.html'));
});

app.get("/register", checkAuthenticated, (req, res) => {
  res.sendFile(path.join(initial_path, 'sign-up.html'));
});

app.get("/login", checkAuthenticated, (req, res) => {
  if (req.session.flash && req.session.flash.error) {
    console.log(req.session.flash.error);
  }
  res.sendFile(path.join(initial_path, 'sign-in.html'));
});

app.get("/sign-in.html", (req, res) => {
  res.sendFile(path.join(initial_path, "error-404.html"));
});

app.get("/plancomptable/:name", checkNotAuthenticated, (req, res) => {
  console.log(req.isAuthenticated());
  const firstNameLowercase = req.params.name.toLowerCase();
  res.sendFile(path.join(initial_path, 'plancomptable.html'));
});

app.get("/etatfinanciers/:name", checkNotAuthenticated, (req, res) => {
  console.log(req.isAuthenticated());
  const firstNameLowercase = req.params.name.toLowerCase();
  res.sendFile(path.join(initial_path, 'etatfinancier.html'));
});

app.get("/dashboard/:name", checkNotAuthenticated, (req, res) => {
  console.log(req.isAuthenticated());
  const firstNameLowercase = req.params.name.toLowerCase();
  res.sendFile(path.join(initial_path, 'dashboard.html'));
});

app.get("/logout", (req, res) => {
  req.logout((err) => {
    if (err) {
      console.error("Erreur lors de la déconnexion :", err);
      res.status(500).send("Erreur lors de la déconnexion");
    } else {
      res.redirect("/");
      console.log("Déconnexion réussie");
    }
  });
  res.sendFile(path.join(initial_path, 'sign-in.html'));
});


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
  return req.isAuthenticated();
}

app.post("/user", (req, res) => {
  try {
    if (checkUserConnection(req)) {
      const userWithoutPassword = { ...req.user };
      delete userWithoutPassword.password;
      res.status(200).json({ user: userWithoutPassword });
    } else {
      res.status(401).json({ message: "Utilisateur non connecté" });
    }
  } catch (error) {
    console.error('Une erreur est survenue:', error);
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

const port = process.env.PORT || 3000;

const start = async () => {
  const db = new Database();
  const query = 'SELECT NOW();'
  try {
    const result = await db.query(query);
    console.log("la base marche!");
    console.log(result);
    app.listen(port, () => {
      console.log(`The server is running on: http://localhost:${port}`);
    });
  } catch (error) {
    console.log(error);
  }
};

start();

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
import payment from './routes/fedapayTransactionRoutes.js'
import typeclassemap from './routes/JsonFormatTypeClassRoute.js';
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
app.use('/api/comptemap', typeclassemap)
app.use('/api/v2/payment', payment)
app.use('/', users);


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

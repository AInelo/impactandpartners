import express from 'express';
import { urlencoded, json } from 'express';
import passport from 'passport';
import flash from 'express-flash';
import session from 'express-session';
import dotenv from 'dotenv';
import path from 'path';
import { fileURLToPath } from 'url';
import Database from './db/connexionDb.js'; // Importer votre classe Database
import comptes from './routes/comptesRoutes.js';
import users from './routes/usersRoutes.js';
import payment from './routes/fedapayTransactionRoutes.js';
import typeclassemap from './routes/JsonFormatTypeClassRoute.js';
import openaimodelcompta from './routes/OpenaiRoutes.js';
import initializePassport from './passportConfig.js';

// Charger les variables d'environnement
dotenv.config();

// Définir __dirname en utilisant import.meta.url
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

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

// Utiliser un Store de Session adapté pour la production (exemple avec connect-session-sequelize)
import { Sequelize } from 'sequelize';
import sessionStore from 'connect-session-sequelize';

const sequelize = new Sequelize({
  dialect: 'postgres',
  database: process.env.DB_NAME,
  username: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
});

const SequelizeStore = sessionStore(session);
const sessionConfig = {
  secret: process.env.SESSION_SECRET || 'secret',
  resave: false,
  saveUninitialized: false,
  store: new SequelizeStore({ db: sequelize }),
};

app.use(session(sessionConfig));

// Utiliser les middlewares de Passport
app.use(passport.initialize());
app.use(passport.session());

// Routes
app.use('/api/v1/comptes', comptes);
app.use('/api/comptemap', typeclassemap);
app.use('/api/v2/payment', payment);
app.use('/api/advice', openaimodelcompta);
app.use('/', users);

const port = process.env.PORT || 3000;

const start = async () => {
  const db = new Database(); // Initialiser votre instance de base de données
  const query = 'SELECT NOW();';
  try {
    await db.pool.connect(); // Se connecter à la base de données
    console.log('La base de données est connectée!');
    const result = await db.query(query);
    console.log(result);
    app.listen(port, () => {
      console.log(`Le serveur écoute sur : http://localhost:${port}`);
    });
  } catch (error) {
    console.error('Erreur lors de la connexion à la base de données :', error);
  }
};

start();

const express = require('express');
const session = require('express-session');
const passport = require("passport");
const flash = require('express-flash');
const RedisStore = require('connect-redis').default;
const { createClient } = require('redis');
const dotenv = require('dotenv');
const path = require('path');
const Database = require('./db/connexionDb.js');
const comptes = require('./routes/comptesRoutes.js');
const users = require('./routes/usersRoutes.js');
const payment = require('./routes/fedapayTransactionRoutes.js');
const typeclassemap = require('./routes/JsonFormatTypeClassRoute.js');
const openaimodelcompta = require('./routes/OpenaiRoutes.js');
const emailRoutes = require('./routes/Email/emailRoutes.js');
const initializePassport = require('./passportConfig.js');

// Charger les variables d'environnement
dotenv.config();

// Initialiser l'application Express
const app = express();

// Définir le répertoire contenant les fichiers statiques (fichiers HTML)
const initial_path = path.join(__dirname, 'frontend');
app.use(express.static(initial_path));

// Initialiser Passport
initializePassport(passport);

// Configurer les middlewares
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(flash());

// Configuration de la session avec Redis
const redisClient = createClient({
  url: `redis://${process.env.REDIS_HOST}:${process.env.REDIS_PORT}`,
  // password: process.env.REDIS_PASSWORD,
});

const sessionConfig = {
  store: new RedisStore({ client: redisClient }),
  secret: process.env.SESSION_SECRET || 'secret',
  resave: false,
  saveUninitialized: false,
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
app.use('/api/email', emailRoutes);
app.use('/', users);

const port = process.env.PORT || 3000;

const start = async () => {
  const db = new Database();
  const query = 'SELECT NOW();';
  try {
    // Connexion à Redis
    await redisClient.connect();
    console.log('Connecté à Redis !');

    // Connexion à la base de données
    await db.pool.connect();
    console.log('La base de données est connectée!');
    
    // Vérification de la connexion à la base de données
    const result = await db.query(query);
    console.log(result);

    // Démarrage du serveur Express
    app.listen(port, () => {
      console.log(`Le serveur écoute sur : http://localhost:${port}`);
    });
  } catch (error) {
    console.error('Erreur lors de la connexion :', error);
  }
};

start();

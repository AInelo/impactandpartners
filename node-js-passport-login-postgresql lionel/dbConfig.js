require("dotenv").config();

const { Pool } = require("pg");

const isProduction = process.env.NODE_ENV === "production";

const connectionString = `postgresql://${process.env.DB_USER}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_DATABASE}`;

const poolee = new Pool({
  user: 'your_username',
  host: 'your_database_host', // Adresse IP ou nom de domaine de votre base de données PostgreSQL
  database: 'your_database_name',
  password: 'your_password',
  port: 'your_database_port', // Port de votre base de données PostgreSQL
});

const pool = new Pool({
  user: 'lionel_impact', // Utilisateur de la base de données
  host: 'dpg-cnss2amct0pc73ejha0g-a.oregon-postgres.render.com', // Hôte de la base de données
  database: 'laraveldatabase_6pc1', // Nom de la base de données
  password: '7bVziQY78RppLqwMqXjGo0kLvLnveqJi', // Mot de passe de la base de données
  port: 5432, // Port de la base de données
});


const poole = new Pool({
  //connectionString: isProduction ? process.env.DATABASE_URL : connectionString,
  //connectionString: connectionString,
  connectionString: process.env.DATABASE_URL,
  ssl: false 
  //ssl: isProduction,
});

module.exports = { pool };

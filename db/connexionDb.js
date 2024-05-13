require("dotenv").config();

const { Pool } = require("pg");


const pool = new Pool({
  user: 'postgres', // Utilisateur de la base de données
  host: '127.0.0.1', // Hôte de la base de données
  database: 'comptaplan', // Nom de la base de données
  password: 'lionel', // Mot de passe de la base de données
  port: 5432, // Port de la base de données
});


const isProduction = process.env.NODE_ENV === "production";

const connectionString = `postgresql://${process.env.DB_USER}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_DATABASE}`;

const connectionStringz = `postgres://lionel_impact:7bVziQY78RppLqwMqXjGo0kLvLnveqJi@dpg-cnss2amct0pc73ejha0g-a/laraveldatabase_6pc1`

const poole = new Pool({
  connectionString: isProduction ? process.env.DATABASE_URL : connectionString,
  ssl: isProduction,
});



class Database {
  constructor() {
    this.pool = new Pool({
      user: 'postgres',
      host: 'localhost',
      database: 'postgres',
      password: '1234',
      port: 5432,
    });
  }


  async query(sql, params) {
    try {
      const result = await this.pool.query(sql, params);
      return result.rows;
    } catch (error) {
      console.error('Erreur lors de l\'exécution de la requête', error);
      throw error;
    }
  }
}

module.exports = Database;
const dotenv = require('dotenv');
const { Pool } = require('pg');

// Charger les variables d'environnement
dotenv.config();

class Database {
  constructor() {
    this.pool = new Pool({
      user: process.env.DB_USER,
      host: process.env.DB_HOST,
      database: process.env.DB_DATABASE,
      password: process.env.DB_PASSWORD,
      port: process.env.DB_PORT
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

// Remplacez l'importation ES6 par une require
const Database = require("../../../db/connexionDb");

class BaseModel {
  constructor() {
    this.db = new Database();
  }

  async query(sql, params) {
    try {
      return await this.db.query(sql, params);
    } catch (error) {
      console.error('Database query error: ', error);
      throw error;
    }
  }
}

// Exportez la classe en utilisant module.exports
module.exports = BaseModel;

// import Database from '../db/connexionDb.js';
import Database from "../../../db/connexionDb.js";

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

export default BaseModel;

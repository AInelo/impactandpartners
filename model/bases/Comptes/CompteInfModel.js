// Remplacez l'importation ES6 par une require
const BaseModel = require('./BaseModel');

class ComptesInfModel extends BaseModel {
  constructor() {
    super();
  }

  async getAll() {
    const query = `SELECT * FROM comptes_inf`;
    return await this.query(query);
  }

  async getById(id) {
    const query = `SELECT * FROM comptes_inf WHERE id = $1`;
    return await this.query(query, [id]);
  }

  async getBySousComptesId(sousComptesId) {
    const query = `SELECT * FROM comptes_inf WHERE sous_comptes_id = $1`;
    return await this.query(query, [sousComptesId]);
  }

  async getBySousComptesIdForAdvice(sousComptesId) {
    const query = `SELECT nbr, name FROM comptes_inf WHERE sous_comptes_id = $1`;
    return await this.query(query, [sousComptesId]);
  }
}

// Exportez la classe en utilisant module.exports
module.exports = ComptesInfModel;

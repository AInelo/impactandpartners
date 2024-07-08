// Remplacez l'importation ES6 par une require
const BaseModel = require('./BaseModel');

class ComptesModel extends BaseModel {
  constructor() {
    super();
  }

  async getAll() {
    const query = `SELECT * FROM comptes`;
    return await this.query(query);
  }

  async getById(id) {
    const query = `SELECT * FROM comptes WHERE id = $1`;
    return await this.query(query, [id]);
  }

  async getByClassesComptesId(classesComptesId) {
    const query = `SELECT * FROM comptes WHERE classes_comptes_id = $1`;
    return await this.query(query, [classesComptesId]);
  }

  async getByClassesComptesIdForAdvice(classesComptesId) {
    const query = `SELECT nbr, name FROM comptes WHERE classes_comptes_id = $1`;
    return await this.query(query, [classesComptesId]);
  }
}

// Exportez la classe en utilisant module.exports
module.exports = ComptesModel;

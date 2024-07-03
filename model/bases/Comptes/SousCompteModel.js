import BaseModel from './BaseModel.js';

class SousComptesModel extends BaseModel {
  constructor() {
    super();
  }

  async getAll() {
    const query = `SELECT * FROM sous_comptes`;
    return await this.query(query);
  }

  async getById(id) {
    const query = `SELECT * FROM sous_comptes WHERE id = $1`;
    return await this.query(query, [id]);
  }

  async getByComptesId(comptesId) {
    const query = `SELECT * FROM sous_comptes WHERE comptes_id = $1`;
    return await this.query(query, [comptesId]);
  }
  async getByComptesIdForAdvice(comptesId) {
    const query = `SELECT nbr, name FROM sous_comptes WHERE comptes_id = $1`;
    return await this.query(query, [comptesId]);
  }
}

export default SousComptesModel;

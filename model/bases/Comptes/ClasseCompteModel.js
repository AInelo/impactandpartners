import BaseModel from './BaseModel.js';

class ClassesComptesModel extends BaseModel {
  constructor() {
    super();
  }

  async getAll() {
    const query = `SELECT * FROM classes_comptes`;
    return await this.query(query);
  }

  async getById(id) {
    const query = `SELECT * FROM classes_comptes WHERE id = $1`;
    return await this.query(query, [id]);
  }

  async getByTypesClasseId(typesClasseId) {
    const query = `SELECT * FROM classes_comptes WHERE typesclasse_id = $1`;
    return await this.query(query, [typesClasseId]);
  }
  
  async getByTypesClasseIdForAdvice(typesClasseId) {
    const query = `SELECT nbr, name FROM classes_comptes WHERE typesclasse_id = $1`;
    return await this.query(query, [typesClasseId]);
  }
}

export default ClassesComptesModel;

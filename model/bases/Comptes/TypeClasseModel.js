import BaseModel from './BaseModel.js';

class TypesClasseModel extends BaseModel {
  constructor() {
    super();
  }

  async getAll() {
    const query = `SELECT * FROM typesclasse`;
    return await this.query(query);
  }

  async getById(id) {
    const query = `SELECT * FROM typesclasse WHERE id = $1`;
    return await this.query(query, [id]);
  }
}

export default TypesClasseModel;

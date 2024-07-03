import BaseModel from './BaseModel.js';
import ClassesComptesModel from './ClasseCompteModel.js';
import ComptesModel from './CompteModel.js';
import SousComptesModel from './SousCompteModel.js';
import ComptesInfModel from './CompteInfModel.js';

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


  static async buildHierarchyByTypeClasseId(typeClasseId) {
    try {
     
      console.log(typeClasseId)
      const typesClasseModel = new TypesClasseModel();
      const classesComptesModel = new ClassesComptesModel();
      const comptesModel = new ComptesModel();
      const sousComptesModel = new SousComptesModel();
      const comptesInfModel = new ComptesInfModel();

      const typeClasse = await typesClasseModel.getById(typeClasseId);

      if (!typeClasse.length) {
        return res.status(404).json({ message: `TypeClasse with ID ${typeClasseId} not found` });
      }

      const classesComptes = await classesComptesModel.getByTypesClasseId(typeClasseId);
      typeClasse[0].classesComptes = [];

      for (const classeCompte of classesComptes) {
        const comptes = await comptesModel.getByClassesComptesIdForAdvice(classeCompte.id);
        classeCompte.comptes = [];

        for (const compte of comptes) {
          const sousComptes = await sousComptesModel.getByComptesIdForAdvice(compte.id);
          compte.sousComptes = [];

          for (const sousCompte of sousComptes) {
            const comptesInf = await comptesInfModel.getBySousComptesIdForAdvice(sousCompte.id);
            sousCompte.comptesInf = comptesInf;
          }

          compte.sousComptes = sousComptes;
        }

        classeCompte.comptes = comptes;
      }

      typeClasse[0].classesComptes = classesComptes;

      // Remove circular references before returning
      const cleanedResult = TypesClasseModel.removeCircularReferences(typeClasse[0]);
      const jsonResult = JSON.stringify({ typeclasse: cleanedResult });
      return jsonResult;
    } catch (error) {
      console.error('Error building hierarchy:', error);
    
    }
  }

  static removeCircularReferences(obj) {
    const seen = new WeakSet();
    function replacer(key, value) {
      if (typeof value === 'object' && value !== null) {
        if (seen.has(value)) {
          return;
        }
        seen.add(value);
      }
      return value;
    }
    return JSON.parse(JSON.stringify(obj, replacer));
  }

}

export default TypesClasseModel;

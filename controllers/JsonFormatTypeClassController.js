// Remplacez les importations ES6 par des require
const TypesClasseModel = require('../model/bases/Comptes/TypeClasseModel');
const ClassesComptesModel = require('../model/bases/Comptes/ClasseCompteModel');
const ComptesModel = require('../model/bases/Comptes/CompteModel');
const SousComptesModel = require('../model/bases/Comptes/SousCompteModel');
const ComptesInfModel = require('../model/bases/Comptes/CompteInfModel');

class JsonFormatTypeClassController {
  static async buildHierarchyByTypeClasseId(req, res) {
    try {
      const { typeClasseId } = req.params;
      console.log(typeClasseId);
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
        const comptes = await comptesModel.getByClassesComptesId(classeCompte.id);
        classeCompte.comptes = [];

        for (const compte of comptes) {
          const sousComptes = await sousComptesModel.getByComptesId(compte.id);
          compte.sousComptes = [];

          for (const sousCompte of sousComptes) {
            const comptesInf = await comptesInfModel.getBySousComptesId(sousCompte.id);
            sousCompte.comptesInf = comptesInf;
          }

          compte.sousComptes = sousComptes;
        }

        classeCompte.comptes = comptes;
      }

      typeClasse[0].classesComptes = classesComptes;

      // Remove circular references before returning
      const cleanedResult = JsonFormatTypeClassController.removeCircularReferences(typeClasse[0]);

      return res.json({ typeclasse: cleanedResult });
    } catch (error) {
      console.error('Error building hierarchy:', error);
      return res.status(500).json({ message: 'An error occurred while building the hierarchy' });
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

// Exportez la classe en utilisant module.exports
module.exports = JsonFormatTypeClassController;

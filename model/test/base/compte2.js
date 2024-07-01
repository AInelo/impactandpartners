import TypesClasseModel from '../../bases/Comptes/TypeClasseModel.js';

import ClassesComptesModel from '../../bases/Comptes/ClasseCompteModel.js';

import ComptesModel from '../../bases/Comptes/CompteModel.js';

import SousComptesModel from '../../bases/Comptes/SousCompteModel.js';

import ComptesInfModel from '../../bases/Comptes/CompteInfModel.js';

// async function buildHierarchyByTypeClasseId(typeClasseId) {
//     const typesClasseModel = new TypesClasseModel();
//     const classesComptesModel = new ClassesComptesModel();
//     const comptesModel = new ComptesModel();
//     const sousComptesModel = new SousComptesModel();
//     const comptesInfModel = new ComptesInfModel();
  
//     const typeClasse = await typesClasseModel.getById(typeClasseId);
  
//     if (!typeClasse.length) {
//       throw new Error(`TypeClasse with ID ${typeClasseId} not found`);
//     }
  
//     const classesComptes = await classesComptesModel.getByTypesClasseId(typeClasseId);
//     typeClasse[0].classesComptes = [];
  
//     for (const classeCompte of classesComptes) {
//       const comptes = await comptesModel.getByClassesComptesId(classeCompte.id);
//       classeCompte.comptes = [];
  
//       for (const compte of comptes) {
//         const sousComptes = await sousComptesModel.getByComptesId(compte.id);
//         compte.sousComptes = [];
  
//         for (const sousCompte of sousComptes) {
//           const comptesInf = await comptesInfModel.getBySousComptesId(sousCompte.id);
//           sousCompte.comptesInf = comptesInf;
//         }
  
//         compte.sousComptes = sousComptes;
//       }
  
//       classeCompte.comptes = comptes;
//     }
  
//     typeClasse[0].classesComptes = classesComptes;
  
//     return { typeclasse: typeClasse[0] };
//   }
  

async function buildHierarchyByTypeClasseId(typeClasseId) {
    try {
      const typesClasseModel = new TypesClasseModel();
      const classesComptesModel = new ClassesComptesModel();
      const comptesModel = new ComptesModel();
      const sousComptesModel = new SousComptesModel();
      const comptesInfModel = new ComptesInfModel();
  
      const typeClasse = await typesClasseModel.getById(typeClasseId);
  
      if (!typeClasse.length) {
        throw new Error(`TypeClasse with ID ${typeClasseId} not found`);
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
      const cleanedResult = removeCircularReferences(typeClasse[0]);
      return { typeclasse: cleanedResult };
    } catch (error) {
      console.error('Error building hierarchy:', error);
      throw error;
    }
  }
  
  // Function to remove circular references from objects
  function removeCircularReferences(obj) {
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
  

//   buildHierarchyByTypeClasseId(1).then(result => {
//     console.log(JSON.stringify(result, null, 2));
//   }).catch(error => {
//     console.error('Error building hierarchy: ', error);
//   });

export default buildHierarchyByTypeClasseId;


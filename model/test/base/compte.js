// import TypesClasseModel from './TypesClasseModel.js';
import TypesClasseModel from '../../bases/Comptes/TypeClasseModel.js';
// import ClassesComptesModel from './ClassesComptesModel.js';
import ClassesComptesModel from '../../bases/Comptes/ClasseCompteModel.js';

// import ComptesModel from './ComptesModel.js';

import ComptesModel from '../../bases/Comptes/CompteModel.js';



// import SousComptesModel from './SousComptesModel.js';

import SousComptesModel from '../../bases/Comptes/SousCompteModel.js';


// import ComptesInfModel from './ComptesInfModel.js';

import ComptesInfModel from '../../bases/Comptes/CompteInfModel.js';

async function exampleUsage() {
  const typesClasseModel = new TypesClasseModel();
  const allTypesClasse = await typesClasseModel.getAll();
  console.log(allTypesClasse);

  const classesComptesModel = new ClassesComptesModel();
  const allClassesComptes = await classesComptesModel.getAll();
  console.log(allClassesComptes);

  const comptesModel = new ComptesModel();
  const allComptes = await comptesModel.getAll();
  console.log(allComptes);

  const sousComptesModel = new SousComptesModel();
  const allSousComptes = await sousComptesModel.getAll();
  console.log(allSousComptes);

  const comptesInfModel = new ComptesInfModel();
  const allComptesInf = await comptesInfModel.getAll();
  console.log(allComptesInf);
}

exampleUsage();

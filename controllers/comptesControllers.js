const asyncWrapper = require('../middleware/async.js');
const Comptes = require('../model/compte.js');

const getAllClassesComptesById = async (req, res) => {
  const id = req.params.id; // Assurez-vous que le paramètre est correctement récupéré
  try {
    const classes = await Comptes.allClassComptesById(id);
    res.status(200).json({ classes });
  } catch (error) {
    console.error("Erreur lors de la récupération des classes_comptes : ", error);
    res.status(500).json({ error: "Erreur lors de la récupération des classes_comptes" });
  }
}

const getAllComptesById = async (req,res) => {
  const comptes_id = req.params.id;

  try {
    const comptes = await Comptes.allComptesById(comptes_id);
    res.status(200).json({ comptes });
  } catch (error) {
    console.error("Erreur lors de la récupération des comptes : ", error);
    res.status(500).json({ error: "Erreur lors de la récupération des comptes" });
  }
}

const getAllSousComptesById = async (req, res) =>  {
  const sous_comptes_id = req.params.id;

  try {
    const sous_comptes = await Comptes.allSousComptesById(sous_comptes_id);
    res.status(200).json({sous_comptes})
  } catch (error) {
    console.error("Erreur lors de la récupération des sous_comptes : ", error);
    res.status(500).json({ error: "Erreur lors de la récupération des sous_comptes" });
  }
}

const getAllComptes_infById = async (req, res) => {
  const id = req.params.id;

  try {
    const comptes_inf = await Comptes.allComptes_inf(id);
    res.status(200).json({comptes_inf})
  } catch (error) {
    console.error("Erreur lors de la récupération des sous_comptes : ", error);
    res.status(500).json({ error: "Erreur lors de la récupération des sous_comptes" });
  }
}

const getDescription = async (req, res) => {
  const {id, table} = req.body;

  try {
    const description = await Comptes.description(id, table);
    res.status(200).json({ description });
  } catch (error) {
    res.status(500).json({ error: "Erreur lors de la récupération des sous_comptes" });
  }
}

const getElementByNameOrByNbr = async (req, res) => {
  const {detail, id} = req.body;
  console.log("Element searched is :" + detail + " The id of TypeClasse is : " + id);
  try {
    const element = await Comptes.AllElementByNameOrNbr(detail, id);
    res.status(200).json({element})
  } catch (error) {
    res.status(500).json({ error: "Erreur lors de la récupération des sous_comptes" });
  }
}

module.exports = {
  getAllClassesComptesById,
  getAllComptesById,
  getAllSousComptesById,
  getDescription,
  getElementByNameOrByNbr,
  getAllComptes_infById
};

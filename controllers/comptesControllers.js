// const Task = require('../models/Task')
// const pool = require("../db/connexionDb");
const asyncWrapper = require('../middleware/async')
// const { createCustomError } = require('../errors/custom-error')
const Comptes = require("../model/compte");

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

// const getAllClassesComptesById = async (req, res) => {
//   const classes_id = req.params.id;
//   const compte = new Comptes();
//   const classes = await compte.allClassComptesById(classes_id);

//   res.status(200).json({ classes })
// }

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
      const {detail} = req.body;
      console.log(detail);
    try {
      const element = await Comptes.AllElementByNameOrNbr(detail);
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
  getElementByNameOrByNbr
};

const express = require('express')
const router = express.Router()
const {
    getAllClassesComptesById,
    getAllComptesById,
    getAllSousComptesById,
    getDescription,
    getElementByNameOrByNbr,
    getAllComptes_infById
} = require('../controllers/comptesControllers');


router.route('/allclassesbyid/:id').get(getAllClassesComptesById);
router.route('/allcomptesbyid/:id').get(getAllComptesById);
router.route('/allsouscomptesbyid/:id').get(getAllSousComptesById);
router.route('/getdescription').post(getDescription);
router.route('/elementsearch').post(getElementByNameOrByNbr);
router.route('/allcomptesinfbyid/:id').get(getAllComptes_infById);
module.exports = router
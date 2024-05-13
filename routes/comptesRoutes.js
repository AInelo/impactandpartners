const express = require('express')
const router = express.Router()
const {
    getAllClassesComptesById,
    getAllComptesById,
    getAllSousComptesById,
    getDescription,
    getElementByNameOrByNbr
} = require('../controllers/comptesControllers');


router.route('/allclassesbyid/:id').get(getAllClassesComptesById);
router.route('/allcomptesbyid/:id').get(getAllComptesById);
router.route('/allsouscomptesbyid/:id').get(getAllSousComptesById);
router.route('/getdescription').post(getDescription);
router.route('/elementsearch').post(getElementByNameOrByNbr)
module.exports = router
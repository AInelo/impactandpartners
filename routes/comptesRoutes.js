import { Router } from 'express';
const router = Router()
// import  getAllClassesComptesById  from "../controllers/comptesControllers.js";
// import   getAllComptesById  from "../controllers/comptesControllers.js";
// import  getAllSousComptesById  from "../controllers/comptesControllers.js";

// import   getDescription  from "../controllers/comptesControllers.js";

// import  getElementByNameOrByNbr from "../controllers/comptesControllers.js";

// import   getAllComptes_infById  from "../controllers/comptesControllers.js";
import comptesControllers from "../controllers/comptesControllers.js";

const   {
    getAllClassesComptesById,
    getAllComptesById,
    getAllSousComptesById,
    getDescription,
    getElementByNameOrByNbr,
    getAllComptes_infById
} = comptesControllers




router.route('/allclassesbyid/:id').get(getAllClassesComptesById);
router.route('/allcomptesbyid/:id').get(getAllComptesById);
router.route('/allsouscomptesbyid/:id').get(getAllSousComptesById);
router.route('/getdescription').post(getDescription);
router.route('/elementsearch').post(getElementByNameOrByNbr);
router.route('/allcomptesinfbyid/:id').get(getAllComptes_infById);

export default router
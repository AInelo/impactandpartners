import { Router } from 'express';
const router = Router()

import UserController   from  '../controllers/userControllers.js';
// const {getAllInformationAboutAbonnement} = userControllers;


router.route('/abonnementinfos').post(UserController.getAllInformationAboutAbonnement);
router.route('/register').post(UserController.signUp);

export default router
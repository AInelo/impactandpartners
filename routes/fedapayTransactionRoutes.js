import { Router } from 'express';
const router = Router();
// const bcrypt = require('bcrypt');
import UserPayment from "../controllers/fedapayTransactionController.js";

// const { signUp, signIn } = require('../controllers/userController')
router.route('/getserveururl').get( UserPayment.getServerUrl)

router.route('/getCountry/:countryCode').get(UserPayment.getCountryByCountryCode);

router.route('/createtransaction').post(UserPayment.createFedaTransaction);

router.route('/generate-token').post(UserPayment.generateTokenTransaction);

router.route('/callback').get(UserPayment.callback)

export default router;
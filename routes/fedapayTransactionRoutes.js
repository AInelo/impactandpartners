const express = require('express');
const router = express.Router();
const UserPayment = require('../controllers/fedapayTransactionController.js');

router.get('/getserveururl', UserPayment.getServerUrl);

router.get('/getCountry/:countryCode', UserPayment.getCountryByCountryCode);

router.post('/createtransaction', UserPayment.createFedaTransaction);

router.post('/generate-token', UserPayment.generateTokenTransaction);

router.get('/callback', UserPayment.callback);

module.exports = router;

const express = require('express');
const router = express.Router();
const OpenaiTexteController = require('../controllers/OpenaiContoller.js');

router.post('/get-advice-gpt', OpenaiTexteController.generateAdviceForComptaAccountChoice);

module.exports = router;

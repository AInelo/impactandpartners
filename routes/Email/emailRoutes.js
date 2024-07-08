// routes/emailRoutes.js
const express = require('express');
const router = express.Router();
// const emailController = require('../controllers/emailController');
const emailController = require('../../controllers/Email/EmailController')
// const {sendEmail, sendStyledEmail } = require('../../controllers/Email/EmailController')


router.post('/send', emailController.sendEmail);
router.post('/send-html', emailController.sendStyledEmail);
module.exports = router;

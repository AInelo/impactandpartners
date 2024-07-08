// controllers/emailController.js
// const Email = require('../models/Email');
const Email = require('../../model/email/Email')
const fs = require('fs');
const path = require('path');

exports.sendEmail = async (req, res) => {
    const { to, subject, text } = req.body;

    try {
        await Email.send(to, subject, text);
        res.status(200).json({ message: 'Email envoyé avec succès' });
    } catch (error) {
        console.error('Erreur lors de l\'envoi de l\'email :', error);
        res.status(500).json({ message: 'Erreur lors de l\'envoi de l\'email' });
    }
};

exports.sendStyledEmail = async (req, res) => {
    const { to, subject } = req.body;

    // Lire le fichier HTML
    const htmlPath = path.join(__dirname, '../../template/WelcomeEmail.html');
    const htmlContent = fs.readFileSync(htmlPath, 'utf8');

    try {
        await Email.sendHtmlFormat(to, subject, '', htmlContent);
        res.status(200).json({ message: 'Email stylisé envoyé avec succès' });
    } catch (error) {
        console.error('Erreur lors de l\'envoi de l\'email :', error);
        res.status(500).json({ message: 'Erreur lors de l\'envoi de l\'email' });
    }
};
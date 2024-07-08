// models/Email.js
// const transporter = require('../config/mailer');
const transporter = require('../../config/mailer')
class Email {
    static async send(to, subject, text) {
        const mailOptions = {
            from: process.env.EMAIL_USER,
            to: to,
            subject: subject,
            text: text
        };

        return transporter.sendMail(mailOptions);
    }

    static async sendHtmlFormat(to, subject, text, html) {
        const mailOptions = {
            from: process.env.EMAIL_USER,
            to: to,
            subject: subject,
            text: text,
            html: html // Ajout du contenu HTML
        };

        return transporter.sendMail(mailOptions);
    }
}

module.exports = Email;

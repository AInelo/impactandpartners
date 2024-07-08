const dotenv = require("dotenv");
dotenv.config();
const axios = require('axios');
const bodyParser = require('body-parser');
const { FedaPay, Transaction } = require("fedapay");
const asyncWrapper = require('../middleware/async.js');
const User = require("../model/user.js");

FedaPay.setApiKey(process.env.FEDAPAY_API_KEY);
FedaPay.setEnvironment("live");

class UserPayment {
  static getCountryByCountryCode = asyncWrapper(async (req, res) => {
    const countries = [
      { "country": "BJ", "countryCode": 229 },
      { "country": "BF", "countryCode": 226 },
      { "country": "CV", "countryCode": 238 },
      { "country": "CI", "countryCode": 225 },
      { "country": "GM", "countryCode": 220 },
      { "country": "GH", "countryCode": 233 },
      { "country": "GN", "countryCode": 224 },
      { "country": "GW", "countryCode": 245 },
      { "country": "LR", "countryCode": 231 },
      { "country": "ML", "countryCode": 223 },
      { "country": "NE", "countryCode": 227 },
      { "country": "NG", "countryCode": 234 },
      { "country": "SN", "countryCode": 221 },
      { "country": "SL", "countryCode": 232 },
      { "country": "TG", "countryCode": 228 }
    ];
    const countryCode = parseInt(req.params.countryCode);
    const country = countries.find(c => c.countryCode === countryCode);

    if (country) {
      res.json({ country: country.country });
    } else {
      res.status(404).json({ error: "Country not found" });
    }
  });

  static getServerUrl(req, res) {
    try {
      const serverUrl = req.protocol + '://' + req.get('host');
      res.json({ serverUrl });
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: "Erreur lors de la récupération de l'URL du serveur" });
    }
  }
  
  static createFedaTransaction = asyncWrapper(async (req, res) => {
    console.log('le corps de la requête de création '+ req.body);

    const { firstname, lastname, number, email, amounttopaid, country, user_id, duree_abonnement } = req.body;

    try {
      const serverUrl = req.protocol + '://' + req.get('host');
      console.log("Voici l'url du serveur :" + serverUrl);
      console.log('le montant à payer est : ' + amounttopaid);

      const transaction = await Transaction.create({
        description: "Abonnement Impact And Partners",
        amount: amounttopaid,
        currency: {
          iso: "XOF",
        },
        callback_url: "",
        customer: {
          firstname: firstname,
          lastname: lastname,
          email: email,
          phone_number: {
            number: number,
            country: country,
          },
        },
      });

      transaction.callback_url = `${serverUrl}/api/v2/payment/callback?id=${transaction.id}&user_id=${user_id}&duree_abonnement=${duree_abonnement}`;
      await transaction.save();

      res.status(200).json(transaction);

    } catch (error) {
      console.error("Erreur lors de la création de la transaction : ", error);
      res.status(500).json({ error: "Erreur lors de la création de la transaction" });
    }
  });

  static generateTokenTransaction = async (req, res) => {
    try {
      const { transactionId } = req.body;

      const transaction = await Transaction.retrieve(transactionId);
      const token = await transaction.generateToken();

      res.json({ token: token.url });
    } catch (error) {
      console.error("Erreur lors de la génération du Token : ", error);
      res.status(500).json({ error: "Erreur lors de la génération du token" });
    }
  };

  static callback = async (req, res) => {
    let { id, user_id, date_paiement, duree_abonnement} = req.query;

    if (Array.isArray(id)) {
      id = id[0]; // Prendre la première valeur en cas de doublons
    }

    console.log('Callback reçu avec les paramètres :', req.query);

    try {
      const transaction = await Transaction.retrieve(id);
      console.log('Transaction récupérée :', transaction);

      if (transaction) {
        const status = transaction.status;
        console.log('Statut de la transaction :', status);

        if (status === 'approved') {
          console.log(`Just Before insertion : user_id : ${user_id}, date Paiement : ${date_paiement}, duree abaonnement  : ${duree_abonnement}`)
          await User.PaymentConfirmation(user_id, duree_abonnement);
          console.log('Confirmation de paiement réussie pour l\'utilisateur :', user_id);
          return res.redirect('/'); // ou res.json({ message: "Paiement réussi" });
        } else {
          console.log('Statut de la transaction non approuvé');
          return res.status(400).json({ error: "Paiement non approuvé" });
        }
      } else {
        console.log('Transaction non trouvée pour ID :', id);
        return res.status(404).json({ error: "Transaction non trouvée" });
      }
    } catch (error) {
      console.error("Erreur lors de la gestion du callback : ", error);
      return res.status(500).json({ error: "Erreur lors de la gestion du callback" });
    }
  };
}

module.exports = UserPayment;

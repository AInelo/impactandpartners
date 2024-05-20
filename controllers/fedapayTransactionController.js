// const express = require("express");
import bodyParser from 'body-parser';
import { FedaPay, Transaction } from "fedapay";
import asyncWrapper from '../middleware/async.js';
import { response } from 'express';

FedaPay.setApiKey("sk_live_CaZH-pW0S9lqhGldYsaQf0C2");

FedaPay.setEnvironment("live");

class UserPayment {

  static createFedaTransaction = asyncWrapper(async (req, res) => {
    try {
      console.log(req.body)
  
      const { firstname, lastname, email, number, amounttopaid } = req.body;
      console.log('le montant à payer est : ' + amounttopaid);
      const transaction = await Transaction.create({
        description: "Abonnement Impact And Partners",
        amount: amounttopaid,
        currency: {
          iso: "XOF",
        },
        callback_url: "https://chat.whatsapp.com/CZG0kokqkja8ZaDVtlPOQL",
        customer: {
          firstname: firstname,
          lastname: lastname,
          email: email,
          phone_number: {
            number: number,
            country: "BJ",
          },
        },
      });
  
      res.status(200).json(transaction);
  
      console.log(response);
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
    const { id, status } = req.query;
    // Traiter les données de retour de la transaction
    console.log('ID de la transaction :', id);
    console.log('Statut de la transaction :', status);
    // Rediriger l'utilisateur vers une page en fonction du statut de la transaction
    res.redirect('/');
  };


}


export default UserPayment ;
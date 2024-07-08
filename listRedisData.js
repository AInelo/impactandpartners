const { createClient } = require('redis');
const dotenv = require('dotenv');

// Charger les variables d'environnement
dotenv.config();

// Créer un client Redis
const client = createClient({
  host: process.env.REDIS_HOST,
  port: process.env.REDIS_PORT,
  password: process.env.REDIS_PASSWORD
});

// Connecter au client Redis
client.connect()
  .then(async () => {
    console.log('Connecté à Redis');

    // Récupérer toutes les clés
    const keys = await client.keys('*');

    if (keys.length === 0) {
      console.log('Aucune donnée trouvée dans Redis');
      client.quit();
      return;
    }

    // Récupérer et afficher les valeurs pour chaque clé
    for (const key of keys) {
      const value = await client.get(key);
      console.log(`Clé: ${key}, Valeur: ${value}`);
    }

    // Fermer la connexion Redis
    client.quit();
  })
  .catch(err => {
    console.error('Erreur de connexion à Redis:', err);
  });

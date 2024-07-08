// Remplacez les importations ES6 par des require
const OpenaiTexteModel = require("../model/utils/OpenAI/OpenaiModel");
const TypesClasseModel = require("../model/bases/Comptes/TypeClasseModel");

class OpenaiTexteController {
  static async generateAdviceForComptaAccountChoice(req, res) {
    const { prompt, typeClasseId } = req.body;
    console.log(prompt);
    if (!prompt) {
      return res.status(400).json({ error: 'Le prompt est requis' });
    }
    const allComptesMapGetById = await TypesClasseModel.buildHierarchyByTypeClasseId(typeClasseId);
    console.log(allComptesMapGetById);

    const preparedPrompt = `Tu es un expert en comptabilité, considère toi comme tel, tes conseil comptes pour nous. Ainsi pour l'évolution de ce travail, on a besoin que 
                            l'on trouve le comptes, le sous_comptes ou spécifiquement le comptes_inf correspondant à cette description avec une assez bonne précision : "${prompt}", pour t'aider 
                            voici le Map "${allComptesMapGetById}" représentant tout les typesclasses, classesComptes comptes souscomptes et comptesinf dans le SYSCOHADA révisé et du SYSBNL Afrique de l'ouest.
                            Donne nous le numéros, l'intitulé du compte et une proposition de numéros, d'intitulé de sous_comptes et comptes_inf qu'il faut choisir. Répond en texte claire Merci!
                            `;

    try {
      const generatedText = await OpenaiTexteModel.generateText(preparedPrompt);
      res.json({ generated_text: generatedText });
    } catch (error) {
      console.error('Erreur lors de la génération du texte :', error);
      res.status(500).json({ error: 'Erreur lors de la génération du texte' });
    }
  }
}

// Exportez la classe en utilisant module.exports
module.exports = OpenaiTexteController;

import OpenaiTexteModel from "../model/utils/OpenAI/OpenaiModel.js"
import TypesClasseModel from "../model/bases/Comptes/TypeClasseModel.js"

class OpenaiTexteController  {
   static async generateAdviceForComptaAccountChoice (req, res) {
        const { prompt, typeClasseId } = req.body;
        console.log(prompt)
        if (!prompt) {
            return res.status(400).json({ error: 'Le prompt est requis' });
        }
        const allComptesMapGetById = await TypesClasseModel.buildHierarchyByTypeClasseId(typeClasseId);
        console.log(allComptesMapGetById)

        const preparedPrompt = `Tu es un expert en comptabilité, pour l'évolution de ce travail, on a besoin que 
                                l'on trouve le comptes correspondant à cette description : ${prompt}, pous t'aider 
                                voici le Map "${allComptesMapGetById}" représentant tout les comptes dans le SYSCOHADA Afrque de l'ouest.
                                Donne nous le numéros, l'intitulé du compte qu'il faut choisir. Répond en texte claire Merci!
                                ` ;
        try {
            const generatedText = await OpenaiTexteModel.generateText(preparedPrompt);
            res.json({ generated_text: generatedText });
        } catch (error) {
            console.error('Erreur lors de la génération du texte :', error);
          
        }
    }





    // static async generateAdviceForComptaAccountChoice (req, res) {
    //     const { prompt, typeClasseId } = req.body;
    //     console.log(prompt);
    //     if (!prompt) {
    //         return res.status(400).json({ error: 'Le prompt est requis' });
    //     }
    //     const allComptesMapGetById = await TypesClasseModel.buildHierarchyByTypeClasseId(typeClasseId);
    //     console.log(allComptesMapGetById);
    
    //     // Convert the map to an array of chunks
    //     const chunkSize = 500;  // Define a reasonable chunk size
    //     const allComptesArray = Object.entries(allComptesMapGetById);
    //     const chunks = [];
    //     for (let i = 0; i < allComptesArray.length; i += chunkSize) {
    //         chunks.push(allComptesArray.slice(i, i + chunkSize));
    //     }
    
    //     let combinedResults = '';
    
    //     try {
    //         for (const chunk of chunks) {
    //             const chunkMap = Object.fromEntries(chunk);
    //             const chunkPrompt = `Tu es un expert en comptabilité, pour l'évolution de ce travail, on a besoin que l'on trouve le comptes correspondant à cette description : ${prompt}, pour t'aider voici le Map ${JSON.stringify(chunkMap)} représentant tout les comptes dans le SYSCOHADA Afrique de l'ouest. Donne nous le numéros, l'intitulé du compte qu'il faut choisir. Merci!`;
                
    //             const generatedText = await OpenaiTexteModel.generateText(chunkPrompt);
    //             combinedResults += generatedText + '\n';
    //         }
    //         res.json({ generated_text: combinedResults });
    //     } catch (error) {
    //         console.error('Erreur lors de la génération du texte :', error);
    //         res.status(500).json({ error: 'Erreur lors de la génération du texte' });
    //     }
    // }
    


    // static async generateAdviceForComptaAccountChoice (req, res) {
    //     const { prompt, typeClasseId } = req.body;
    //     console.log(prompt);
    //     if (!prompt) {
    //         return res.status(400).json({ error: 'Le prompt est requis' });
    //     }
    //     const allComptesMapGetById = await TypesClasseModel.buildHierarchyByTypeClasseId(typeClasseId);
    //     console.log(allComptesMapGetById);
    
    //     // Résumer les données
    //     const summarizedComptes = Object.entries(allComptesMapGetById).map(([key, value]) => ({
    //         id: key,
    //         description: value.description
    //     }));
    
    //     const preparedPrompt = `Tu es un expert en comptabilité, pour l'évolution de ce travail, on a besoin que l'on trouve le comptes correspondant à cette description : ${prompt}, pour t'aider voici un résumé des comptes dans le SYSCOHADA Afrique de l'ouest : ${JSON.stringify(summarizedComptes)}. Donne nous le numéros, l'intitulé du compte qu'il faut choisir. Merci!`;
    
    //     try {
    //         const generatedText = await OpenaiTexteModel.generateText(preparedPrompt);
    //         res.json({ generated_text: generatedText });
    //     } catch (error) {
    //         console.error('Erreur lors de la génération du texte :', error);
    //         res.status(500).json({ error: 'Erreur lors de la génération du texte' });
    //     }
    // }
    















    // static async generateAdviceForComptaAccountChoice (req, res) {
    //     const { prompt } = req.body;
    //     console.log(prompt)


    // }
};

export default OpenaiTexteController;
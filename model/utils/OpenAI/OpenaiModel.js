// models/OpenaiTexteModel.js
const axios = require('axios');
require('dotenv').config();
const { OpenAI } = require('openai');

const apiKey = process.env.OPENAI_API_KEY;

if (!apiKey) {
    console.error('API key not found. Please add your API key to the .env file.');
    process.exit(1);
}

const openai = new OpenAI({
    apiKey: apiKey, 
});

class OpenaiTexteModel {
    static async generateText(prompt) {
        try {
            const completion = await openai.chat.completions.create({
                messages: [
                    { role: 'system', content: 'You are a helpful assistant.' },
                    { role: 'user', content: prompt }
                ],
                model: 'gpt-3.5-turbo',
            });
            const generatedText = completion.choices[0].message.content; 
            return generatedText;
        } catch (error) {
            console.error('Error generating text:', error.response ? error.response.data : error.message);
        }
    }
}

module.exports = OpenaiTexteModel;

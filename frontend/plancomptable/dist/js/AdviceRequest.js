
document.getElementById('triggerRequest').addEventListener('click', async function(event) {
    event.preventDefault();
    const description = document.getElementById('requestDescription').value;
    const typeClasseId = 1; // Remplacez par l'ID approprié

    if (!description) {
        alert('La description est requise');
        return;
    }

    const data = {
        prompt: description,
        typeClasseId: typeClasseId
    };

    document.getElementById('showResultRequest').innerHTML = '<div class="loaderComptes"></div>';

    try {
        const response = await axios.post('http://localhost:4001/api/advice/get-advice-gpt', data);
        const generatedText = response.data.generated_text;
        // document.getElementById('showResultRequest').innerHTML = `<div>${generatedText}</div>`;
        // const generatedText = response.data.generated_text;
        typeWriterEffect(generatedText);
    } catch (error) {
        console.error('Erreur lors de la requête:', error);
        document.getElementById('showResultRequest').innerHTML = '<div>Erreur lors de la génération du texte.</div>';
    }
});


function typeWriterEffect(text) {
    const container = document.getElementById('showResultRequest');
    container.innerHTML = ''; // Clear previous content
    let i = 0;
    function type() {
      if (i < text.length) {
        container.innerHTML += text.charAt(i);
        i++;
        setTimeout(type, 15); // Adjust the speed here
      }
    }
    type();
  }
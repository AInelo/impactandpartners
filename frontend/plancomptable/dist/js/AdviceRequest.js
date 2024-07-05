
// ------------Verify if one Typeclasse is clicked -------------- //
document.addEventListener('DOMContentLoaded', () => {
    document.addEventListener('click', (e) => {
      e.preventDefault();
      if(e.target.classList.contains('CloseModaleBtnIAPage')) {
        const ModalElement = document.getElementById('offcanvasTopIAPage');
          ModalElement.classList.remove('show')
      }
    });
  });

function VerifyIfaTypeClasseIsClicked() {
    const elements = document.querySelectorAll('.TypeClasseBadge');
  
      // Parcourt les éléments pour vérifier s'ils ont la classe 'visible'
      for (let element of elements) {
        if (element.classList.contains('visible')) {
            if (element.id === 'nonLucratif') {
                return 2; // Renvoie 2 si l'élément a l'id 'nonLucratif'
            } else if (element.id === 'lucratif') {
                return 1; // Renvoie 1 si l'élément a l'id 'Lucratif'
            }
        }
    }
    
    return 0;
    
  }


document.getElementById('triggerRequest').addEventListener('click', async function(event) {
    event.preventDefault();
    const description = document.getElementById('requestDescription').value;
    const typeClasseId = VerifyIfaTypeClasseIsClicked(); // Remplacez par l'ID approprié

    if (typeClasseId==0) {
        const ModalElement = document.getElementById('offcanvasTopIAPage');
        ModalElement.classList.add('show')
      } else {
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
            const response = await axios.post('/api/advice/get-advice-gpt', data);
            const generatedText = response.data.generated_text;
            // document.getElementById('showResultRequest').innerHTML = `<div>${generatedText}</div>`;
            // const generatedText = response.data.generated_text;
            typeWriterEffect(generatedText);
        } catch (error) {
            console.error('Erreur lors de la requête:', error);
            document.getElementById('showResultRequest').innerHTML = '<div>Erreur lors de la génération du texte.</div>';
        }
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
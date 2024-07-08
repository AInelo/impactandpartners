


// ------------------SHOWING THE PASSWORD OR HIDDING --------------------
document.getElementById('password1Show').addEventListener('click', (e) => {
  e.preventDefault();
  var password1Input = document.getElementById('password1');

  password1Input.type === 'password' ? password1Input.type = 'text' : password1Input.type = 'password';

});
document.getElementById('password2Show').addEventListener('click', function (e) {
  e.preventDefault();
  var password2Input = document.getElementById('password2');

  password2Input.type === 'password' ? password2Input.type = 'text' : password2Input.type = 'password';

});
// ------------------SHOWING THE PASSWORD OR HIDDING --------------------




//----------------- CLOSING ALL MODAL----------------
// Sélectionnez tous les éléments avec la classe "modal-closer"
const modalClosers = document.querySelectorAll('.modal-closer');

modalClosers.forEach(modalCloser => {
    modalCloser.addEventListener('click', () => {
        const modals = document.querySelectorAll('.modal');
        modals.forEach(modal => {
            modal.style.display = 'none';
            modal.classList.remove('show')
        });
    });
});
//----------------- CLOSING ALL MODAL----------------







// ------------------UTIL FUNCTIONS-------------------- //

function WhichBoxChecked () {
  const radios = document.querySelectorAll('input[name="btn-radio-basic"]');
  let selectedValue = null;
  for (const radio of radios) {
    if (radio.checked) {
      selectedValue = radio.value;
      break;
    }
  }
  return selectedValue
}
function getCodeCountrySelectedValue(selectId) {
  const selectElement = document.getElementById(selectId);
  if (selectElement) {
    return selectElement.value;
  } else {
    console.error(`Element with ID ${selectId} not found.`);
    return null;
  }
}
function getCurrentDateISO() {
  const now = new Date();
  return now.toISOString();
}
document.addEventListener("DOMContentLoaded", () => {
  const todayISO = getCurrentDateISO();
  console.log(todayISO);  
        
});
// ------------------UTIL FUNCTIONS-------------------- //





const dataModal = {
    good: "Inscritption réussi",
    bad : {
        badConnectClientInfos : "Remplissez tout les champs svp !",
        badNoEmail: "Un compte est déjà associé au mail fourni",
        badPassword: "Revoyez si les mots de passe sont les mêmes",
        badNewAuth: "Vous êtes déjà connecté sur un autre appareil. Déconnectez-vous !"
    }
};


class ModalBoxShowing {
    static getModalMessage(key) {
        const keys = key.split('.');
        let message = dataModal;
        for (const k of keys) {
            if (message.hasOwnProperty(k)) {
                message = message[k];
            } else {
                console.log("Clé non trouvée dans dataModal");
                return null;
            }
        }
        return message;
    }

    static showDangerModal(key) {
        const modalDanger = document.getElementById('modal-danger');
        const modalDangerTextBox = document.getElementById('modal-danger-text');

        if (modalDanger && modalDangerTextBox) {
            modalDanger.classList.add("show");
            modalDanger.style.display = 'block';
            modalDangerTextBox.innerHTML = this.getModalMessage(key);
        } else {
            console.log('Les éléments du modal ne sont pas trouvés.');
        }
    }

    static showSuccessModal(key) {
        console.log('is enter here')
        const modalSuccess = document.getElementById('modal-success');
        const modalSuccessTextBox = document.getElementById('modal-success-text');

        if (modalSuccess && modalSuccessTextBox) {
            modalSuccess.classList.add("show");
            modalSuccess.style.display = 'block';
            modalSuccessTextBox.innerHTML = this.getModalMessage(key);
        } else {
            console.log('Les éléments du modal ne sont pas trouvés.');
        }
    }
}

//---------- Registration Process----------//
const registerButton = document.getElementById("registerButton");

registerButton.addEventListener("click", async function (e) {
    e.preventDefault();

    // Récupérer les valeurs des champs du formulaire
    const firstname = getValue("firstname");
    const lastname = getValue("lastname");
    const email = getValue("email");
    const country_code = getCodeCountrySelectedValue('country-code-select');
    const numero_tel = getValue('numero_tel');
    const user_category = WhichBoxChecked();
    const todayISODate = getCurrentDateISO();
    const password1 = getValue("password1");
    const password2 = getValue("password2");

    // Vérifier si les champs obligatoires sont remplis
    if (!email || !password1) {
        ModalBoxShowing.showDangerModal('bad.badConnectClientInfos');
        return;
    }

    // Préparer les données formelles pour l'inscription
    const formalData = {
        firstname,
        lastname,
        email,
        country_code,
        numero_tel,
        date_inscription: todayISODate,
        user_category,
        type_user: 'simple'
    };

    try {
        // Formaliser les données informelles
        const userFinalFormaliseResponse = await axios.post("/formalise", formalData);
        const userFinalFormalise = userFinalFormaliseResponse.data;

        // Inscrire l'utilisateur avec ses données formelles et mots de passe
        const registerResponse = await registerUser(userFinalFormalise, password1, password2);

        // Afficher le modal de succès après un court délai
        setTimeout(() => {
            ModalBoxShowing.showSuccessModal('good');
        }, 500);

        // Rediriger vers la page de login après un délai supplémentaire
        setTimeout(() => {
            window.location.href = "/login";
        }, 1000);

    } catch (error) {
        console.error("Erreur lors de l'inscription :", error);

        // Afficher le modal d'erreur approprié en fonction de l'erreur retournée par le serveur
        if (error.response) {
            if (error.response.status === 400) {
                ModalBoxShowing.showDangerModal('bad.badPassword');
            } else if (error.response.status === 409) {
                ModalBoxShowing.showDangerModal('bad.badNoEmail');
            } else if (error.response.status === 500) {
                ModalBoxShowing.showDangerModal('bad.badConnectClientInfos');
            }
        } else {
            ModalBoxShowing.showDangerModal('bad.badConnectClientInfos');
        }
    }
});

// Fonction utilitaire pour récupérer la valeur d'un champ
function getValue(id) {
    return document.getElementById(id).value;
}

// Fonction pour inscrire l'utilisateur avec les données formelles et les mots de passe
async function registerUser(userFinalFormalise, password1, password2) {
    try {
        const registerResponse = await axios.post("/register", {
            ...userFinalFormalise,
            password: password1,
            password2,
            duree_abonnement: 0
        });
        return registerResponse.data;
    } catch (error) {
        if (error.response) {
            throw error; // Ré-échanger l'erreur pour qu'elle soit gérée par l'appelant
        } else {
            throw new Error("Erreur lors de la création du compte :", error);
        }
    }
}









// const registerButton = document.getElementById("registerButton");

// registerButton.addEventListener("click", async function (e) {
//     e.preventDefault();

//     // Récupérer les valeurs des champs
//     const firstname = getValue("firstname");
//     const lastname = getValue("lastname");
//     const email = getValue("email");
//     const country_code = getCodeCountrySelectedValue('country-code-select');
//     const numero_tel = getValue('numero_tel');
//     const user_category = WhichBoxChecked();
//     const todayISODate = getCurrentDateISO();
//     const password1 = getValue("password1");
//     const password2 = getValue("password2");

//     // Vérifier si les champs obligatoires sont remplis
//     if (!email || !password1) {
//         alert("Veuillez saisir votre nom d'utilisateur et votre mot de passe.");
//         return;
//     }

//     // Préparer les données informelles
//     const InformalData = {
//         firstname,
//         lastname,
//         email,
//         country_code,
//         numero_tel,
//         date_inscription: todayISODate,
//         user_category,
//         type_user: 'simple'
//     };

//     try {
//         // Formaliser les données informelles
//         const UserFinalFormaliseResponse = await axios.post("/formalise", InformalData);
//         const UserFinalFormalise = UserFinalFormaliseResponse.data;

//         // Inscrire l'utilisateur
//         const registerResponse = await registerUser(UserFinalFormalise, password1, password2);
//         console.log("Inscription réussie :", registerResponse);
//         window.location.href = "/login";
//     } catch (error) {
//         console.error("Erreur lors de l'inscription :", error);
//         alert("Erreur lors de la création du compte, veuillez réessayer.");
//     }
// });

// // Fonction utilitaire pour récupérer la valeur d'un champ
// function getValue(id) {
//     return document.getElementById(id).value;
// }

// // Fonction pour inscrire l'utilisateur
// async function registerUser(UserFinalFormalise, password1, password2) {
//     try {
//         const registerResponse = await axios.post("/register", {
//             ...UserFinalFormalise,
//             password: password1,
//             password2,
//             duree_abonnement: 0
//         });
//         return registerResponse.data;
//     } catch (error) {
//         throw new Error("Erreur lors de la création du compte :", error);
//     }
// }




















// const registerButton = document.getElementById("registerButton");

// registerButton.addEventListener("click", async function (e) {

//     e.preventDefault();
//     const firstname = document.getElementById("firstname").value;
//     const lastname = document.getElementById("lastname").value;
//     const email = document.getElementById("email").value;
//     const country_code = getCodeCountrySelectedValue('country-code-select');
//     const numero_tel = document.getElementById('numero_tel').value;
//     const TodayDate = new Date()
//     const user_category = WhichBoxChecked();
//     const todayISODate = getCurrentDateISO();

//     const password1 = document.getElementById("password1").value;
//     const password2 = document.getElementById("password2").value;

//     // Vérifier si les champs email et password ne sont pas vides
//     if (!email || !password1) {
//     alert("Veuillez saisir votre nom d'utilisateur et votre mot de passe.");
//     return;
//     }
//     InformalData = {
            
//         firstname :firstname ,
//         lastname: lastname, 
//         email: email, 
//         country_code: country_code, 
//         numero_tel: numero_tel, 
//         date_inscription: todayISODate, 
//         user_category: user_category, 
//         type_user: 'simple'

//     }
//     try {
//     UserFinalFormaliseResponse = await axios.post("/formalise", InformalData)
//     UserFinalFormalise = UserFinalFormaliseResponse.data;

//     try {
//             // Envoyer les données informelles pour formaliser la réponse
//             const UserFinalFormaliseResponse = await axios.post("/formalise", InformalData);
//             const UserFinalFormalise = UserFinalFormaliseResponse.data;
//             try {
//                 // Envoyer les données d'inscription
//                 const registerResponse = await axios.post("/register", {
//                 firstname: UserFinalFormalise.firstname,
//                 lastname: UserFinalFormalise.lastname,
//                 email: UserFinalFormalise.email,
//                 password: password1, 
//                 password2: password2,
//                 country_code: UserFinalFormalise.country_code,
//                 numero_tel: UserFinalFormalise.numero_tel,
//                 date_inscription: UserFinalFormalise.date_inscription,
//                 date_paiement: UserFinalFormalise.date_paiement,
//                 amount_to_pay: UserFinalFormalise.amount_to_pay,
//                 user_category: UserFinalFormalise.user_category,
//                 type_user: UserFinalFormalise.type_user,
//                 duree_abonnement: 0
//                 });

//                 console.log("Inscription réussie :", registerResponse);
//                 window.location.href = "/login";
//             } catch (registerError) {
//                 console.error("Erreur lors de la création du compte :", registerError);
//                 alert("Erreur lors de la création du compte, veuillez réessayer.");
//             }
//             } catch (formaliseError) {
//             console.error("Erreur lors de la formalisation des données :", formaliseError);
//             alert("Erreur lors de la formalisation des données, veuillez réessayer.");
//             }

//     } catch (error) {
//     console.error("Erreur lors de la formalisation des données :", formaliseError);
//     alert("Erreur lors de la formalisation des données, veuillez réessayer.");
//     }
// });



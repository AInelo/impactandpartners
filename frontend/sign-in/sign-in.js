const dataModal = {
    good: "Vous êtes connecté !",
    bad : {
        badConnectClientInfos : "Fournissez votre e-mail et votre mot de passe",
        badNoEmail: "Le mail que vous avez fourni n'existe pas",
        badPassword: "Le mot de passe fourni est incorrect",
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

// ------------------SHOWING THE PASSWORD OR HIDDING --------------------
document.getElementById('passwordShow').addEventListener('click', function (e) {
    e.preventDefault();
    var passwordInput = document.getElementById('password');
    passwordInput.type === 'password' ? passwordInput.type = 'text' : passwordInput.type = 'password';
});


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



const loginButton = document.getElementById("loginButton");


loginButton.addEventListener('click', async function (e) {
  e.preventDefault();
  const email = document.getElementById('email').value;
  const password = document.getElementById('password').value;

  if (!email || !password) {
    ModalBoxShowing.showDangerModal('bad.badConnectClientInfos');
    return;
  }

    try {
    const response = await axios.post('/login', { email, password });
    if (response.status === 200) {
      setTimeout(() => {
        ModalBoxShowing.showSuccessModal('good');
      }, 500);
        setTimeout(() => {
        const firstNameLowercase = response.data.redirectUrl.split('/').pop();
        window.location.href = '/dashboard/' + firstNameLowercase;
      }, 1000);
    }
  } catch (error) {
    console.error('Erreur lors de l\'authentification :', error);
    if (error.response) {
      if (error.response.status === 401) {
        const errorMessage = error.response.data.message;
        if (errorMessage === 'User already logged in from another device') {
          ModalBoxShowing.showDangerModal('bad.badNewAuth');
        } else {
          ModalBoxShowing.showDangerModal('bad.' + (errorMessage === 'Password is incorrect' ? 'badPassword' : 'badNoEmail'));
        }
      } else {
        ModalBoxShowing.showDangerModal('bad.badNewAuth');
      }
    } else {
      ModalBoxShowing.showDangerModal('bad.badNewAuth');
    }
  }
  
});












// loginButton.addEventListener('click', async function (e) {
//   e.preventDefault();
//   const email = document.getElementById('email').value;
//   const password = document.getElementById('password').value;

//   if (!email || !password) {
//     ModalBoxShowing.showDangerModal('bad.badConnectClientInfos');
//     return;
//   }

//   try {
//     const response = await axios.post('/login', { email, password });
//     if (response.status === 200) {
//       ModalBoxShowing.showSuccessModal('good');
//       window.location.href = response.data.redirectUrl;
//     }
//   } catch (error) {
//     console.error('Erreur lors de l\'authentification :', error);
//     if (error.response) {
//       if (error.response.status === 401) {
//         ModalBoxShowing.showDangerModal('bad.' + (error.response.data.message === 'Password is incorrect' ? 'badPassword' : 'badNoEmail'));
//       } else {
//         ModalBoxShowing.showDangerModal('bad.badNewAuth');
//       }
//     } else {
//       ModalBoxShowing.showDangerModal('bad.badNewAuth');
//     }
//   }
// });




// loginButton.addEventListener("click", async function (e) {
//     e.preventDefault();
//     const email = document.getElementById("email").value;
//     const password = document.getElementById("password").value;
//     if (!email || !password) {
//         ModalBoxShowing.showDangerModal('bad.badConnectClientInfos');
//         return;
//     }
//     try {
//         const response = await axios.post("/login", { email, password });
//         if (response.status === 200) {
//             ModalBoxShowing.showSuccessModal('good');

//             const userResponse = await axios.get("/user");
//             if (userResponse.status === 200) {
//                 const user = userResponse.data.user;
//                 const firstNameLowercase = user.firstname.toLowerCase();
//                 console.log("Voici le prénom en minuscules : " + firstNameLowercase);
//                 window.location.href = "/dashboard/" + firstNameLowercase;
//             } else {
//                 console.error("Erreur lors de la récupération des informations de l'utilisateur :", userResponse.data.message);
//                 alert("Erreur lors de la récupération des informations de l'utilisateur. Veuillez réessayer.");
//             }
//         } else {
//             console.error("Erreur lors de l'authentification :", response.data.message);
//             ModalBoxShowing.showDangerModal('bad.badPassword');
//         }
//     } catch (error) {
//         console.error("Erreur lors de l'authentification :", error);
//         if (error.response && error.response.status === 401) {
//             ModalBoxShowing.showDangerModal('bad.badPassword');
//         } else {
//             console.log("here is at out !")
//             ModalBoxShowing.showDangerModal('bad.badNewAuth');
//         }
//     }
// });



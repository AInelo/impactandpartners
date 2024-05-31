//-------- Verify if the User has an abonnement ----------------//


// {
//   "user": {
//       "users_id": 3,
//       "firstname": "Lionel",
//       "lastname": "TOTON",
//       "email": "totonlion2002@gmail.com",
//       "country_code": 229,
//       "numero_tel": "96545055",
//       "date_inscription": "2024-05-20T22:00:00.000Z",
//       "date_paiement": null,
//       "status_paiement": false,
//       "duree_abonnement": 1095,
//       "amount_to_pay": 1000,
//       "user_category": "etudiant",
//       "type_user": "simple"
//   }
// }


async function DisplayPaymentBoxForUnPayment() {
  const PaymentBoxDOM = document.getElementById('BigPaymentBox')
  try {
    const response = await axios.post('/user')
    const user = response.data.user 
    if (user) {
      const {
        status_paiement: UserStatuAbonnement,
        amount_to_pay: UserAmounttopay,
        numero_tel : UserNumero,
        country_code : UserCountryCode,
        user_category : UserCategory
      } = user;

      result = ` 
      <div class="PaymentBox modal modal-blur fade" id="modal-report" tabindex="-1" role="dialog" aria-hidden="true">

      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Abonnez-vous</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            
            <label class="form-label">Pour continuer à utiliser ce plan comptable numérisé, vous devez souscrire à un offre d'abonnement</label>
            <div class="form-selectgroup-boxes row mb-3">
              <div class="col-lg-12">
                <label class="form-selectgroup-item">
                  <input type="radio" name="report-type" value="1" class="form-selectgroup-input" checked>
                  <span class="form-selectgroup-label d-flex align-items-center p-3">
                    <span class="me-3">
                      <span class="form-selectgroup-check"></span>
                    </span>
                    <span class="form-selectgroup-label-content">
                      <span class="form-selectgroup-title strong mb-1">Offre: ${UserCategory}</span>
                      <span class="d-block text-muted">Vous vous êtes inscrit en tant au status "${UserCategory}", le montant à payer est :${UserAmounttopay} FCFA</span>
                      <span class="d-block text-muted">Votre numero est : +${UserCountryCode} ${UserNumero}, confirmer le </span>

                    </span>
                  </span>
                </label>
              </div>
              
            </div>
            <div class="row">
              <div class="col-lg-4">
                <div class="mb-6">
                  <label class="form-label">Code</label>
                  <select class="form-select">
                    <option value="229">Bénin (+229)</option>
                    <option value="226">Burkina Faso (+226)</option>
                    <option value="257">Burundi (+257)</option>
                    <option value="238">Cap-Vert (+238)</option>
                    <option value="225">Côte d'Ivoire (+225)</option>
                    <option value="220">Gambie (+220)</option>
                    <option value="233">Ghana (+233)</option>
                    <option value="224">Guinée (+224)</option>
                    <option value="245">Guinée-Bissau (+245)</option>
                    <option value="231">Liberia (+231)</option>
                    <option value="223">Mali (+223)</option>
                    <option value="222">Mauritanie (+222)</option>
                    <option value="234">Niger (+234)</option>
                    <option value="234">Nigeria (+234)</option>
                    <option value="221">Sénégal (+221)</option>
                    <option value="232">Sierra Leone (+232)</option>
                    <option value="228">Togo (+228)</option>
                  </select>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="mb-3">
                  <label class="form-label">Confirmer Votre Numéro de paiement</label>
                  <input type="text" class="form-control">
                </div>
              </div>
            </div>
          </div>
          
          <div  class="modal-footer">
            <btn id="PaymentTriggerBtn" class="btn btn-primary ms-auto" data-bs-dismiss="modal">
              <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M5 12l5 5l10 -10"></path></svg>
              Payer
            </btn>
          </div>
        </div>
      </div>
    </div> `
    PaymentBoxDOM.innerHTML = result


    const btnPaymentClick = document.getElementById('PaymentTriggerBtn');
      if (btnPaymentClick) {
        btnPaymentClick.addEventListener('click', async (e) => {
          e.preventDefault();
          try {
            await TriggerPaymentMethod();
          } catch (error) {
            console.error('Error triggering payment method:', error);
          }
        });
      }


    } else {
      console.log('Non conected User right now !')
    }

  } catch (error) {
    console.error('Error fetching user dara', error)
  }
}

async function VerifyAbonnement() {
  try {
    const response = await axios.post('/user');
    const user = response.data.user;

    if (user) {
      const { status_paiement: UserStatuAbonnement } = user;
      return UserStatuAbonnement === true;
    } else {
      console.log('No User Connected');
      return false;
    }
  } catch (error) {
    console.error('Error fetching user data:', error);
    return false;
  }
}

const ShowPayementBox = () => {
  const PaymentBox = document.getElementById('modal-report');
  if (PaymentBox) {
    PaymentBox.style.display = 'block';
    PaymentBox.classList.add('show');
  } else {
    console.log('Element with id "modal-report" not found.');
  }
}

async function mainByAbonnementStatus() {
  try {
    console.log("Starting main function...");
    const isAbonnementValid = await VerifyAbonnement();
    console.log("isAbonnementValid = :", isAbonnementValid);
    if (isAbonnementValid === true) {
      console.log('Yes he has an abonnement!');
   
    } else {
      console.log("No he doesn't have an abonnement!");
     await DisplayPaymentBoxForUnPayment()
      ShowPayementBox(); 
    }
    console.log('Abonne has an abonnement: ' + isAbonnementValid); 
  } catch (error) {
    console.error('An error occurred:', error);
  }
}

mainByAbonnementStatus();



// ------------------To Displays all classe by typeclasse-------------- //
const getClassesAndDisplayByTypesClasse = async (id, classesDomm) => {
  const classesDOM = document.getElementById(`${classesDomm}`);
  try {
    const {
      data: { classes },
    } = await axios.get(`/api/v1/comptes/allclassesbyid/${id}`);
    if (!classes || classes.length < 1) {
      return;
    } 
    const allClasses = classes
      .map((classe) => {
        const { nbr, name, id } = classe;
        return `<div class="col-6">
            <div  style="cursor: pointer!important;" class="row g-3 align-items-center" >
              <a class="col-auto">
                <span class="avatar" style="background-image: url(./assets/images/accounting_classes.png)">
                  <span class="badge bg-green"></span></span>
              </a>
              <div class="col text-truncate">
                <a  class="text-reset d-block text-truncate">${name}</a>
                <div class="wrapperComptes">
                  <div class="text-muted text-truncate mt-n1 classes-name">${nbr}</div> 
                  <button id="${id}" class="classes_comptes button-80" role="button">Voir comptes</button>
                </div>
                <div id="${id}" name="classes_comptes" class="descriptionClass">Description</div>
              </div>
            </div>
          </div>`;
      })
      .join("");
    classesDOM.innerHTML = allClasses;
  } catch (error) {
    console.error("l'erreur", error);
    classesDOM.innerHTML =
      '<h5 class="empty-list">There was an error, please try later....</h5>';
  }
};


//---------------------------To Display all Classes of One TypesClasse---------------------------------//
const btnNonLucratif = document.getElementById("btnNonLucratif");
const btnLucratif = document.getElementById("btnLucratif");
const lucratifElement = document.getElementById("lucratif");
const nonLucratifElement = document.getElementById("nonLucratif");
const classLucratif = document.getElementById("classLucratif");
const classeNonLucratif = document.getElementById("classNonLucratif");
const classDomLucratif = document.getElementById("classesDomLucratif");
const classDomNonLucratif = document.getElementById("classesDomNonLucratif");

let choiceBtn = [btnLucratif, btnNonLucratif];
let choiceElement = [lucratifElement, nonLucratifElement];
let choiceClasse = [classLucratif, classeNonLucratif];
let choiceClassesDom = ["classesDomLucratif", "classesDomNonLucratif"];
let index = [1, 2];

for (let i = 0; i < index.length; i++) {
  getClassesAndDisplayByTypesClasse(index[i], choiceClassesDom[i]);
  
}

for (let i = 0; i < choiceBtn.length; i++) {
  choiceBtn[i].addEventListener("click", () => {
    console.log(choiceClassesDom[i]);
    // Ajoutez la classe "visible" à l'élément correspondant
    choiceElement[i].classList.add("visible");
    choiceClasse[i].classList.add("visible");

    // Supprimez la classe "visible" de l'autre élément
    for (let j = 0; j < choiceElement.length; j++) {
      if (j !== i) {
        choiceElement[j].classList.remove("visible");
        choiceClasse[j].classList.remove("visible");
      }
    }
  });
}

// ------------Verify if one Typeclasse is clicked -------------- //
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






// ------------------   Logout API Call   -----------------------------------//
// const logoutButton = document.querySelector(".logoutButton");
//   // document.addEventListener("DOMContentLoaded", function () {
//     logoutButton.addEventListener("click", async function (e) {
//     e.preventDefault();
//     try {
//         // Effectuer la requête Axios
//         const response = await axios.get("/logout");
//         // Gérer la réponse en cas de succès
//         console.log("Déconnexion réussie :", response);
//         // Rediriger l'utilisateur vers la page d'accueil ou toute autre page appropriée
//         window.location.href = "/"; // Rediriger vers la page d'accueil
//     } catch (error) {
//         // Gérer l'erreur en cas d'échec de la déconnexion
//         console.error("Erreur lors de la déconnexion :", error);
//         // Afficher un message d'erreur à l'utilisateur si nécessaire
//         alert("Erreur lors de la déconnexion. Veuillez réessayer.");
//     }
// });

// ------------------   Get USER API -----------------------------------//

document.addEventListener("DOMContentLoaded", async () => {
  const NameConainer = document.getElementById("NameConainer");

  try {
    const userResponse = await axios.post("/user");

    const user = userResponse.data.user;

    if (userResponse.data.user) {
      const user = userResponse.data.user;

      // Récupérer le nom de famille en minuscules depuis les informations de l'utilisateur
      const firstNameLowercase = user.firstname.toLowerCase();
      const UserFirstName = user.firstname;
      const UserLastname = user.lastname;
      console.log("Bienvenue: " + UserLastname + UserFirstName);

      ButtonNameContent = ` <div>${UserLastname} ${UserFirstName}</div>
                    <div class="connecte-container">
                    <div class="mt-1 small text-muted">Connecté</div>
                    <span class="badger"></span>
            </div>`;

      NameConainer.innerHTML = ButtonNameContent;
    } else {
      console.log("L'utilisateur est vide.");
    }
  } catch (error) {
    console.error(
      "Erreur lors de la récupération des informations de l'utilisateur :",
      userResponse.data.message
    );
    alert(
      "Erreur lors de la récupération des informations de l'utilisateur. Veuillez réessayer."
    );
  }
});


// ------------------   Get a description of a element -----------------------------------//

const getDescription = async (id, table) => {
  const descriptionDOM = document.getElementById("descriptionDOM");

  try {
    const {
      data: { description },
    } = await axios.post("/api/v1/comptes/getdescription", {
      id: id,
      table: table,
    });
    const descriptions = description
      .map((descrip) => {
        const { name, description } = descrip;

        return `<h1><u>Détail sur</u>: ${name}</h1>
            <p>${description}</p>
      `;
      })
      .join("");

    descriptionDOM.innerHTML = descriptions;
  } catch (error) {
    console.error("l'erreur", error);
    descriptionDOM.innerHTML =
      '<h3 class="empty-list">There was an error, please try later....</h3>';
  }
};

// -------------------- Displaying all Comptes_inf ------------------------------------//

const getAllComptes_infById = async (id) => {
  const ComptesInfDOM = document.getElementById('showComptes_inf');
  console.log(id);

  try {
    const {
      data : {comptes_inf},
      } = await axios.get(`/api/v1/comptes/allcomptesinfbyid/${id}`)

    if (!comptes_inf || comptes_inf.length < 1) {
      ComptesInfDOM.innerHTML = '<h3 class="empty-list">il n\'y a plus de suite , sélectionné un autre sous_comptes, merci !</h3>';
    }

    const allComptesInf = comptes_inf
      .map((CompteInf) => {
        const { id, name, nbr } = CompteInf;

        return ` 
          <div class="row">
            <div id=${nbr} class="col-auto">
              <span class="avatar" style="background-image: url(./assets/images/accounting.png)"></span>
            </div>
            <div class="col">
          
            <div class="badge bg-primary"></div>
          
                <strong>${nbr} ||</strong> ${name}
              </div>
              <div class="wrapperComptes">
                <div id="${id}" name="comptes_inf" class="descriptionClass">Description</div>
              </div>
              
            </div>

          </div>`;
      })
      .join("");

      
      ComptesInfDOM.innerHTML = allComptesInf;

  } catch (error) {
    console.error("l'erreur", error);
    ComptesInfDOM.innerHTML =
      '<h3 class="empty-list">There was an error, please try later....</h3>';
  }

}



// ------------------   Displaying all sous comptes -----------------------------------//

const getSousComptesAndDisplayByComptes = async (id) => {
  const sousComptesDOM = document.getElementById("showSousComptes");
  const nameOfAllComptesDOM = document.getElementById("nameOfAllComptesDOM");
  const loaderDOMComptes = document.querySelector(".loaderComptes");
  console.log(id);

  try {
    const {
      data: { sous_comptes },
    } = await axios.get(`/api/v1/comptes/allsouscomptesbyid/${id}`);
    if (sous_comptes.length < 1) {
      sousComptesDOM.innerHTML =
        '<h3 class="empty-list">il n\'y a pas de sous_comptes sélectionné un autre comptes, merci !</h3>';
      // return
    }
    const allSousComptes = sous_comptes
      .map((sous_compte) => {
        const { id, name, nbr } = sous_compte;

        return ` 
          <div class="row">
            <div id=${nbr} class="col-auto">
              <span class="avatar" style="background-image: url(./assets/images/accounting.png)"></span>
            </div>
            <div class="col">
          
            <div class="badge bg-primary"></div>
          
                <strong>${nbr} ||</strong> ${name}
              </div>
              <div class="wrapperComptes">
                <div id="${id}" name="sous_comptes" class="descriptionClass">Description</div>
                <button id="${id}" class="sous_comptes button-80" role="button">Voir plus</button>
              </div>
              
            </div>

            
          </div>`;
      })
      .join("");

    // const firstClassComptesName = comptes[0].class_comptes_name;

    sousComptesDOM.innerHTML = allSousComptes;
    // nameOfAllComptesDOM.innerText = firstClassComptesName ;
  } catch (error) {
    console.error("l'erreur", error);
    sousComptesDOM.innerHTML =
      '<h3 class="empty-list">There was an error, please try later....</h3>';
  }
};

const getComptesAndDisplayByClasse = async (id) => {
  const ComptesDOM = document.getElementById("showComptes");
  const nameOfAllComptesDOM = document.getElementById("nameOfAllComptesDOM");
  const loaderDOMComptes = document.querySelector(".loaderComptes");
  console.log(id);


  try {
    const {
      data: { comptes },
    } = await axios.get(`/api/v1/comptes/allcomptesbyid/${id}`);
    if ( !comptes || comptes.length < 1) {
      return;
    }
    const allComptes = comptes
      .map((compte) => {
        const { cc_name, id, name, nbr } = compte;

        return ` 
          <div class="row">
            <div id=${nbr} class="col-auto">
              <span class="avatar" style="background-image: url(./assets/images/accounting.png)"></span>
            </div>
            <div class="col">
           
            <div class="badge bg-primary"></div>
          
                <strong>${nbr} ||</strong> ${name}
              </div>
              <div class="wrapperComptes">
                <div id="${id}" name="comptes" class="descriptionClass">Description</div>
                <button id="${id}" class="comptes button-80" role="button">Voir sous comptes</button>
              </div>
              
            </div>

            
          </div>`;
      })
      .join("");

    const firstClassComptesName = comptes[0].cc_name;

    ComptesDOM.innerHTML = allComptes;
    nameOfAllComptesDOM.innerText = firstClassComptesName;
  } catch (error) {
    console.error("l'erreur", error);
    comptesDOM.innerHTML =
      '<h3 class="empty-list">There was an error, please try later....</h3>';
  }
};


// ------------------   Get And Display all comptes of Searching input -----------------------------------//

const getElementBySearching = async (detaill, id) => {
  const SearchingResultDOM = document.getElementById('showSousComptes');
  console.log("Element searched is (in function) : " + detaill + ' -- ' + id);
  try {
    const requestBody = {
      "detail": detaill,
      "id": id
    };
    const { data: { element } } = await axios.post('/api/v1/comptes/elementsearch', requestBody);

    if (!element || element.length < 1) {
      SearchingResultDOM.innerHTML = '<h5 class="empty-list">No elements found.</h5>';
      return;
    }

    const allElement = element
      .map((ele) => {
        const { id, classes_comptes_id, name, nbr, table_name, description } = ele;
          // if(table_name == "")

        return `<div class="row">
        <div id=${nbr} class="col-auto">
          <span class="avatar" style="background-image: url(./assets/images/accounting.png)"></span>
        </div>
        <div class="col">
      
        <div class="badge bg-primary"></div>
      
            <strong>${nbr} ||</strong> ${name}
          </div>
          <div class="wrapperComptes">
            <div id="${id}" name="${table_name}" class="descriptionClass">Description</div>
            <button id="${id}" class="${table_name} button-80" role="button">Voir plus</button>
          </div>
          
        </div>
        
      </div>`;
      })
      .join("");

    SearchingResultDOM.innerHTML = allElement;

   
  } catch (error) {
    SearchingResultDOM.innerHTML = '<h5 class="empty-list">There was an error, please try later....</h5>';
    console.error(error)
  }
};




const  TriggerPaymentMethod = async () => {
console.log('Fonction Payment trigged')
  try {
    const response = await axios.post('/user')
    const user = response.data.user 
    if (user) {
      const {
        users_id : UserID,
        firstname: UserFirstName,
        lastname: UserLastname,
        email: UserEmail,
        status_paiement: UserStatuAbonnement,
        date_inscription : UserDateInscription,
        amount_to_pay: UserAmounttopay,
        numero_tel : UserNumero,
        country_code : UserCountryCode,
        user_category : UserCategory,
        type_user : UserType
      } = user;


      const UserdatePaiementDate = new Date

      try {
        const responseCountry = await axios.get(`/api/v2/payment/getCountry/${UserCountryCode}`)
        const country = responseCountry.data.country; 
        const ObjectFormaliseUser = {
          firstname :UserFirstName,
          lastname: UserLastname, 
          email: UserEmail, 
          country_code: UserCountryCode, 
          numero_tel: UserNumero, 
          date_inscription: UserdatePaiementDate, 
          user_category: UserCategory, 
          type_user: UserType

        } 
        const formaliseForm = await axios.post('/formalise', ObjectFormaliseUser);
        const UserdatePaiementDateFormatted = formaliseForm.data.date_inscription
        const UserDureeAbonnementFormalise = formaliseForm.data.duree_abonnement
        // data.duree_abonnement
        // 
        // const serverUrl_ = await axios.get('/api/v2/payment/getserveururl')
        // const URLBegined = serverUrl_.data.serverUrl
        // const remainedURL = `/api/v2/payment/callback?id=98082175&status=successful&user_id=1&date_paiement=""&duree_abonnement=""`
        // const URL = URLBegined + remainedURL

        try {
        
          UserPaimentObject = {
              firstname: UserFirstName,
              lastname: UserLastname,
              number: UserNumero,
              email: UserEmail,
              amounttopaid: UserAmounttopay,
              country: country,
              user_id : UserID,
              date_paiement: UserdatePaiementDateFormatted, 
              duree_abonnement: UserDureeAbonnementFormalise
            } 
          transactionResponse = await axios.post('/api/v2/payment/createtransaction', UserPaimentObject);
          const transactionId = transactionResponse.data.id;
          const transactionStatus = transactionResponse.data.status
           
          try {
            const tokenResponse = await axios.post('/api/v2/payment/generate-token', {transactionId})

            window.location.href = tokenResponse.data.token;
          } catch (error) {
            console.error(error)
          }
  
        } catch (error) {
          console.error(error)
        }

      } catch (error) {
        console.error(error)
      }

    } else {
      console.log('No User connected rigth now...')
    }
  
  } catch (error) {
    console.error('The error is about : ' + error)
  }

}






//---------------------------To Display all Comptes by ID---------------------------------
document.addEventListener("DOMContentLoaded", () => {
  document.addEventListener("click", async (e) => {
    if (e.target.classList.contains("classes_comptes")) {
      e.preventDefault();
      const compteClickedId = e.target.id;
      await getComptesAndDisplayByClasse(compteClickedId);
      const boxClasseShowing = document.getElementById("BoxClasseShowing");
      boxClasseShowing.scrollIntoView({ behavior: "smooth" });
    }
  });
});


//---------------------------To Display all Sous_comptes by id---------------------------------

document.addEventListener("DOMContentLoaded", () => {
  document.addEventListener("click", async (e) => {
    if (e.target.classList.contains("comptes")) {
      e.preventDefault();
      const compteClickedId = e.target.id;
      await getSousComptesAndDisplayByComptes(compteClickedId);
      const boxSousComptesShowing = document.getElementById("BoxSousComptesShowing");
      boxSousComptesShowing.scrollIntoView({ behavior: "smooth" });
    }
  });
});




//---------------------------Display Comptes by ID---------------------------------//

document.addEventListener("DOMContentLoaded", () => {
  document.addEventListener("click", async (e) => {
    if (e.target.classList.contains("sous_comptes")) {
      e.preventDefault();
      const Sous_comptesClicked = e.target.id;
      await getAllComptes_infById(Sous_comptesClicked);
      const BoxComptesInfShowing = document.getElementById("showComptes_inf");
      BoxComptesInfShowing.scrollIntoView({ behavior: 'smooth' })
    }
  })
})



//---------------------------Trigger to get Description---------------------------------//

document.addEventListener("DOMContentLoaded", () => {
  document.addEventListener("click", async (e) => {
    if (e.target.classList.contains("descriptionClass")) {
      e.preventDefault();
      const descriptionBtnClickedId = e.target.id;
      const descriptionBtnClickedName = e.target.getAttribute("name");
      await getDescription(descriptionBtnClickedId, descriptionBtnClickedName);
      const BoxDescriptionShowing = document.getElementById(
        "BoxDescriptionShowing"
      );
      BoxDescriptionShowing.scrollIntoView({ behavior: "smooth" });
    }
  });
});


//------------------Trigger to get an element Seached--------------------------//
document.addEventListener('DOMContentLoaded', () => {
  document.addEventListener('click', (e) => {
    e.preventDefault();
    if(e.target.classList.contains('CloseModaleBtn')) {
      const ModalElement = document.getElementById('offcanvasTop');
        ModalElement.classList.remove('show')
    }
  } )
} )

document.addEventListener('DOMContentLoaded', () => {
  document.addEventListener('click', async (e) => {
    if(e.target.classList.contains("ButtonForSearching")) {
      e.preventDefault();
      const detailContent = document.getElementById('SearchingDetail').value;
      console.log("element searched is :" + detailContent)
      const result = VerifyIfaTypeClasseIsClicked();
      if (result==0) {
        const ModalElement = document.getElementById('offcanvasTop');
        ModalElement.classList.add('show')
      } else {
        const ComptesInfDOM = document.getElementById('showComptes_inf');
        console.log("The TypeClasse Selected is id = " + result);
        await getElementBySearching(detailContent, result);
        // Réinitialiser la valeur de l'input
        document.getElementById('SearchingDetail').value = '';
        ComptesInfDOM.innerHTML = '';      
        const boxSousComptesShowing = document.getElementById("BoxSousComptesShowing");
        boxSousComptesShowing.scrollIntoView({ behavior: "smooth" });
      }
      
    }
  })
});
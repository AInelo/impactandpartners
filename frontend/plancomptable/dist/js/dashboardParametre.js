//-------- Verify if the User has an abonnement ----------------//

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

async function main() {
  try {
    console.log("Starting main function...");
    const isAbonnementValid = await VerifyAbonnement();
    console.log("isAbonnementValid = :", isAbonnementValid);
    if (isAbonnementValid === true) {
      console.log('Yes he has an abonnement!');
   
    } else {
      console.log("No he doesn't have an abonnement!");
      ShowPayementBox(); 
    }
    console.log('Abonne has an abonnement: ' + isAbonnementValid); 
  } catch (error) {
    console.error('An error occurred:', error);
  }
}

main();



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





const getElementBySearching00 = async (detaill, id) => {
  // const SearchingTriggerButton = document.getElementById();
  const SearchingResultDOM = document.getElementById('showSousComptes');
  console.log("Element searched is (in the API function) : " + detaill)
  try {
    const requestBody = {
      "detail": detaill,
      "id": id
    };
    const  {
      data : {element},
    } = await axios.post('/api/v1/comptes/elementsearch', requestBody);
    if (element.length < 1) {
      
    }
   
    const allElement = element
      .map((ele) => {
        const { id, classes_comptes_id , name,nbr, table_name } = ele;
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
      SearchingResultDOM.innerHTML = allElement;

  } catch (error) {
    SearchingResultDOM.innerHTML =  '<h5 class="empty-list">There was an error, please try later....</h5>';
    console.log(error)
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
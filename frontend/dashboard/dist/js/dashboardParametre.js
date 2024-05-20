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



// ------------------   Get USER API -----------------------------------//
async function InCaseAbonnementActive () {
  console.log("InCaseAbonnementActive called");
  
    const NameContainer = document.getElementById("NameContainer");
    const ContainerStatus = document.getElementById("StatusContainer");

    if (!NameContainer || !ContainerStatus) {
      console.error("NameContainer or StatusContainer not found in the DOM.");
      return;
    }
  
    NameContainer.innerHTML = "<p>Loading user data...</p>";
    ContainerStatus.innerHTML = "<p>Loading subscription data...</p>";
    
    try {
      const userResponse = await axios.post("/user");
      const user = userResponse.data.user;
  
      if (user) {
        const {
          firstname: UserFirstName,
          lastname: UserLastname,
          date_inscription: UserDateinscription,
          date_paiement : UserDateStartAbonnement,
          email: UserEmail,
          user_category: UserCategory,
          duree_abonnement: UserDureeAbonnement
        } = user;
  
        console.log(`Bienvenue: ${UserLastname} ${UserFirstName}`);
        let SartDateAbonnement = '';
  
        const objectAbonnementInfos = {
          date: UserDateStartAbonnement,
          time: UserDureeAbonnement
        };
  
        try {
          const response = await axios.post("/abonnementinfos", objectAbonnementInfos);
  
          if (response.data && response.data.results) {
            const abonnementinfos = response.data.results;
  
            const remainDay = abonnementinfos.remainday;
            const pourcentageRemained = abonnementinfos.pourcentageRemained;
            const startFormattedDate = abonnementinfos.startdate;
            const endFormattedDate = abonnementinfos.enddate;
            SartDateAbonnement = startFormattedDate;
            console.log(`Remaining days: ${remainDay}`);
            console.log(`Percentage remained: ${pourcentageRemained}`);
            console.log(`Start date: ${startFormattedDate}`);
            console.log(`End date: ${endFormattedDate}`);
  
            const statusContainerUser = `
              <div id="StatusContainer" class="col-lg-12">
                <div class="card">
                  <div class="card-body">
                    <div class="row align-items-center">
                      <div class="col-3">
                        <img src="https://cdn.dribbble.com/users/844826/screenshots/14553706/media/2be9a4847b939e02702648d058cf2df8.png" alt="Food Deliver UI dashboards" class="rounded">
                      </div>
                      <div class="col">
                        <h3 class="card-title mb-1">
                          <a href="#" class="text-reset">Mon abonnement</a>
                        </h3>
                        <div class="text-muted">
                          Nombres de jours restants ${remainDay}
                        </div>
                        <div class="mt-3">
                          <div class="row g-2 align-items-center">
                            <div class="col-auto">
                              ${pourcentageRemained}%
                            </div>
                            <div class="col">
                              <div class="progress progress-sm">
                                <div class="progress-bar" style="width: ${pourcentageRemained}%" role="progressbar" aria-valuenow="${pourcentageRemained}" aria-valuemin="0" aria-valuemax="100" aria-label="${pourcentageRemained}% Complete">
                                  <span class="visually-hidden">${pourcentageRemained}% Complete</span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-auto">
                        <div class="dropdown">
                          <a href="#" class="btn-action" data-bs-toggle="dropdown" aria-expanded="false">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 12m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" /><path d="M12 19m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" /><path d="M12 5m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" /></svg>
                          </a>
                          <div class="dropdown-menu dropdown-menu-end">
                            <a href="#" class="dropdown-item">Import</a>
                            <a href="#" class="dropdown-item">Export</a>
                            <a href="#" class="dropdown-item">Download</a>
                            <a href="#" class="dropdown-item text-danger">Delete</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>`;
            ContainerStatus.innerHTML = statusContainerUser;
          } else {
            console.error("Les résultats ne sont pas présents dans la réponse");
          }
        } catch (error) {
          console.error("Erreur lors de la récupération des informations d'abonnement:", error);
        }
  
        const ButtonNameContent = `
          <div class="col-auto">
            <span class="avatar avatar-lg rounded" style="background-image: url(./assets/images/randomUser1.jpg)"></span>
          </div>
          <div class="col">
            <h1 class="fw-bold">${UserLastname} ${UserFirstName}</h1>
            <div class="list-inline list-inline-dots text-muted">
              <div class="list-inline-item">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-inline" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 7a2 2 0 0 1 2 -2h14a2 2 0 0 1 2 2v10a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-10z" /><path d="M3 7l9 6l9 -6" /></svg>
                <a href="#" class="text-reset">${UserEmail}</a>
              </div>
              <div class="list-inline-item">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-inline" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 20h18v-8a3 3 0 0 0 -3 -3h-12a3 3 0 0 0 -3 3v8z" /><path d="M3 14.803c.312 .135 .654 .204 1 .197a2.4 2.4 0 0 0 2 -1a2.4 2.4 0 0 1 2 -1a2.4 2.4 0 0 1 2 1a2.4 2.4 0 0 0 2 1a2.4 2.4 0 0 0 2 -1a2.4 2.4 0 0 1 2 -1a2.4 2.4 0 0 1 2 1a2.4 2.4 0 0 0 2 1c.35 .007 .692 -.062 1 -.197" /><path d="M12 4l1.465 1.638a2 2 0 1 1 -3.015 .099l1.55 -1.737z" /></svg>
                ${SartDateAbonnement}
              </div>
            </div>
          </div>
          <div class="col-auto ms-auto">
            <div class="btn-list">
              <a href="#" class="btn btn-icon" aria-label="Button">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M8 9h8" /><path d="M8 13h6" /><path d="M18 4a3 3 0 0 1 3 3v8a3 3 0 0 1 -3 3h-5l-5 3v-3h-2a3 3 0 0 1 -3 -3v-8a3 3 0 0 1 3 -3h12z" /></svg>
              </a>
              <a href="#" class="btn btn-primary">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M5 12l5 5l10 -10" /></svg>
                ${UserCategory}
              </a>
            </div>
          </div>`;
  
        NameContainer.innerHTML = ButtonNameContent;
      } else {
        console.log("L'utilisateur est vide.");
      }
    } catch (error) {
      console.error("Erreur lors de la récupération des informations de l'utilisateur :", error);
      alert("Erreur lors de la récupération des informations de l'utilisateur. Veuillez réessayer.");
    }
  
  
}


async function InCaseAbonnementNotActive () {
  console.log("InCaseAbonnementNotActive called");
  
      const NameContainer = document.getElementById("NameContainer");
      const ContainerStatus = document.getElementById("StatusContainer");
      
      try {
        const userResponse = await axios.post("/user");
        const user = userResponse.data.user;
    
        if (user) {
          const {
            firstname: UserFirstName,
            lastname: UserLastname,
            date_inscription: UserDateinscription,
            date_paiement : UserDateStartAbonnement,
            email: UserEmail,
            user_category: UserCategory,
            duree_abonnement: UserDureeAbonnement
          } = user;
    
          const startDateUser = new Date(UserDateinscription);
          const StartformattedFinal = `${startDateUser.getDate().toString().padStart(2, '0')}-${(startDateUser.getMonth() + 1).toString().padStart(2, '0')}-${startDateUser.getFullYear()}`;

          console.log(`Bienvenue: ${UserLastname} ${UserFirstName}`);
          let SartDateAbonnement = '';
    
          const objectAbonnementInfos = {
            date: UserDateStartAbonnement,
            time: UserDureeAbonnement
          };
    
          try {
            const response = await axios.post("/abonnementinfos", objectAbonnementInfos);

            
            if (response.data && response.data.results) {
              const abonnementinfos = response.data.results;
    
              const remainDay = abonnementinfos.remainday;
              const pourcentageRemained = abonnementinfos.pourcentageRemained;
              const startFormattedDate = abonnementinfos.startdate;
              const endFormattedDate = abonnementinfos.enddate;
              SartDateAbonnement = startFormattedDate;
              console.log(`Remaining days: ${remainDay}`);
              console.log(`Percentage remained: ${pourcentageRemained}`);
              console.log(`Start date: ${startFormattedDate}`);
              console.log(`End date: ${endFormattedDate}`);
              
    
              const statusContainerUser = `
                <div id="StatusContainer" class="col-lg-12">
                  <div class="card">
                    <div class="card-body">
                      <div class="row align-items-center">
                        <div class="col-3">
                          <img src="https://cdn.dribbble.com/users/844826/screenshots/14553706/media/2be9a4847b939e02702648d058cf2df8.png" alt="Food Deliver UI dashboards" class="rounded">
                        </div>
                        <div class="col">
                          <h3 class="card-title mb-1">
                            <a href="#" class="text-reset">Mon abonnement</a>
                          </h3>
                          <div class="text-muted">
                            Vous n'avez pas d'abonnement actif
                          </div>
                          <div class="mt-3">
                            <div class="row g-2 align-items-center">
                              <div class="col-auto">
                                0%
                              </div>
                              <div class="col">
                                <div class="progress progress-sm">
                                  <div class="progress-bar" style="width: 0%" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" aria-label="0% Complete">
                                    <span class="visually-hidden">0% Complete</span>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-auto">
                          <div class="dropdown">
                            <a href="#" class="btn-action" data-bs-toggle="dropdown" aria-expanded="false">
                              <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 12m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" /><path d="M12 19m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" /><path d="M12 5m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" /></svg>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                              <a href="#" class="dropdown-item">Import</a>
                              <a href="#" class="dropdown-item">Export</a>
                              <a href="#" class="dropdown-item">Download</a>
                              <a href="#" class="dropdown-item text-danger">Delete</a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>`;
              ContainerStatus.innerHTML = statusContainerUser;
            } else {
              console.error("Les résultats ne sont pas présents dans la réponse");
            }
          } catch (error) {
            console.error("Erreur lors de la récupération des informations d'abonnement:", error);
          }
    
          const ButtonNameContent = `
            <div class="col-auto">
              <span class="avatar avatar-lg rounded" style="background-image: url(./assets/images/randomUser1.jpg)"></span>
            </div>
            <div class="col">
              <h1 class="fw-bold">${UserLastname} ${UserFirstName}</h1>
              <div class="list-inline list-inline-dots text-muted">
                <div class="list-inline-item">
                  <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-inline" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 7a2 2 0 0 1 2 -2h14a2 2 0 0 1 2 2v10a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-10z" /><path d="M3 7l9 6l9 -6" /></svg>
                  <a href="#" class="text-reset">${UserEmail}</a>
                </div>
                <div class="list-inline-item">
                  <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-inline" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 20h18v-8a3 3 0 0 0 -3 -3h-12a3 3 0 0 0 -3 3v8z" /><path d="M3 14.803c.312 .135 .654 .204 1 .197a2.4 2.4 0 0 0 2 -1a2.4 2.4 0 0 1 2 -1a2.4 2.4 0 0 1 2 1a2.4 2.4 0 0 0 2 1a2.4 2.4 0 0 0 2 -1a2.4 2.4 0 0 1 2 -1a2.4 2.4 0 0 1 2 1a2.4 2.4 0 0 0 2 1c.35 .007 .692 -.062 1 -.197" /><path d="M12 4l1.465 1.638a2 2 0 1 1 -3.015 .099l1.55 -1.737z" /></svg>
                  ${StartformattedFinal}
                </div>
              </div>
            </div>
            <div class="col-auto ms-auto">
              <div class="btn-list">
                <a href="#" class="btn btn-icon" aria-label="Button">
                  <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M8 9h8" /><path d="M8 13h6" /><path d="M18 4a3 3 0 0 1 3 3v8a3 3 0 0 1 -3 3h-5l-5 3v-3h-2a3 3 0 0 1 -3 -3v-8a3 3 0 0 1 3 -3h12z" /></svg>
                </a>
                <a href="#" class="btn btn-primary">
                  <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M5 12l5 5l10 -10" /></svg>
                  ${UserCategory}
                </a>
              </div>
            </div>`;
    
          NameContainer.innerHTML = ButtonNameContent;
        } else {
          console.log("L'utilisateur est vide.");
        }
      } catch (error) {
        console.error("Erreur lors de la récupération des informations de l'utilisateur :", error);
        alert("Erreur lors de la récupération des informations de l'utilisateur. Veuillez réessayer.");
      }
   
    
  
  
}





// --------------- Set Link ----------------------------------//

async function SetLinkToApp() {
  const LinkToEtatFinancierLucratifDOM = document.getElementById('LinkToEtatFinancierLucratif');
  const LinkToEtatFinancierNonLucratifDOM = document.getElementById('LinkToEtatFinancierNonLucratif');

  // const PlanComptableDOMLink = document.getElementById('PlanComptableDOMLink')
  // const EtatFinancierDOMLink = document.getElementById('EtatFinancierDOMLink')

  const AppDOMLink = document.getElementById('AppDOMLink')
    try {
      const userResponse = await axios.post("/user");
      const user = userResponse.data.user;
      if (user) {
        const {
          firstname: UserFirstName
        } = user;
        const UserFirstNameLowercase = UserFirstName.toLowerCase();

        const LinkToEtatFinancierLucratifElement = `<a href="/etatfinanciers/${UserFirstNameLowercase}#LucratifContainer" class="card-btn">Afficher</a>`
        const LinkToEtatFinancierNonLucratifElement = `<a href="/etatfinanciers/${UserFirstNameLowercase}#NonLucratifContainer" class="card-btn">Afficher</a>`
        const AppLinkElement = `<a class="dropdown-item" href="/plancomptable/${UserFirstNameLowercase}">
                                  Mon Plan Comptable
                                </a>
                                <a class="dropdown-item" href="/etatfinanciers/${UserFirstNameLowercase}">
                                  États financiers sycohada révisé & sycebnl
                                </a>`

        LinkToEtatFinancierLucratifDOM.innerHTML = LinkToEtatFinancierLucratifElement;
        LinkToEtatFinancierNonLucratifDOM.innerHTML = LinkToEtatFinancierNonLucratifElement;
        AppDOMLink.innerHTML = AppLinkElement;
      } else {
        console.log("L'utilisateur est vide.");
      }

    } catch (error) {
      console.error("Erreur lors de la récupération des informations de l'utilisateur :", error);
      alert("Erreur lors de la récupération des informations de l'utilisateur. Veuillez réessayer.");
    }

}




async function main() {
  try {
    console.log("Starting main function...");
    const isAbonnementValid = await VerifyAbonnement();
    console.log("isAbonnementValid = :", isAbonnementValid);
    if (isAbonnementValid === true) {
      console.log('Yes he has an abonnement!');
    await  InCaseAbonnementActive(); // Ajout de await pour s'assurer que la fonction est terminée avant de continuer
    await SetLinkToApp();
    } else {
      console.log("No he doesn't have an abonnement!");
    await InCaseAbonnementNotActive();
    // await InCaseAbonnementActive();
    await SetLinkToApp();
    }
    console.log('Abonne has an abonnement: ' + isAbonnementValid); // true ou false
  } catch (error) {
    console.error('An error occurred:', error);
  }
}

main();







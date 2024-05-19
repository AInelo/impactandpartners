

// ------------------   Get USER API -----------------------------------//

document.addEventListener("DOMContentLoaded", async () => {
  const NameConainer = document.getElementById("NameContainer");
  const ContainerStatus = document.getElementById('StatusContainer')
  try {
    const userResponse = await axios.post("/user");

    const user = userResponse.data.user;

    if (user) {
      // const user = userResponse.data.user;

      // Récupérer le nom de famille en minuscules depuis les informations de l'utilisateur
      const firstNameLowercase = user.firstname.toLowerCase();
      const UserFirstName = user.firstname;
      const UserLastname = user.lastname;
      const UserDateinscription = user.date_inscription;
      const UserEmail = user.email;
      const UserCategory = user.user_category;
      console.log("Bienvenue: " + UserLastname + UserFirstName);

              // Créer un nouvel objet Date à partir de la date de la base de données
        const originalDate = new Date(UserDateinscription);

        // Formater la date dans le format yyyy-mm-dd
        //const formattedDate = originalDate.toLocaleDateString('fr-CA', { day: '2-digit', month: '2-digit', year: 'numeric' });

        const formattedDate = `${originalDate.getDate().toString().padStart(2, '0')}-${(originalDate.getMonth() + 1).toString().padStart(2, '0')}-${originalDate.getFullYear()}`;

        console.log('Date formatée :', formattedDate); // Affiche la date formatée

        // Calculer la nouvelle date en ajoutant 365 jours
        const newDate = new Date(originalDate);
        newDate.setDate(newDate.getDate() + 365);

                  // Obtenir la date actuelle
            const currentDate = new Date();
          const currenDateFormatted = `${currentDate.getDate().toString().padStart(2, '0')}-${(currentDate.getMonth() + 1).toString().padStart(2, '0')}-${currentDate.getFullYear()}`;
            // Calculer la différence entre la date actuelle et la date de début en millisecondes
            const differenceInTime = currentDate.getTime() - originalDate.getTime();

            // Convertir la différence en jours
            const differenceInDays = Math.floor(differenceInTime / (1000 * 3600 * 24));

            const remainDay = 365 - differenceInDays;
            const PourcentageRemained1 = (differenceInDays / 365) * 100;
            const PourcentageRemained = Math.round(PourcentageRemained1);

        // Formater la nouvelle date dans le format yyyy-mm-dd
       // const formattedNewDate = newDate.toLocaleDateString('fr-CA', { day: '2-digit', month: '2-digit', year: 'numeric' });
        const formattedNewDate = `${newDate.getDate().toString().padStart(2, '0')}-${(newDate.getMonth() + 1).toString().padStart(2, '0')}-${newDate.getFullYear()}`;
        console.log("Date aujourdhui : " + currenDateFormatted)
        console.log(formattedNewDate)
        console.log(differenceInDays)

        ButtonNameContent = `<div class="col-auto">
        <span class="avatar avatar-lg rounded" style="background-image: url(./assets/images/randomUser1.jpg)"></span>
      </div>
      <div class="col">
        <h1  class="fw-bold">${UserLastname} ${UserFirstName}</h1>
        
        <div class="list-inline list-inline-dots text-muted">
          
          <div class="list-inline-item">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-inline" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 7a2 2 0 0 1 2 -2h14a2 2 0 0 1 2 2v10a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-10z" /><path d="M3 7l9 6l9 -6" /></svg>
            <a href="#" class="text-reset">${UserEmail}</a>
          </div>
          <div class="list-inline-item">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-inline" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 20h18v-8a3 3 0 0 0 -3 -3h-12a3 3 0 0 0 -3 3v8z" /><path d="M3 14.803c.312 .135 .654 .204 1 .197a2.4 2.4 0 0 0 2 -1a2.4 2.4 0 0 1 2 -1a2.4 2.4 0 0 1 2 1a2.4 2.4 0 0 0 2 1a2.4 2.4 0 0 0 2 -1a2.4 2.4 0 0 1 2 -1a2.4 2.4 0 0 1 2 1a2.4 2.4 0 0 0 2 1c.35 .007 .692 -.062 1 -.197" /><path d="M12 4l1.465 1.638a2 2 0 1 1 -3.015 .099l1.55 -1.737z" /></svg>
            ${formattedDate}
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
      </div>`

      

      statuContainerUser = ` <div id="StatusContainer" class="col-lg-12">
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
                    ${PourcentageRemained}%
                  </div>
                  <div class="col">
                    <div class="progress progress-sm">
                      <div class="progress-bar" style="width: ${PourcentageRemained}%" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" aria-label="25% Complete">
                        <span class="visually-hidden">25% Complete</span>
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
    </div>`

      NameConainer.innerHTML = ButtonNameContent;
      ContainerStatus.innerHTML = statuContainerUser;

    } else {
      console.log("L'utilisateur est vide.");
    }
  } catch (error) {
    console.error(
      "Erreur lors de la récupération des informations de l'utilisateur :"
    );
    alert(
      "Erreur lors de la récupération des informations de l'utilisateur. Veuillez réessayer."
    );
  }
});

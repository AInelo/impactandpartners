// Modèle pour User (pour une meilleure compréhension, ce n'est pas strictement nécessaire)
class User {
    constructor(firstname, lastname) {
        this.firstname = firstname;
        this.lastname = lastname;
    }

    static async getUser() {
        try {
            const response = await axios.post("/user");
            return response.data.user; 
        } catch (error) {
            console.error('Erreur lors de la récupération des informations de l\'utilisateur:', error);
            return null;
        }
    }

    static async freemiumOption(inscriptionDate) {

        const todayDate = new Date();
    
        const inscriptionTime = new Date(inscriptionDate).getTime();
    
        const todayTime = todayDate.getTime();
    
        const differenceInMilliseconds = todayTime - inscriptionTime;
      
        const twentyFourHoursInMilliseconds = 24 * 60 * 60 * 1000;
    
       return differenceInMilliseconds <= twentyFourHoursInMilliseconds ? true : false
    }
    
}

class DisplayManager {
    static generateButtonHeroForAbonneetUser(user){
        const firstNameLowercase = user.firstname.toLowerCase();
        console.log("Profil de : " + user.lastname + " " + user.firstname);
        
        return `<div class="white-button first-button scroll-to-section">
                      <a href="#contact">Abonnement Actif 😇👍🏽
                      </a>
                    </div>
                    <div   class="white-button scroll-to-section">
                        <a href="/plancomptable/${firstNameLowercase}"> Allez au Plan
                        <i class="fa fa-play-circle" aria-hidden="true"></i>
                      </a>
                </div>`;
    }

    static generateButtonDashboard(user) {
        const firstNameLowercase = user.firstname.toLowerCase();
        console.log("Bienvenue: " + user.lastname + " " + user.firstname);
        
        return `<div class="gradient-button">
                    <a href="/dashboard/${firstNameLowercase}" data-path="/dashboard/${firstNameLowercase}">
                        <i class="fa fa-user"></i> Mon Compte
                    </a>
                </div>`;
    }
    
    static generateButtonHero(user) {
        const firstNameLowercase = user.firstname.toLowerCase();
        console.log("Profil de : " + user.lastname + " " + user.firstname);
        
        return `<div class="white-button first-button scroll-to-section">
                      <a href="#contact">Mode Essai Activé 
                      </a>
                    </div>
                    <div   class="white-button scroll-to-section">
                        <a href="/plancomptable/${firstNameLowercase}"> Allez au Plan
                        <i class="fa fa-play-circle" aria-hidden="true"></i>
                      </a>
                </div>`;
    }
    
    static displayContent(user, container, generateButton) {
        if (user) {
            const buttonHtml = generateButton(user);
            container.innerHTML = buttonHtml;
        } else {
            console.log("L'utilisateur est vide.");
        }
    }
}


document.addEventListener('DOMContentLoaded', async () => {
    const containertButtonDashboard = document.getElementById('containertButtonDashboard');
    const containerGeneratedHeroButton = document.getElementById('containerGeneratedHeroButton');
    const containerServiceButtonGenerated = document.getElementById('containerServiceButtonGenerated');

    const user = await User.getUser();

    if(user){
        DisplayManager.displayContent(user, containertButtonDashboard, DisplayManager.generateButtonDashboard);
    } 
    
    if(user && User.freemiumOption(user.date_inscription) ) {
        console.log('Vous êtes en mode gratuit')
        DisplayManager.displayContent(user, containerServiceButtonGenerated, DisplayManager.generateButtonDashboard)
        DisplayManager.displayContent(user, containerGeneratedHeroButton, DisplayManager.generateButtonHero)

    }

    if(user.status_paiement){
        console.log('Vous êtes en mode gratuit')
        DisplayManager.displayContent(user, containerServiceButtonGenerated, DisplayManager.generateButtonDashboard)
        DisplayManager.displayContent(user, containerGeneratedHeroButton, DisplayManager.generateButtonHeroForAbonneetUser)
    }
});

const dataModal = {
    good: "Inscritption réussi",
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

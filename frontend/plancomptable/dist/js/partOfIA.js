document.addEventListener('DOMContentLoaded', () => {
    const comptaPlanPage = document.getElementById('comptaPlanPage');
    const comptaIAPage = document.getElementById('comptaIAPage');
    const switchIntoPageButtonComptaPlanPage = document.getElementById('switchIntoPageComptaPlanPage');
    const switchIntoPageButtonComptaIAPage = document.getElementById('switchIntoPageComptaIAPage');

    function showPage(showElement, hideElement) {
        showElement.style.display = 'block';
        hideElement.style.display = 'none';
        console.log('ok');
    }

    switchIntoPageButtonComptaPlanPage.addEventListener('click', () => {
        showPage(comptaPlanPage, comptaIAPage);
    });

    switchIntoPageButtonComptaIAPage.addEventListener('click', () => {
        showPage(comptaIAPage, comptaPlanPage);
    });
});
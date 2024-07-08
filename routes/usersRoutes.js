const express = require('express');
const router = express.Router();
const passport = require('passport');
const UserController = require('../controllers/userControllers.js');

router.post('/abonnementinfos', UserController.getAllInformationAboutAbonnement);
router.post('/register', UserController.signUp);

router.get('/', UserController.home);
router.get('/register', UserController.checkAuthenticated, UserController.register);
router.get('/login', UserController.checkAuthenticated, UserController.login);
router.get('/sign-in.html', UserController.errorPage);
router.get('/plancomptable/:name', UserController.checkNotAuthenticated, UserController.planComptable);
router.get('/etatfinanciers/:name', UserController.checkNotAuthenticated, UserController.etatFinanciers);
router.get('/dashboard/:name', UserController.checkNotAuthenticated, UserController.dashboard);
router.get('/logout', UserController.logout);

// router.post('/login', passport.authenticate('local', {
//   failureRedirect: '/login',
//   failureFlash: true
// }), UserController.loginPost);


router.post('/login', (req, res, next) => {
  passport.authenticate('local', (err, user, info) => {
    if (err) {
      return res.status(500).json({ message: 'Erreur interne du serveur' });
    }
    if (!user) {
      return res.status(401).json({ message: info.message });
    }
    req.logIn(user, (err) => {
      if (err) {
        return res.status(500).json({ message: 'Erreur interne du serveur' });
      }
      const firstNameLowercase = user.firstname.toLowerCase();
      return res.status(200).json({ redirectUrl: '/dashboard/' + firstNameLowercase });
    });
  })(req, res, next);
});

router.post('/user', UserController.checkUser);

router.post('/formalise', UserController.formaliseDataSignUp);

module.exports = router;

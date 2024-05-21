import { Router } from 'express';
const router = Router()
import passport from 'passport'; // Importez passport ici


import UserController   from  '../controllers/userControllers.js';
// const {getAllInformationAboutAbonnement} = userControllers;



router.route('/abonnementinfos').post(UserController.getAllInformationAboutAbonnement);
router.route('/register').post(UserController.signUp);



router.get("/", UserController.home);
router.get("/register", UserController.checkAuthenticated, UserController.register);
router.get("/login", UserController.checkAuthenticated, UserController.login);
router.get("/sign-in.html", UserController.errorPage);
router.get("/plancomptable/:name", UserController.checkNotAuthenticated, UserController.planComptable);
router.get("/etatfinanciers/:name", UserController.checkNotAuthenticated, UserController.etatFinanciers);
router.get("/dashboard/:name", UserController.checkNotAuthenticated, UserController.dashboard);
router.get("/logout", UserController.logout);

router.post("/login", passport.authenticate("local", {
  failureRedirect: "/login",
  failureFlash: true
}), UserController.loginPost);

router.post("/user", UserController.checkUser);

router.post('/formalise', UserController.formaliseDataSignUp);

export default router
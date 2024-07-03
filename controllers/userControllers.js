import User from "../model/user.js";
import path from 'path';
import { fileURLToPath } from 'url';
import Database from '../db/connexionDb.js';



// Définir __dirname en utilisant import.meta.url
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

class UserController {

    static async getAllInformationAboutAbonnement (req, res) {
        const { date, time } = req.body
        console.log("La date : " + date + " the Time : " + time)
        try {
            const  results = await User.AllInformationAboutAbonnement(date, time);
            console.log(results)
            res.status(200).json({results});
        } catch (error) {
            console.error(error);
        }
    }

    static async signUp(req, res) {
      const { firstname, lastname, email, password, password2, country_code, numero_tel, date_inscription, date_paiement, duree_abonnement, amount_to_pay, user_category, type_user } = req.body;
  
      const result = await User.SignUp({ firstname, lastname, email, password, password2, country_code, numero_tel, date_inscription, date_paiement, duree_abonnement, amount_to_pay, user_category, type_user });
  
      if (result.status === 201) {
        req.flash("success_msg", "You are now registered. Please log in");
        res.redirect("/login");
      } else {
        res.status(result.status).json(result);
      }
    }

    static checkUserConnection = (req) => {
        return req.isAuthenticated();
      };

    static login(req, res) {
        if (req.session.flash && req.session.flash.error) {
            console.log(req.session.flash.error);
        }
        res.sendFile(path.join(__dirname, '..', 'frontend', 'sign-in.html'));
    }
    
    static home(req, res) {
        res.sendFile(path.join(__dirname, '..', 'frontend', 'index.html'));
    }
    
    static register(req, res) {
        res.sendFile(path.join(__dirname, '..', 'frontend', 'sign-up.html'));
    }
    
    static errorPage(req, res) {
        res.sendFile(path.join(__dirname, '..', 'frontend', 'error-404.html'));
    }
    
    static planComptable(req, res) {
        const firstNameLowercase = req.params.name.toLowerCase();
        res.sendFile(path.join(__dirname, '..', 'frontend', 'plancomptable.html'));
    }
    
    static etatFinanciers(req, res) {
        const firstNameLowercase = req.params.name.toLowerCase();
        res.sendFile(path.join(__dirname, '..', 'frontend', 'etatfinancier.html'));
    }
    
    static dashboard(req, res) {
        const firstNameLowercase = req.params.name.toLowerCase();
        res.sendFile(path.join(__dirname, '..', 'frontend', 'dashboard.html'));
    }
    
    static loginPost(req, res) {

      if (req.user) {
        const firstNameLowercase = req.user.firstname.toLowerCase();
        res.redirect('/dashboard/' + firstNameLowercase);
      } else {
        res.redirect('/login');
      }


        // const firstNameLowercase = req.user.firstname.toLowerCase();
        // res.redirect("/dashboard/" + firstNameLowercase);
    }
    
 
    // static logout(req, res) {
    //     req.logout((err) => {
    //         if (err) {
    //         console.error("Erreur lors de la déconnexion :", err);
    //         res.status(500).send("Erreur lors de la déconnexion");
    //         } else {
    //         res.redirect("/");
    //         console.log("Déconnexion réussie");
    //         }
    //     });
    // }


    static async logout (req, res, next) {
      const userId = req.user.users_id;
      const db = new Database();
      const query = `UPDATE users SET is_logged_in = false WHERE users_id = $1`;
      await db.query(query, [userId])
        .then(() => {
          req.logout((err) => {
            if (err) { return next(err); }
            res.redirect('/login');
          });
        })
        .catch(err => {
          console.error('Error updating user logout status: ', err);
          res.redirect('/dashboard'); // Or handle the error appropriately
        });
    }

    static checkAuthenticated(req, res, next) {
        if (req.isAuthenticated()) {
          const firstNameLowercase = req.user.firstname.toLowerCase();
          return res.redirect("/dashboard/" + firstNameLowercase);
        }
        next();
      }
      
    static checkNotAuthenticated(req, res, next) {
        if (req.isAuthenticated()) {
            return next();
        }
        res.redirect("/login");
    }
    


    
      
      static checkUser = (req, res) => {
        try {
          if (UserController.checkUserConnection(req)) {
            const userWithoutPassword = { ...req.user };
            delete userWithoutPassword.password;
            res.status(200).json({ user: userWithoutPassword });
          } else {
            res.status(401).json({ message: "Utilisateur non connecté" });
          }
        } catch (error) {
          console.error('Une erreur est survenue:', error);
          res.status(500).json({ error: "Une erreur s'est produite" });
        }
      };

     
      static formaliseDataSignUp = async  (req, res) => {
        
        try {
          const { 
            firstname,
            lastname, 
            email, 
            country_code, 
            numero_tel, 
            date_inscription, 
            user_category, 
            type_user } = req.body
  
          const finalObject = User.ConformationSignUpInformation({
            firstname,
            lastname,
            email,
            country_code,
            numero_tel,
            date_inscription,
            user_category,
            type_user
          });

            res.status(200).json(finalObject)

        } catch (error) {
          console.error('Une erreur est survenue:', error);
          res.status(500).json({ error: "Une erreur s'est produite" });
        }

      }

      
    
}
  
export default UserController;
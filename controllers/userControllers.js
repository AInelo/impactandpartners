import User from "../model/user.js";


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
      const { firstname, lastname, email, password, password2 } = req.body;
  
      const result = await User.SignUp({ firstname, lastname, email, password, password2 });
  
      if (result.status === 201) {
        req.flash("success_msg", "You are now registered. Please log in");
        res.redirect("/login");
      } else {
        res.status(result.status).json(result);
      }
    }

}
  
  export default UserController;
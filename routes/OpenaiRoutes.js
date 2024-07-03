import { Router } from "express";
const router = Router();
import OpenaiTexteController from "../controllers/OpenaiContoller.js";


router.post("/get-advice-gpt", OpenaiTexteController.generateAdviceForComptaAccountChoice);


export default router;
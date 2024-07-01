import { Router } from "express";
const router = Router();
import JsonFormatTypeClassController from "../controllers/JsonFormatTypeClassController.js";
const map = new JsonFormatTypeClassController;

router.get("/getmapbytypeclasse/:typeclasseid", JsonFormatTypeClassController.buildHierarchyByTypeClasseId);

export default router;

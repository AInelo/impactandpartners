const express = require('express');
const router = express.Router();
const JsonFormatTypeClassController = require('../controllers/JsonFormatTypeClassController.js');
const map = new JsonFormatTypeClassController();

router.get('/getmapbytypeclasse/:typeClasseId', JsonFormatTypeClassController.buildHierarchyByTypeClasseId);

module.exports = router;

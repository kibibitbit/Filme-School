"use strict"
const express = require('express');
const router = express.Router();
const controller = require('../Controller/maincontroller');

router.get('/Add', controller.add);
router.post('/create',controller.create);
router.get('/', controller.main);
router.get('/Filmsite', controller.Filmsite)
router.get('/*/',controller.betweenslash)
router.get('*',controller.error)

module.exports = router;
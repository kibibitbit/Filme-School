"use strict"
const express = require('express');
const router = express.Router();
const controller = require('../Controller/maincontroller');

router.get('/Manage', controller.Manage);
router.get('/Filmsite', controller.Filmsite)
router.get('/register',controller.register);
router.get('/login',controller.login);
router.post('/create',controller.create);
router.post('/delete',controller.del);
router.post('/update',controller.update);
router.get('/', controller.index);
router.get('/*/',controller.betweenslash)
router.get('*',controller.error)

module.exports = router;
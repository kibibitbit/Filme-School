"use strict"
const express = require('express');
const router = express.Router();
const authcontroller = require('../Controller/auth');

router.post('/register',authcontroller.register);
router.post('/login',authcontroller.login);

module.exports = router;
const express = require('express')

const router = express.Router() 

const controllersPessoa = require('../controllers/pessoaControllers')

router.get('/pessoa', controllersPessoa.getAll)
router.get('/pessoa/:cod', controllersPessoa.getId)

module.exports = router


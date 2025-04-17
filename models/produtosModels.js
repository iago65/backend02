const conexao = require('../config/conexao.js');

console.log('Acessando Models dos Produtos...')

module.exports = {
    getAll,
    getById,
    create,
}

function getAll(callback){
    console.log("Model Produtos")
    msql = 'SELECT * FROM tblproduto'
    conexao.query(msql, callback)
}

function getById(codigo, callback){
    console.log("Model Produtos Get - ById")
    msql = 'SELECT * FROM tblproduto WHERE codigo_prod =  ' + codigo
    conexao.query(msql, callback)
}

function create(dados, callback){
    console.log("Model Produtos - Create")
    msql = 'INSERT INTO tblproduto SET ? '
    conexao.query(msql, dados, callback)
}

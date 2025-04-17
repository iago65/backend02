var mysql = require('mysql2')
//var database = "livros"
var database = "dbpapelaria";

var conexao = mysql.createConnection({
    user: 'root',
    password: '12345678',
    host: 'localhost',
    port: 3306
})

conexao.connect((err) => {
    if(err) {
        console.log('Erro ao conectar no mysql...', err)
        return
    } else {
        conexao.query('USE '+ database)
        console.log('\nConexão estabilizada com sucesso!!!')
    }

})

module.exports = conexao

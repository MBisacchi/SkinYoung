var database = require("../database/config");

function buscarUltimasMedidas() {
    instrucaoSql = `select 
    resultado,
    count(resultado) contador
                from relatorio
                group by resultado;`;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal() {
    instrucaoSql = `select 
    resultado,
    count(resultado) contador
                from relatorio
                group by resultado;`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal
}
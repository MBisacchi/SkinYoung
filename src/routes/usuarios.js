var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});

router.get("/contadorPele", function (req, res) {
    usuarioController.contadorPele(req, res);
});

router.get("/contadorSeca", function (req, res) {
    usuarioController.contadorSeca(req, res);
});

router.get("/contadorNormal", function (req, res) {
    usuarioController.contadorNormal(req, res);
});

router.get("/mostrar", function (req, res) {
    usuarioController.mostrarPele2(req, res);
});

router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/inserir/:idUsuario", function (req, res) {
    usuarioController.inserir(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.entrar(req, res);
});

router.get("/mostrarPele/:idUsuario", function (req, res) {
    usuarioController.mostrarPele(req, res);
});

module.exports = router;
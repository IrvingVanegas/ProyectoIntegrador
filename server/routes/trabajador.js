const { Router } = require("express");
const router = Router();
const Trabajador = require('../models/Trabajador');

router.post('/Agregar/Trabajador/', (req, res, next) => {
    const {nombre} = req.body;
    const {idEmpresa} = req.body;
    const {contrasena} = req.body;
    const {correo} = req.body;


  console.log(req.body);
    let sql = "INSERT INTO tabajador(nombre, idEmpresa, contrasena, correo) VALUES ('"+nombre+"','"+idEmpresa+"','"+contrasena+"',"+correo+");";
    Trabajador.Agregar(res,sql);
    console.log(sql);
});


module.exports = router;
//node src/index.js
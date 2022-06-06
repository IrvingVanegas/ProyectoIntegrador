const conexion      = require('../database')();
const jwt           = require('jsonwebtoken');
const server_config = require('config');

function Listar(req, res){
    conexion.query("SELECT * FROM trabajador").
    then(rows => {
        const accessToken = jwt.sign({ idtrabajador: rows[0].idApoyo }, server_config.get('app.JWT_SECRET'), {
            expiresIn: "1d"
        });
        res.header("Access-Control-Allow-Origin", "*");
        //madamos los datos obtenidos
        res.status(200).json({
            rows
        });
        //madamos error si hay algun problema
        res.status(401).json({
                msg : 'no existe'
        })
    }).catch(err => {
        console.log(err);
    });
}

function Agregar(res, sql){
    conexion.query(sql).
    then(row => {

        if (row.length == 0) {
            res.header("Access-Control-Allow-Origin", "*");
            res.status(404).json({

            });
        } else {
            res.header("Access-Control-Allow-Origin", "*");
            //madamos los datos obtenidos
            res.status(200).json({
                //rows
            });
            //madamos error si hay algun problema
            res.status(401).json({
                    msg : 'no existes'
            })

        }

    }).catch(err => {
        console.log(err);
    });
}

module.exports = {
    Listar,Agregar,
}
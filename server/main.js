const express = require("express");
const mysql = require("mysql2/promise");

let db = null;
const app = express();

app.use(express.json());

app.post('/create-user', async(req, res, next)=>{
    const nombre = req.body.nombre;
    const idempresa = req.body.idempresa;
    const contrasena = req.body.contrasena;
    const correo = req.body.correo;


    await db.query("INSERT INTO trabajador (nombre, idempresa, contrasena, correo) VALUES (?);"[nombre, idempresa, contrasena, correo]);

    res.json({status:"ok"});
    next();
});

async function main(){
    db = await mysql.createConnection({
        host: "127.0.0.1",
        user: "root",
        password: "",
        database: "turismo-bd",
        timezone: "+00:00",
        charset: "utf8mb4_unicode_ci",
    });

    app.listen(8080);
}

main();
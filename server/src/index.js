const app = require('./app');

async function main(){
    await app.listen(8080);
    console.log('Server on port 8080: Connected');
}

main();

// const express = require('express');
// const server_config = require('config');
// const cors = require('cors');
// const http = require('http');
// const puerto = server_config.get('app.port');

// let app = express();

// app.use(express.urlencoded({extended : false}));

// app.use(express.json({limit : '20mb'}));

// app.use(cors({
//     origin: 'http://localhost:4000'
// }))

// http.createServer(app).listen(puerto)
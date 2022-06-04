const mysql         = require('mysql');
const server_config = require('config');

module.exports = () => {
  let config = {
    host     : server_config.get('default.host'),
    port     : server_config.get('default.port'),
    user     : server_config.get('default.user'),
    password : server_config.get('default.password'),
    database : server_config.get('default.database'),
  }
  return new Database(config)
}

class Database {
  constructor( config ) {
      this.connection = mysql.createConnection( config )
  }

  query( sql, args ) {
      return new Promise( ( resolve, reject ) => {
          this.connection.query( sql, args, ( err, rows ) => {
              if ( err )
                  return reject( err )
              resolve( rows )
          } )
      } )
  }

  close() {
      return new Promise( ( resolve, reject ) => {
          this.connection.end( err => {
              if ( err )
                  return reject( err )
              resolve()
          } )
      } )
  }
}

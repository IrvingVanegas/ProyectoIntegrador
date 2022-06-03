const mysql         = require('mysql2/promise');
const server_config = require('config');

module.exports = () => {
  let config = {
    host     : server_config.get('12.0.0.1'),
    port     : server_config.get('3306'),
    user     : server_config.get('root'),
    password : server_config.get(''),
    database : server_config.get('turismo-db'),
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
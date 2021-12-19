const mysql = require("mysql2");

function connect1() {
  const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "bookstore",
  });

  connection.connect();
  return connection;
}

module.exports = {
  connect1: connect1,
};

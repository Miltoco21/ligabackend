// import app from "./app.js";
// import { PORT } from "./config.js";
// import { pool } from "./db.js";

// const startServer = async () => {
//   try {
//     await pool.query("SELECT 1"); // Test database connection
//     console.log("DB connection ok ");

//     app.listen(PORT, () => {
//       console.log(`Escuchando puerto`, PORT);
//     });
//   } catch (error) {
//     console.error("Error al coneactar a database: ", error);
//   }
// };

// startServer();
// index.js
import app from "./app.js";
import { PORT } from "./config.js";
import { pool } from "./db.js";

const startServer = async () => {
  try {
    await pool.query("SELECT 1"); // Verifica la conexión a la base de datos
    console.log("Conexión a la base de datos correcta");

    app.listen(PORT, () => {
      console.log(`Servidor escuchando en el puerto ${PORT}`);
    });
  } catch (error) {
    console.error("Error al conectar a la base de datos: ", error);
  }
};

startServer();

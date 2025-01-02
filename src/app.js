import express, { json } from "express";
import rutaEmpleados from '../src/routes/empleados.routes.js'
import rutaIndex from '../src/routes/index.routes.js'
import rutaRegistro from '../src/routes/registro.routes.js'
import rutaLogin from '../src/routes/login.routes.js'
import rutaUsuarios from '../src/routes/usuarios.routes.js'
import rutaHome from "../src/routes/home.routes.js"
import rutaEquipos from "../src/routes/equipos.routes.js"
import rutaJugadores from "../src/routes/jugadores.routes.js"

import cors from "cors"


const app = express()
app.use(cors())
 
app.use(express.json())//json antesde las rutas 




// app.use('/',rutaEmpleados)
// app.use('/',rutaHome)
// app.use('/',rutaIndex)
// app.use('/',rutaRegistro)
// app.use('/',rutaLogin)
// app.use('/',rutaUsuarios)
// app.use('/',rutaEquipos)
// app.use('/',rutaJugadores)

app.use('/empleados', rutaEmpleados);
app.use('/home', rutaHome);
app.use('/registro', rutaRegistro);
app.use('/login', rutaLogin);
app.use('/usuarios', rutaUsuarios);
app.use('/equipos', rutaEquipos);
app.use('/jugadores', rutaJugadores);


app.use((req,res,next )=>{
  res.status(404).json({
    message:'La ruta solicitada no existe'
  })
})


export default app




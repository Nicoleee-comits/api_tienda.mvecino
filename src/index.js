// Archivo: src/index.js
require('dotenv').config();
const express = require('express');
const cors = require('cors');
const { sequelize } = require('../models');

// 1. IMPORTAMOS NUESTRAS RUTAS
const usuarioRoutes = require('./routes/usuario.routes');
const productoRoutes = require('./routes/producto.routes');
const ventaRoutes = require('./routes/venta.routes');
const detalleRoutes = require('./routes/detalleVenta.routes');

// 2. CONFIGURACIÓN DEL SERVIDOR
const app = express();
const PORT = process.env.PORT || 3000;

// 3. MIDDLEWARES
app.use(cors()); // permite peticiones de otros orígenes (por ejemplo, Postman)
app.use(express.json()); // convierte JSON entrante en objeto JS (req.body)

// 4. RUTA DE BIENVENIDA
app.get('/api', (req, res) => {
  res.send(' Bienvenido al API de Tienda Mi Vecino ');
});

// 5. MONTAR LAS RUTAS PRINCIPALES
// Cada grupo de rutas tiene su propio prefijo base
app.use('/api/usuarios', usuarioRoutes);
app.use('/api/productos', productoRoutes);
app.use('/api/ventas', ventaRoutes);
app.use('/api/detalles', detalleRoutes);

// 6. INICIAR EL SERVIDOR Y PROBAR CONEXIÓN A LA BASE DE DATOS
app.listen(PORT, async () => {
  console.log(`🚀 Servidor corriendo en http://localhost:${PORT}`);
  try {
    await sequelize.authenticate();
    console.log('✅ Conexión a la base de datos establecida correctamente.');
  } catch (error) {
    console.error('❌ Error al conectar con la base de datos:', error);
  }
});

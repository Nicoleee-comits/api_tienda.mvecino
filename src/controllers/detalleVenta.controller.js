// Archivo: src/controllers/detalleVenta.controller.js
const { DetalleVenta, Producto, Venta } = require('../../models');

// CREAR detalle
const createDetalleVenta = async (req, res) => {
  try {
    const nuevoDetalle = await DetalleVenta.create(req.body);
    res.status(201).json({
      message: 'Detalle de venta creado exitosamente.',
      detalle: nuevoDetalle,
    });
  } catch (error) {
    res.status(500).json({ message: 'Error al crear detalle de venta', error: error.message });
  }
};

// OBTENER todos los detalles
const getAllDetalles = async (req, res) => {
  try {
    const detalles = await DetalleVenta.findAll({
      include: [
        {
          model: Producto,
          as: 'producto', // 
          attributes: ['id', 'nombre', 'precio']
        },
        {
          model: Venta,
          as: 'venta', // 
          attributes: ['id', 'fecha', 'total']
        }
      ]
    });
    res.status(200).json(detalles);
  } catch (error) {
    res.status(500).json({
      message: 'Error al obtener los detalles',
      error: error.message
    });
  }
};


// OBTENER detalle por ID
const getDetalleById = async (req, res) => {
  try {
    const { id } = req.params;
    const detalle = await DetalleVenta.findByPk(id, { include: [Producto, Venta] });
    if (!detalle) return res.status(404).json({ message: 'Detalle no encontrado.' });
    res.status(200).json(detalle);
  } catch (error) {
    res.status(500).json({ message: 'Error al obtener el detalle', error: error.message });
  }
};

// ELIMINAR detalle
const deleteDetalle = async (req, res) => {
  try {
    const { id } = req.params;
    const eliminado = await DetalleVenta.destroy({ where: { id } });
    if (eliminado === 1) {
      res.status(200).json({ message: 'Detalle eliminado exitosamente.' });
    } else {
      res.status(404).json({ message: 'Detalle no encontrado.' });
    }
  } catch (error) {
    res.status(500).json({ message: 'Error al eliminar el detalle', error: error.message });
  }
};

module.exports = { createDetalleVenta, getAllDetalles, getDetalleById, deleteDetalle };

// Archivo: src/controllers/venta.controller.js
const { Venta, Usuario, DetalleVenta } = require('../../models');

// CREAR venta
const createVenta = async (req, res) => {
  try {
    const nuevaVenta = await Venta.create(req.body);
    res.status(201).json({
      message: 'Venta registrada exitosamente.',
      venta: nuevaVenta,
    });
  } catch (error) {
    res.status(500).json({ message: 'Error al registrar la venta', error: error.message });
  }
};

// OBTENER todas las ventas
const getAllVentas = async (req, res) => {
  try {
    const ventas = await Venta.findAll({
      include: [Usuario, DetalleVenta],
    });
    res.status(200).json(ventas);
  } catch (error) {
    res.status(500).json({ message: 'Error al obtener las ventas', error: error.message });
  }
};

// OBTENER venta por ID
const getVentaById = async (req, res) => {
  try {
    const { id } = req.params;
    const venta = await Venta.findByPk(id, { include: [Usuario, DetalleVenta] });
    if (!venta) return res.status(404).json({ message: 'Venta no encontrada.' });
    res.status(200).json(venta);
  } catch (error) {
    res.status(500).json({ message: 'Error al obtener la venta', error: error.message });
  }
};

// ELIMINAR venta
const deleteVenta = async (req, res) => {
  try {
    const { id } = req.params;
    const eliminado = await Venta.destroy({ where: { id } });
    if (eliminado === 1) {
      res.status(200).json({ message: 'Venta eliminada exitosamente.' });
    } else {
      res.status(404).json({ message: 'Venta no encontrada.' });
    }
  } catch (error) {
    res.status(500).json({ message: 'Error al eliminar la venta', error: error.message });
  }
};

module.exports = { createVenta, getAllVentas, getVentaById, deleteVenta };


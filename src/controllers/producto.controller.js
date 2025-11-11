// Archivo: src/controllers/producto.controller.js
const { Producto } = require('../../models');

// CREAR producto
const createProducto = async (req, res) => {
  try {
    const nuevoProducto = await Producto.create(req.body);
    res.status(201).json({
      message: 'Producto creado exitosamente.',
      producto: nuevoProducto,
    });
  } catch (error) {
    res.status(500).json({ message: 'Error al crear el producto', error: error.message });
  }
};

// OBTENER todos los productos
const getAllProductos = async (req, res) => {
  try {
    const productos = await Producto.findAll();
    res.status(200).json(productos);
  } catch (error) {
    res.status(500).json({ message: 'Error al obtener los productos', error: error.message });
  }
};

// OBTENER producto por ID
const getProductoById = async (req, res) => {
  try {
    const { id } = req.params;
    const producto = await Producto.findByPk(id);
    if (!producto) {
      return res.status(404).json({ message: 'Producto no encontrado.' });
    }
    res.status(200).json(producto);
  } catch (error) {
    res.status(500).json({ message: 'Error al obtener el producto', error: error.message });
  }
};

// ACTUALIZAR producto
const updateProducto = async (req, res) => {
  try {
    const { id } = req.params;
    const producto = await Producto.findByPk(id);
    if (!producto) {
      return res.status(404).json({ message: 'Producto no encontrado.' });
    }
    await producto.update(req.body);
    res.status(200).json({ message: 'Producto actualizado exitosamente.', producto });
  } catch (error) {
    res.status(500).json({ message: 'Error al actualizar el producto', error: error.message });
  }
};

// ELIMINAR producto
const deleteProducto = async (req, res) => {
  try {
    const { id } = req.params;
    const eliminado = await Producto.destroy({ where: { id } });
    if (eliminado === 1) {
      res.status(200).json({ message: 'Producto eliminado exitosamente.' });
    } else {
      res.status(404).json({ message: 'Producto no encontrado.' });
    }
  } catch (error) {
    res.status(500).json({ message: 'Error al eliminar el producto', error: error.message });
  }
};

module.exports = {
  createProducto,
  getAllProductos,
  getProductoById,
  updateProducto,
  deleteProducto,
};

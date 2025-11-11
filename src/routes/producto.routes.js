const { Router } = require('express');
const {
  createProducto,
  getAllProductos,
  getProductoById,
  updateProducto,
  deleteProducto,
} = require('../controllers/producto.controller');

const router = Router();

router.post('/', createProducto);
router.get('/', getAllProductos);
router.get('/:id', getProductoById);
router.put('/:id', updateProducto);
router.delete('/:id', deleteProducto);

module.exports = router;

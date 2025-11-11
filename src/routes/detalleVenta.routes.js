const { Router } = require('express');
const {
  createDetalleVenta,
  getAllDetalles,
  getDetalleById,
  deleteDetalle,
} = require('../controllers/detalleVenta.controller');

const router = Router();

router.post('/', createDetalleVenta);
router.get('/', getAllDetalles);
router.get('/:id', getDetalleById);
router.delete('/:id', deleteDetalle);

module.exports = router;

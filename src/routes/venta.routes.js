const { Router } = require('express');
const {
  createVenta,
  getAllVentas,
  getVentaById,
  deleteVenta,
} = require('../controllers/venta.controller');

const router = Router();

router.post('/', createVenta);
router.get('/', getAllVentas);
router.get('/:id', getVentaById);
router.delete('/:id', deleteVenta);

module.exports = router;

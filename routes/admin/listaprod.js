var express = require('express');
var router =express.Router();
var listaprodModel = require('../../models/listaprodModel');


/**listar las novedades*/
router.get('/', async function (req,res,next){

    var listaprod = await listaprodModel.getListaprod ();
        res.render('admin/listaprod',{
        layout:'admin/layout',
        persona: req.session.nombre,
        listaprod
        
    });
});

/**Eliminar los productos */
router.get('/eliminar/:id', async (req,res,next) => {
    var id = req.params.id;
    await listaprodModel.deleteProductoById(id);
    res.redirect('/admin/listaprod')
}); //cierra get de eliminar//



module.exports = router;
var express = require('express');
var router =express.Router();
var novedadesModel = require('../../models/novedadesModel');


/**listar las novedades*/
router.get('/', async function (req,res,next){

    var novedades = await novedadesModel.getNovedades ();
        res.render('admin/novedades',{
        layout:'admin/layout',
        persona: req.session.nombre,
        novedades
        
    });
});

/**Eliminar los productos */
router.get('/eliminar/:id', async (req,res,next) => {
    var id = req.params.id;
    await novedadesModel.deleteNovedadById(id);
    res.redirect('/admin/novedades')
}); //cierra get de eliminar//



module.exports = router;
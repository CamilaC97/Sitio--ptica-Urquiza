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

/**agrega productos a la bd */
router.get ('/agregarprod', (req,res,next) =>{
    res.render('admin/agregarprod',{ //agregar.hbs
        layout: 'admin/layout'
    }) //cierra render//
});//cierra get//

router.post ('/agregarprod', async (req,res,next) => {
    try {
        if (req.body.marca != "" && req.body.modelo != "") {
            await listaprodModel.insertProducto(req.body);
            res.redirect ('/admin/listaprod')
        } else {
            res.render ('admin/agregarprod',{
                layout:'admin/layout',
                error: true,
                message: 'Todos los campos son requeridos'
            })
        }
    } catch (error) {
        console.log(error)
        res.render('admin/agregarprod',{
            layout: 'admin/layout',
            error: true,
            message: 'No se cargó el nuevo destacado'
        })
    }
}); //cierra agregar prod

router.get ('/modificarprod/:id',async (req,res,next) =>{
    var id = req.params.id;
    var producto = await listaprodModel.getProductoById(id);
    res.render('admin/modificarprod', {
        layout: 'admin/layout',
        producto
    });
}); //cierre get modi

router.post('/modificarprod', async (req,res,next) => {
    try {
        var obj = {
            marca:req.body.marca,
            modelo: req.body.modelo,
            
        }

        console.log(obj) //para ver si trae los datos
        await listaprodModel.modificarProductoById(obj, req.body.id);
        res.redirect('/admin/listaprod');
    } catch (error) {
        console.log(error)
        res.render('admin/modificarprod',{
            layout: 'admin/layout',
            error: true,
            message: 'No se modifico el destacado'
        })
    }
});


module.exports = router;
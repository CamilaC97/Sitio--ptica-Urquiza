var express = require('express');
var router =express.Router();
var listaprodModel = require('../../models/listaprodModel');
var util = require ('util');
var cloudinary = require('cloudinary').v2;
const uploader = util.promisify(cloudinary.uploader.upload);
const destroy = util.promisify(cloudinary.uploader.destroy);


/**listar las novedades*/
router.get('/', async function (req,res,next){

    var listaprod = await listaprodModel.getListaprod ();

    listaprod = listaprod.map(producto => {
        if (producto.img_id) {
            const imagen = cloudinary.image(producto.img_id, {
                width: 100,
                height: 100,
                crop: 'fill'
            });
            return {
                ...producto,
                imagen
            }
        } else {
            return {
                ...producto,
                imagen: ''
            }
        }
    });
        res.render('admin/listaprod',{
        layout:'admin/layout',
        persona: req.session.nombre,
        listaprod
        
    });
});

/**Eliminar los productos */
router.get('/eliminar/:id', async (req,res,next) => {
    var id = req.params.id;
    let producto = await listaprodModel.getProductoById(id);
    if (producto.img_id) {
        await (destroy(producto.img_id));
    }
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

        var img_id = '';

        if (req.files && Object.keys(req.files).length > 0){
            imagen = req.files.imagen;
            img_id = (await uploader (imagen.tempFilePath)).public_id;
        }

        if (req.body.marca != "" && req.body.modelo != "") {
            await listaprodModel.insertProducto({
                ...req.body, //spread, marca y modelo
                img_id
            });
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

router.get('/modificarprod/:id', async (req, res, next) => {
    var id = req.params.id;
    var producto = await listaprodModel.getProductoById(id);
    res.render('admin/modificarprod', {
        layout: 'admin/layout',
        producto
    });
});

router.post('/modificarprod', async (req, res, next) => {
    try {
        let img_id = req.body.img_original;
        let borrar_img_vieja = false;
        if (req.body.img_delete === "1") {
            img_id = null;
            borrar_img_vieja = true;
     } else {
        if (req.files && Object.keys(req.files).length > 0){
            imagen = req.files.imagen;
            img_id = (await uploader (imagen.tempFilePath)).public_id;
            borrar_img_vieja = true;
        }
     }
    if (borrar_img_vieja && req.body.img_original) {
        await (destroy(req.body.img_original));
    }
        var obj = {
            marca: req.body.marca,
            modelo: req.body.modelo,
            img_id
        }
    await listaprodModel.modificarProductoById(obj, req.body.id);
    res.redirect('/admin/listaprod');
    } catch (error) {
        console.log(error)
        res.render('admin/modificarprod', {
            layout: 'admin/layout',
            error: true, 
            message: 'El producto destacado no fue modificado'
        })
    }
});
 //cierre modi




module.exports = router;
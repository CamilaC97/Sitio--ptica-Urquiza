var express = require('express');
var router = express.Router();
var novedadesModel = require('../../models/novedadesModel');
var util = require('util');
var cloudinary = require('cloudinary').v2;

const uploader = util.promisify(cloudinary.uploader.upload);


/**listar las novedades*/
router.get('/', async function (req, res, next) {

    var novedades = await novedadesModel.getNovedades();

    novedades = novedades.map(novedad => {
        if (novedad.img_id) {
            const imagen = cloudinary.image(novedad.img_id, {
                width: 100,
                height: 100,
                crop: 'fill'
            });
            return {
                ...novedad,
                imagen
            }
        } else {
            return {
                ...novedad,
                imagen: ''
            }
        }
    });

    res.render('admin/novedades', {
        layout: 'admin/layout',
        persona: req.session.nombre,
        novedades

    });
});

/**Eliminar los productos */
router.get('/eliminar/:id', async (req, res, next) => {
    var id = req.params.id;
    await novedadesModel.deleteNovedadById(id);
    res.redirect('/admin/novedades')
}); //cierra get de eliminar//

router.get('/agregar', (req, res, next) => {
    res.render('admin/agregar', { //agregar.hbs
        layout: 'admin/layout'
    }) //cierra render//
});//cierra get//

router.post('/agregar', async (req, res, next) => {
    try {
        var img_id = '';

        if (req.files && Object.keys(req.files).lenght > 0) {
            imagen = req.files.imagen;
            img_id = (await uploader(imagen.tempFilePath)).public_id;
        }
        if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != "") {
            await novedadesModel.insertNovedad({
                ...req.body, //spread titulo,subt y cuerpo
                img_id
            });
            res.redirect('/admin/novedades')
        } else {
            res.render('admin/agregar', {
                layout: 'admin/layout',
                error: true,
                message: 'Todos los campos son requeridos'
            })
        }
    } catch (error) {
        console.log(error)
        res.render('admin/agregar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se cargó la novedad'
        })
    }
})

router.get('/modificar/:id', async (req, res, next) => {
    var id = req.params.id;
    var novedad = await novedadesModel.getNovedadById(id);
    res.render('admin/modificar', {
        layout: 'admin/layout',
        novedad
    });
}); //cierre get modi

router.post('/modificar', async (req, res, next) => {
    try {
        var obj = {
            titulo: req.body.titulo,
            subtitulo: req.body.subtitulo,
            cuerpo: req.body.cuerpo
        }

        console.log(obj) //para ver si trae los datos
        await novedadesModel.modificarNovedadById(obj, req.body.id);
        res.redirect('/admin/novedades');
    } catch (error) {
        console.log(error)
        res.render('admin/modificar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se modifico la novedad'
        })
    }
});

module.exports = router;
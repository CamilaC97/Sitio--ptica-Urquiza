var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var listaprodModel = require('../models/listaprodModel');
var cloudinary = require('cloudinary').v2;

/* GET home page. */
router.get('/', async function (req, res, next) {

  var listaprod = await listaprodModel.getListaprod();
  listaprod = listaprod.splice(0, 4);
  listaprod = listaprod.map(producto => {
    if (producto.img_id) {
      const imagen = cloudinary.url(producto.img_id, {
        width: 460,
        height:460,
        crop: 'fill'
      });
      return {
        ...producto,
        imagen
      }
    } else {
      return{
        ...producto,
        imagen:'/images/noimage.jpg'
      }
    }
  });

  res.render('index', {
    listaprod
  });
});

router.post('/', async (req, res, next) => {

  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var email = req.body.email;
  var mensaje = req.body.mensaje;
  //console.log(req.body)

  var obj = {
    to: 'cobo.camay@gmail.com',
    subject: 'Contacto desde la Web',
    html: nombre + " " + apellido + " se contactó a traves de la sección de contacto y quiere más información a este correo:"
      + email
  } //cierra var obj

  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }

  });//cierra transporter

  var info = await transporter.sendMail(obj);

  res.render('index', {
    message: 'Mensaje enviado correctamente',
  });
})

module.exports = router;

//prueba
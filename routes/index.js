var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var listaprodModel = require('../models/listaprodModel')

/* GET home page. */
router.get('/', async function (req, res, next) {

  var listaprod = await listaprodModel.getListaprod();
  
  res.render('index',{
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
    to: 'cobo.camay@gmai.com',
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
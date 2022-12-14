-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 30, 2022 at 09:21 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyectourquiza`
--

-- --------------------------------------------------------

--
-- Table structure for table `listaprod`
--

DROP TABLE IF EXISTS `listaprod`;
CREATE TABLE IF NOT EXISTS `listaprod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(250) NOT NULL,
  `modelo` varchar(250) NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listaprod`
--

INSERT INTO `listaprod` (`id`, `marca`, `modelo`, `img_id`) VALUES
(14, 'WELLINGTON POLO CLUB', 'MOD 2063', 'ubvkyjsyh36vmxfauypl'),
(13, 'VOGUE', 'VO 5395S', 'opinr0il5mznwc52m7ne'),
(12, 'RAYBAN', 'RB 3565', 'vtgyh1meyfunemzt1krs'),
(15, 'RAYBAN', 'RB 2180', 'izsoaifgnmcqipggwxrd'),
(16, 'OSSADA', 'OS-1276', 'ry9ntxkasanbk4inewqm'),
(17, 'RAYBAN', 'RB 4171', 'gavtjd64xdmkwxvu1bdz'),
(19, 'ANDREA', 'AK 1270', 't7fvzkuxz4czp16blmtj'),
(20, 'VOGUE', 'VO 5285', 'urowqm6ikobmfggx4nsm'),
(21, 'RAYBAN', 'RB 3602M', 'crc3qmom5rvhz0qn8chs');

-- --------------------------------------------------------

--
-- Table structure for table `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, '??Qu?? lentes usar seg??n el tipo de rostro?', 'Recomendaciones a la hora de seleccionar el formato indicado, de acuerdo al rostro del individuo.', 'La mayor??a de las personas, por una raz??n u otra, necesitan utilizar lentes ??pticos. Algunos los utilizan todo el d??a, otros s??lo para trabajar o como descanso. Incluso, existen personas que no necesitan una graduaci??n espec??fica, pero usan lentes por razones est??ticas.\r\n\r\n \r\n\r\nLos lentes se han convertido en un accesorio de moda. Las marcas de lujo m??s famosas tienen su propia l??nea de marcos para lentes. Personajes c??lebres han elegido los lentes ??pticos para dar car??cter a su look. Podemos citar como ejemplo los lentes redondos de John Lennon, las gafas oscuras de Karl Lagerfeld, los grandes espejos de Woody Allen, los lentes que populariz?? Sof??a Loren, entre otros.\r\n\r\n \r\n\r\nLos lentes ??pticos para mujer fueron los primeros en comenzar a diversificar sus opciones. Adem??s de las diferentes formas, se empezaron a usar nuevos materiales y colores. Hoy en d??a, la variedad de modelos es infinita, y es natural que nos mareemos un poco al momento de elegir nuestros lentes ??pticos. Por eso, en esta nota, te proponemos una peque??a gu??a para elegir los lentes m??s adecuados seg??n tu tipo de rostro. ??Comenzamos?\r\n\r\n \r\n\r\nAntes de sumergirnos en el tema, queremos hacerte una recomendaci??n sobre los cristales. Recuerda que los lentes ??pticos con graduaci??n (para miop??a, astigmatismo o lo que sea) deben ser indicados por un oftalm??logo. Es perjudicial para tu vista utilizar lentes que no le corresponden. Si piensas que tienes problemas para ver adecuadamente, haz una consulta con tu m??dico para que te d?? las indicaciones correspondientes.\r\n\r\n \r\n\r\nOtra cuesti??n es que los cristales pueden tener diferentes caracter??sticas. Se utilizan distintos tipos de materiales para obtener lentes m??s livianos, resistentes o delgados (seg??n sea el caso). Tambi??n se pueden agregar filtros para proteger la vista contra los rayos UV o la luz azul. Todo esto lo podr??s ver en las casas especializadas en ??ptica.\r\n\r\n \r\n\r\nSin embargo, puede ser que te enamores de un marco para lentes ??pticos en una tienda de ropa o de accesorios. ??Qu?? pasa si esto sucede? No hay ning??n problema, ya que puedes comprar los marcos de los lentes ??pticos y luego llevarlos a la casa ??ptica para que agreguen los cristales. Es m??s, muchas personas prefieren esta opci??n, ya que el precio suele ser m??s barato.\r\n\r\n \r\n\r\n??C??mo elegir lentes seg??n tu rostro?\r\n\r\n \r\n\r\nRostro coraz??n\r\n\r\n \r\n\r\nSi tienes una frente ancha, barbilla puntiaguda y mejillas muy marcadas, tu rostro tiene forma de coraz??n. Te beneficiar??n armazones redondos u ovalados. En el caso de los lentes ??pticos para hombres, puedes elegir un armaz??n cuadrado con colores sobrios para acentuar tus rasgos.\r\n\r\n \r\n\r\nRostro ovalado\r\n\r\n \r\n\r\nSi tu rostro es ancho en la zona de las mejillas y m??s fino en la parte del ment??n, tu cara tiene forma ovalada. Este tipo de rostro se considera el m??s proporcionado y, como el ojo humano basa la belleza en la proporci??n y la simetr??a, se dice que el rostro ovalado es ???ideal???, que puede lucir cualquier tipo de lentes ??pticos. Si tienes este tipo de rostro, lo importante es que elijas algo con lo que te sientas a gusto.\r\n\r\n \r\n\r\nRostro cuadrado\r\n\r\n \r\n\r\nSi tu maxilar es amplio y marcado, tienes un rostro cuadrado. Se suele diferenciar entre caras estrechas con maxilar ancho (rostro cuadrado) y caras largas con maxilar ancho (rostro rectangular). Para ambos tipos de rostro se recomiendan lentes ??pticos con armazones redondos u ovalados medianos o grandes, para disimular y dar proporci??n a los ??ngulos de la mand??bula. En el caso de los anteojos de sol para hombre, se pueden elegir gafas con dise??o ???de aviador???.\r\n\r\n \r\n\r\nRostro redondo\r\n\r\n \r\n\r\nSi tu frente es ancha, tus mejillas voluminosas y la cara no es larga, tu rostro es redondeado. Con este tipo de cara se recomiendan armazones rectangulares, para que rompan con la redondez de las formas de la cara y mantenga un aspecto juvenil.\r\n\r\n \r\n\r\nEstos consejos puedes utilizarlos tanto para lentes ??pticos como para lentes de sol para hombre y mujer. Aunque, lo m??s importante es tu deseo. Si te mides un modelo de anteojos, te gusta y te sientes genial utiliz??ndolos, seguro que son los lentes ideales para ti. Lo m??s importante es sentirnos a gusto con nuestro estilo.\r\n\r\n \r\n\r\nLa confianza es uno de los accesorios m??s atractivos, y no podr??s lucirla si los marcos que compraste no te convencen. La primera persona que debe estar complacida eres t??.\r\n\r\n \r\n\r\n[Img #66776]\r\n\r\n \r\n\r\n??Qu?? pasa con los colores?\r\n\r\n \r\n\r\nAl principio, los lentes ??pticos se fabricaban solo en metal. Entonces, la elecci??n de color era bastante f??cil, porque hab??a pocas opciones. En cambio, actualmente, la oferta es infinita: encontramos armazones de todos los colores, de diversos materiales que otorgan diferentes texturas y brillos, incluso estampados como animal print.\r\n\r\n \r\n\r\nUn elemento importante para nuestros lentes ??pticos (y toda nuestra apariencia) es considerar las reglas de la colorimetr??a. ??Qu?? es esto? La colorimetr??a es la ciencia que estudia los colores e intenta cuantificar la percepci??n de estos. Los asesores de imagen son especialistas en aplicarla.\r\n\r\n \r\n\r\nPara elegir lentes, deber??s observar atentamente tu color de piel y cabello. La mejor forma de determinar cu??les son los colores adecuados para ti es consultar con un asesor de imagen que pondr?? frente a tu rostro diferentes gamas de colores y las analizar??.\r\n\r\n \r\n\r\nDe todas, existen test simples de Internet que puedes hacer. Una de las preguntas definitivas para determinar si tienes una piel fr??a o c??lida es ??c??mo reacciona tu piel al sol? La regla es la siguiente: si al exponerte al sol, obtienes un tono bronceado, es c??lida; si se pone roja, se quema o se opaca, es fr??a. Adentrarte en este tema es muy ??til para elegir tus marcos, prendas, maquillaje e incluso el tinte para el cabello o el esmalte de las u??as.\r\n\r\n \r\n\r\nEsperamos que esta nota te haya ayudado a orientarte en la b??squeda de tus lentes ??pticos perfectos. Si tienes la posibilidad, te recomendamos adquirir m??s de un par. De esta manera podr??s intercambiarlos para que acompa??en tu look y lo complementen, produciendo sobre ti y sobre los dem??s el efecto que tanto deseas.', 'rtlnt7g1uun5xzddl74c'),
(3, 'Los cristales y armazones de anteojos se han incrementado un 50% en lo que va del a??o ', 'Por la escasez de insumos en el sector hablan de demoras de hasta 60 d??as para la entrega de un par de lentes.', 'La falta de d??lares oficiales y el incremento del d??lar blue ha provocado serios problemas para conseguir insumos importados y el sector de las ??pticas no es la excepci??n de esta problem??tica, al punto que los protagonistas de esta actividad hablan de que en lo que va del a??o la materia prima para fabricar los anteojos ha subido hasta un 50% en promedio. Y que adem??s, como otra consecuencia, la situaci??n produce fuertes demoras a la hora de conseguir renovar los lentes recetados de hasta 60 d??as, seg??n el an??lisis de Orlando Cabello, que preside la C??mara de ??pticas y Afines de San Juan.\r\n\r\n\"Los laboratorios que nos proveen los armazones y los cristales para armar los anteojos est??n teniendo muchos problemas para conseguir los insumos, que deben traer del exterior\", dijo el directivo.\r\n\r\nLas actividad de las ??pticas es una de las muchas que en el pa??s est??n teniendo graves dificultades para conseguir insumos importados, y comparten el problema por ejemplo con las farmacias y las industrias pl??sticas y las qu??micas, para citar algunos ejemplos.\r\n\r\nCabello manifest?? que en lo que va del a??o los insumos para armar los anteojos recetados, como ocurre con los armazones y cristales, se han incrementado hasta un 50%. Esto repercute en el precio final de los lentes. Seg??n explic??, lo que puede suceder, adem??s de aumentar de precio es que tambi??n el problema se vea reflejado en la calidad de los productos que se utilizan.\r\n\r\nPara dar ejemplos de precios, puede decirse que un par de anteojos recetados parte desde los $2.800 y puede llegar a los $150.000, cifras que est??n lejos de los bolsillos de muchos sanjuaninos.\r\n\r\nEl mayor inconveniente es que en el negocio de las ??pticas, tal y como lo explic?? Cabello, el total de los insumos tanto para armar los marcos de los lentes, como para los cristales regulados son importados. Si bien se arman en Argentina, las patillas y los armazones vienen de afuera. Por lo tanto, la crisis a la que puede llegarse con esta situaci??n puede tener un alto impacto. Al punto que el dirigente sostuvo que hay mucha preocupaci??n en la actividad en el pa??s y San Juan no es la excepci??n. Cabello se anim?? a pronosticar que si no se da soluci??n por parte del Gobierno nacional al problema de adquirir los insumos en el t??rmino de los pr??ximos tres a cuatro mes se podr??an quedar sin mercader??a para vender.\r\n\r\nLa actividad de las ??pticas en San Juan nuclea a unos 50 negocios en la provincia y da empleo a unos 250 trabajadores. De modo que si no llegan las soluciones que hacen falta estar??n en riesgo las fuentes de trabajo.\r\n\r\nEn una recorrida por algunas ??pticas de la provincia se pudo constatar faltantes de productos muy b??sicos, como por ejemplo cristales org??nicos blancos, que los usa la mayor??a de la gente con anteojos.\r\n\r\n\"Hay mucha falta de materiales, cuesta conseguirlos e inclusive lo ??nico que estamos pudiendo hacer es comprar lo que los laboratorios nos proveen en cantidades limitadas como para que a todos nos llegue un poco y que todos podamos seguir trabajando\", dijo el due??o de una ??ptica en el centro de la ciudad.\r\n\r\nEn su mayor??a, los due??os de ??pticas reportaron la misma situaci??n, pero con temor de hablar p??blicamente porque podr??a alarmar a los clientes, ya que tienen la expectativa de que la situaci??n se pueda normalizar.\r\n\r\nHay casos en los que las demoras para recibir un par de anteojos recetados puede llegar a los 60 d??as, cuando los plazos normales antes iban desde una semana a 15 d??as, en situaciones excepcionales. Pero ahora, por las voces del sector, las demoras son moneda corriente.\r\n\r\nPara quienes llevan a??os en el rubro de las ??pticas en la provincia, lo normal era tener dos listas de actualizaci??n de precios al a??o, pero en lo que va del 2022 ya han recibido cuatro listas con nuevos valores de los productos.\r\n\r\n\"Otra lucha que mantenemos es con los anteojos descartables\", dijo Cabello, aunque reconoci?? que el problema est?? tendiendo a desaparecer. \"Siempre hay que acudir al profesional oftalm??logo para que haga la receta\", recomend?? el presidente.\r\n\r\nTambi??n habl?? de las graves dificultades por las que atraves?? el sector durante la pandemia, aunque reconoci?? que lograron que los habilitaran a abrir antes que otros rubros. Se??al?? que la gran mayor??as de los locales de los comercios son alquilados y que, como todo negocio, tienen que afrontar los problemas de sueldos y del pago de los impuestos y servicios para poder seguir funcionando. \"Prestamos un servicio muy importante\", dijo Cabello.\r\nLa situaci??n en el pa??s\r\n\r\nSeg??n datos de la C??mara Argentina de Industrias ??pticas, el sector viene muy afectado por el contrabando, al punto que se registra una ca??da en la venta de lentes oft??lmicos del orden de entre el 40% y el 50% en todo el pa??s. Al mismo tiempo el consumo de anteojos de sol tambi??n tiene una ca??da del 80% y que por eso la combinaci??n ha sido letal para un sector que emplea a m??s de 15.000 trabajadores.\r\n\r\nEn este contexto, desde la c??mara se ha solicitado al Gobierno nacional que se controle los productos que est??n en la calle porque, adem??s de causar un da??o al sector, representan un riesgo para la salud visual de la poblaci??n.\r\n\r\nUn informe econ??mico sobre el mercado de la ??ptica en Argentina, se??ala que antes de la pandemia del covid-19 ya se registraba la masiva presencia de vendedores ambulantes de anteojos de sol en las principales ciudades del pa??s y en las playas, debido a la dif??cil situaci??n econ??mica de la poblaci??n.', 'wxmr9j5gs48bd9wxovsr');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'camilac', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Laura', '5eac43aceba42c8757b54003a58277b5');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

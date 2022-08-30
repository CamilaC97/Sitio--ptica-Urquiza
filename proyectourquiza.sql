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
(1, '¿Qué lentes usar según el tipo de rostro?', 'Recomendaciones a la hora de seleccionar el formato indicado, de acuerdo al rostro del individuo.', 'La mayoría de las personas, por una razón u otra, necesitan utilizar lentes ópticos. Algunos los utilizan todo el día, otros sólo para trabajar o como descanso. Incluso, existen personas que no necesitan una graduación específica, pero usan lentes por razones estéticas.\r\n\r\n \r\n\r\nLos lentes se han convertido en un accesorio de moda. Las marcas de lujo más famosas tienen su propia línea de marcos para lentes. Personajes célebres han elegido los lentes ópticos para dar carácter a su look. Podemos citar como ejemplo los lentes redondos de John Lennon, las gafas oscuras de Karl Lagerfeld, los grandes espejos de Woody Allen, los lentes que popularizó Sofía Loren, entre otros.\r\n\r\n \r\n\r\nLos lentes ópticos para mujer fueron los primeros en comenzar a diversificar sus opciones. Además de las diferentes formas, se empezaron a usar nuevos materiales y colores. Hoy en día, la variedad de modelos es infinita, y es natural que nos mareemos un poco al momento de elegir nuestros lentes ópticos. Por eso, en esta nota, te proponemos una pequeña guía para elegir los lentes más adecuados según tu tipo de rostro. ¿Comenzamos?\r\n\r\n \r\n\r\nAntes de sumergirnos en el tema, queremos hacerte una recomendación sobre los cristales. Recuerda que los lentes ópticos con graduación (para miopía, astigmatismo o lo que sea) deben ser indicados por un oftalmólogo. Es perjudicial para tu vista utilizar lentes que no le corresponden. Si piensas que tienes problemas para ver adecuadamente, haz una consulta con tu médico para que te dé las indicaciones correspondientes.\r\n\r\n \r\n\r\nOtra cuestión es que los cristales pueden tener diferentes características. Se utilizan distintos tipos de materiales para obtener lentes más livianos, resistentes o delgados (según sea el caso). También se pueden agregar filtros para proteger la vista contra los rayos UV o la luz azul. Todo esto lo podrás ver en las casas especializadas en óptica.\r\n\r\n \r\n\r\nSin embargo, puede ser que te enamores de un marco para lentes ópticos en una tienda de ropa o de accesorios. ¿Qué pasa si esto sucede? No hay ningún problema, ya que puedes comprar los marcos de los lentes ópticos y luego llevarlos a la casa óptica para que agreguen los cristales. Es más, muchas personas prefieren esta opción, ya que el precio suele ser más barato.\r\n\r\n \r\n\r\n¿Cómo elegir lentes según tu rostro?\r\n\r\n \r\n\r\nRostro corazón\r\n\r\n \r\n\r\nSi tienes una frente ancha, barbilla puntiaguda y mejillas muy marcadas, tu rostro tiene forma de corazón. Te beneficiarán armazones redondos u ovalados. En el caso de los lentes ópticos para hombres, puedes elegir un armazón cuadrado con colores sobrios para acentuar tus rasgos.\r\n\r\n \r\n\r\nRostro ovalado\r\n\r\n \r\n\r\nSi tu rostro es ancho en la zona de las mejillas y más fino en la parte del mentón, tu cara tiene forma ovalada. Este tipo de rostro se considera el más proporcionado y, como el ojo humano basa la belleza en la proporción y la simetría, se dice que el rostro ovalado es “ideal”, que puede lucir cualquier tipo de lentes ópticos. Si tienes este tipo de rostro, lo importante es que elijas algo con lo que te sientas a gusto.\r\n\r\n \r\n\r\nRostro cuadrado\r\n\r\n \r\n\r\nSi tu maxilar es amplio y marcado, tienes un rostro cuadrado. Se suele diferenciar entre caras estrechas con maxilar ancho (rostro cuadrado) y caras largas con maxilar ancho (rostro rectangular). Para ambos tipos de rostro se recomiendan lentes ópticos con armazones redondos u ovalados medianos o grandes, para disimular y dar proporción a los ángulos de la mandíbula. En el caso de los anteojos de sol para hombre, se pueden elegir gafas con diseño “de aviador”.\r\n\r\n \r\n\r\nRostro redondo\r\n\r\n \r\n\r\nSi tu frente es ancha, tus mejillas voluminosas y la cara no es larga, tu rostro es redondeado. Con este tipo de cara se recomiendan armazones rectangulares, para que rompan con la redondez de las formas de la cara y mantenga un aspecto juvenil.\r\n\r\n \r\n\r\nEstos consejos puedes utilizarlos tanto para lentes ópticos como para lentes de sol para hombre y mujer. Aunque, lo más importante es tu deseo. Si te mides un modelo de anteojos, te gusta y te sientes genial utilizándolos, seguro que son los lentes ideales para ti. Lo más importante es sentirnos a gusto con nuestro estilo.\r\n\r\n \r\n\r\nLa confianza es uno de los accesorios más atractivos, y no podrás lucirla si los marcos que compraste no te convencen. La primera persona que debe estar complacida eres tú.\r\n\r\n \r\n\r\n[Img #66776]\r\n\r\n \r\n\r\n¿Qué pasa con los colores?\r\n\r\n \r\n\r\nAl principio, los lentes ópticos se fabricaban solo en metal. Entonces, la elección de color era bastante fácil, porque había pocas opciones. En cambio, actualmente, la oferta es infinita: encontramos armazones de todos los colores, de diversos materiales que otorgan diferentes texturas y brillos, incluso estampados como animal print.\r\n\r\n \r\n\r\nUn elemento importante para nuestros lentes ópticos (y toda nuestra apariencia) es considerar las reglas de la colorimetría. ¿Qué es esto? La colorimetría es la ciencia que estudia los colores e intenta cuantificar la percepción de estos. Los asesores de imagen son especialistas en aplicarla.\r\n\r\n \r\n\r\nPara elegir lentes, deberás observar atentamente tu color de piel y cabello. La mejor forma de determinar cuáles son los colores adecuados para ti es consultar con un asesor de imagen que pondrá frente a tu rostro diferentes gamas de colores y las analizará.\r\n\r\n \r\n\r\nDe todas, existen test simples de Internet que puedes hacer. Una de las preguntas definitivas para determinar si tienes una piel fría o cálida es ¿cómo reacciona tu piel al sol? La regla es la siguiente: si al exponerte al sol, obtienes un tono bronceado, es cálida; si se pone roja, se quema o se opaca, es fría. Adentrarte en este tema es muy útil para elegir tus marcos, prendas, maquillaje e incluso el tinte para el cabello o el esmalte de las uñas.\r\n\r\n \r\n\r\nEsperamos que esta nota te haya ayudado a orientarte en la búsqueda de tus lentes ópticos perfectos. Si tienes la posibilidad, te recomendamos adquirir más de un par. De esta manera podrás intercambiarlos para que acompañen tu look y lo complementen, produciendo sobre ti y sobre los demás el efecto que tanto deseas.', 'rtlnt7g1uun5xzddl74c'),
(3, 'Los cristales y armazones de anteojos se han incrementado un 50% en lo que va del año ', 'Por la escasez de insumos en el sector hablan de demoras de hasta 60 días para la entrega de un par de lentes.', 'La falta de dólares oficiales y el incremento del dólar blue ha provocado serios problemas para conseguir insumos importados y el sector de las ópticas no es la excepción de esta problemática, al punto que los protagonistas de esta actividad hablan de que en lo que va del año la materia prima para fabricar los anteojos ha subido hasta un 50% en promedio. Y que además, como otra consecuencia, la situación produce fuertes demoras a la hora de conseguir renovar los lentes recetados de hasta 60 días, según el análisis de Orlando Cabello, que preside la Cámara de Ópticas y Afines de San Juan.\r\n\r\n\"Los laboratorios que nos proveen los armazones y los cristales para armar los anteojos están teniendo muchos problemas para conseguir los insumos, que deben traer del exterior\", dijo el directivo.\r\n\r\nLas actividad de las ópticas es una de las muchas que en el país están teniendo graves dificultades para conseguir insumos importados, y comparten el problema por ejemplo con las farmacias y las industrias plásticas y las químicas, para citar algunos ejemplos.\r\n\r\nCabello manifestó que en lo que va del año los insumos para armar los anteojos recetados, como ocurre con los armazones y cristales, se han incrementado hasta un 50%. Esto repercute en el precio final de los lentes. Según explicó, lo que puede suceder, además de aumentar de precio es que también el problema se vea reflejado en la calidad de los productos que se utilizan.\r\n\r\nPara dar ejemplos de precios, puede decirse que un par de anteojos recetados parte desde los $2.800 y puede llegar a los $150.000, cifras que están lejos de los bolsillos de muchos sanjuaninos.\r\n\r\nEl mayor inconveniente es que en el negocio de las ópticas, tal y como lo explicó Cabello, el total de los insumos tanto para armar los marcos de los lentes, como para los cristales regulados son importados. Si bien se arman en Argentina, las patillas y los armazones vienen de afuera. Por lo tanto, la crisis a la que puede llegarse con esta situación puede tener un alto impacto. Al punto que el dirigente sostuvo que hay mucha preocupación en la actividad en el país y San Juan no es la excepción. Cabello se animó a pronosticar que si no se da solución por parte del Gobierno nacional al problema de adquirir los insumos en el término de los próximos tres a cuatro mes se podrían quedar sin mercadería para vender.\r\n\r\nLa actividad de las ópticas en San Juan nuclea a unos 50 negocios en la provincia y da empleo a unos 250 trabajadores. De modo que si no llegan las soluciones que hacen falta estarán en riesgo las fuentes de trabajo.\r\n\r\nEn una recorrida por algunas ópticas de la provincia se pudo constatar faltantes de productos muy básicos, como por ejemplo cristales orgánicos blancos, que los usa la mayoría de la gente con anteojos.\r\n\r\n\"Hay mucha falta de materiales, cuesta conseguirlos e inclusive lo único que estamos pudiendo hacer es comprar lo que los laboratorios nos proveen en cantidades limitadas como para que a todos nos llegue un poco y que todos podamos seguir trabajando\", dijo el dueño de una óptica en el centro de la ciudad.\r\n\r\nEn su mayoría, los dueños de ópticas reportaron la misma situación, pero con temor de hablar públicamente porque podría alarmar a los clientes, ya que tienen la expectativa de que la situación se pueda normalizar.\r\n\r\nHay casos en los que las demoras para recibir un par de anteojos recetados puede llegar a los 60 días, cuando los plazos normales antes iban desde una semana a 15 días, en situaciones excepcionales. Pero ahora, por las voces del sector, las demoras son moneda corriente.\r\n\r\nPara quienes llevan años en el rubro de las ópticas en la provincia, lo normal era tener dos listas de actualización de precios al año, pero en lo que va del 2022 ya han recibido cuatro listas con nuevos valores de los productos.\r\n\r\n\"Otra lucha que mantenemos es con los anteojos descartables\", dijo Cabello, aunque reconoció que el problema está tendiendo a desaparecer. \"Siempre hay que acudir al profesional oftalmólogo para que haga la receta\", recomendó el presidente.\r\n\r\nTambién habló de las graves dificultades por las que atravesó el sector durante la pandemia, aunque reconoció que lograron que los habilitaran a abrir antes que otros rubros. Señaló que la gran mayorías de los locales de los comercios son alquilados y que, como todo negocio, tienen que afrontar los problemas de sueldos y del pago de los impuestos y servicios para poder seguir funcionando. \"Prestamos un servicio muy importante\", dijo Cabello.\r\nLa situación en el país\r\n\r\nSegún datos de la Cámara Argentina de Industrias Ópticas, el sector viene muy afectado por el contrabando, al punto que se registra una caída en la venta de lentes oftálmicos del orden de entre el 40% y el 50% en todo el país. Al mismo tiempo el consumo de anteojos de sol también tiene una caída del 80% y que por eso la combinación ha sido letal para un sector que emplea a más de 15.000 trabajadores.\r\n\r\nEn este contexto, desde la cámara se ha solicitado al Gobierno nacional que se controle los productos que están en la calle porque, además de causar un daño al sector, representan un riesgo para la salud visual de la población.\r\n\r\nUn informe económico sobre el mercado de la óptica en Argentina, señala que antes de la pandemia del covid-19 ya se registraba la masiva presencia de vendedores ambulantes de anteojos de sol en las principales ciudades del país y en las playas, debido a la difícil situación económica de la población.', 'wxmr9j5gs48bd9wxovsr');

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

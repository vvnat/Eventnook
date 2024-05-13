-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2024 a las 22:10:16
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eventnook`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caterings`
--

CREATE TABLE `caterings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `event_type` int(11) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `caterings`
--

INSERT INTO `caterings` (`id`, `name`, `description`, `price`, `event_type`, `contact_number`) VALUES
(1, 'Sabor Mediterráneo', 'Deléitese con nuestra exquisita selección de platos mediterráneos, preparados con ingredientes frescos y sazonados con hierbas aromáticas. Perfecto para bodas al aire libre y cenas de empresa elegantes.', 55.00, 0, '912345678'),
(2, 'Catering Elegance', 'Ofrecemos un servicio de catering elegante y sofisticado, con platos refinados presentados con estilo. Ideal para eventos corporativos y cenas de gala que requieren un toque de distinción.', 70.00, 1, '622123456'),
(3, 'Fusión Creativa', 'Descubre una experiencia culinaria única con nuestra fusión creativa de sabores de todo el mundo. Perfecto para eventos de conciertos y festivales donde la diversidad es bienvenida.', 60.00, 3, '934567890'),
(4, 'Tradición Casera', 'Nuestro servicio de catering ofrece una deliciosa selección de platos caseros, preparados con recetas tradicionales y productos frescos de la región. Ideal para eventos familiares y cenas íntimas.', 60.00, 0, '600234567'),
(5, 'Gastronomía Exquisita', 'Déjese seducir por nuestra gastronomía exquisita, donde cada plato es una obra maestra de sabor y presentación. Perfecto para banquetes de bodas y cenas de empresa exclusivas.', 62.00, 0, '677234567'),
(6, 'Catering del Chef', 'Experimenta la magia de la alta cocina con nuestro catering del chef, donde cada plato es una expresión de creatividad y excelencia culinaria. Ideal para eventos de lujo y celebraciones especiales.', 57.00, 1, '688345678'),
(7, 'Sabor del Este', 'Embárcate en un viaje culinario a través de Europa del Este y Oriente con nuestra selección de platos auténticos y sabrosos. Perfecto para congresos y eventos temáticos.', 55.00, 2, '699456789'),
(8, 'Catering Vegano', 'Descubre el delicioso mundo de la cocina vegana con nuestro servicio de catering, donde cada plato es una explosión de sabor y vitalidad. Ideal para eventos conscientes y respetuosos con el medio ambiente.', 60.00, 0, '611567890'),
(9, 'Catering Delicia', 'Disfruta de una experiencia culinaria única con nuestro servicio de catering Delicia, donde cada plato está cuidadosamente preparado para deleitar tus sentidos. Perfecto para bodas y eventos especiales.', 82.00, 0, '688990011'),
(10, 'Catering Creativo', 'Déjate sorprender por nuestra cocina creativa y vanguardista, donde los sabores se fusionan para crear platos únicos e innovadores. Ideal para eventos de empresa y lanzamientos de productos.', 71.00, 1, '677889900'),
(11, 'Sabor Tradicional', 'Revive la auténtica cocina casera con nuestro catering de sabor tradicional, donde cada plato te transportará a la nostalgia de los sabores de siempre. Perfecto para celebraciones familiares y reuniones íntimas.', 59.00, 0, '688001122'),
(12, 'Catering Saludable', 'Descubre el placer de comer saludablemente con nuestro servicio de catering saludable, donde cada bocado es una explosión de frescura y vitalidad. Ideal para eventos deportivos y conferencias sobre bienestar.', 63.00, 2, '677112233'),
(13, 'Sabor del Mar', 'Sumérgete en una experiencia gastronómica única con nuestro catering del mar, donde los productos frescos del mar son los protagonistas de cada plato. Perfecto para eventos junto a la costa y celebraciones marineras.', 74.00, 3, '688223344'),
(14, 'Catering Gourmet', 'Déjate llevar por el lujo de la alta cocina con nuestro servicio de catering gourmet, donde cada plato es una obra de arte culinaria. Ideal para eventos de gala y cenas de etiqueta.', 80.00, 1, '677334455'),
(15, 'Sabor Auténtico', 'Revive la esencia de la cocina auténtica con nuestro catering, donde cada plato te transportará a tradiciones culinarias únicas. Perfecto para celebraciones familiares y reuniones íntimas.', 40.00, 0, '688001122'),
(16, 'Coffee Break Express', 'Disfrute de nuestro servicio de Coffee Break Express diseñado especialmente para congresos y eventos empresariales. Incluye una selección de café recién hecho, té, jugos, y una variedad de tentempiés dulces y salados para recargar energías.', 10.00, 2, '688990011'),
(17, 'Catering de Refrescos', 'Refresque su reunión con nuestro Catering de Refrescos, que ofrece una amplia variedad de bebidas frías, como agua mineral, refrescos, jugos naturales y bebidas energéticas, junto con una selección de bocadillos y frutas frescas.', 8.00, 2, '677889900'),
(18, 'Break Ligero', 'Este servicio de catering ofrece una pausa ligera durante su congreso, con una selección de café, té, agua, y una variedad de bocadillos saludables como mini sándwiches, frutas frescas, yogures y frutos secos.', 12.00, 2, '688001122'),
(19, 'Tentempiés Energéticos', 'Mantenga la energía durante su evento con nuestro servicio de Tentempiés Energéticos, que ofrece una combinación de barras de cereales, frutos secos, galletas integrales, infusiones energizantes y bebidas isotónicas.', 15.00, 2, '677112233'),
(20, 'Café y Más', 'Nuestro servicio Café y Más proporciona una experiencia de café premium junto con una variedad de opciones adicionales, como croissants, muffins, frutas frescas, yogures, y una selección de tés e infusiones.', 18.00, 2, '688223344'),
(21, 'Fiesta de Sabores', 'Celebre su concierto con nuestra Fiesta de Sabores, que ofrece una amplia variedad de pizzas artesanales, bocadillos, palomitas de maíz, nachos con queso, snacks variados y una selección de bebidas frías y refrescos.', 20.00, 3, '688990011'),
(22, 'Catering de Picoteo', 'Disfrute de un Catering de Picoteo durante su concierto, con una selección de tapas, quesos, embutidos, patatas fritas, salsas, y una variedad de bebidas, desde cervezas hasta cócteles y refrescos.', 22.00, 3, '677889900'),
(23, 'Pizza Party', 'Organice una Pizza Party en su concierto con una variedad de pizzas recién horneadas, desde clásicas margaritas hasta sabrosas especialidades, acompañadas de ensaladas frescas, snacks y una selección de bebidas.', 18.00, 3, '688001122'),
(24, 'Barra Libre y Snacks', 'Ofrezca a sus asistentes una experiencia completa con una Barra Libre de bebidas alcohólicas y no alcohólicas, junto con una variedad de snacks como patatas fritas, frutos secos, pretzels y palitos de pan.', 25.00, 3, '677112233'),
(25, 'Dulces Delicias', 'Termine su concierto con un toque dulce con nuestro servicio Dulces Delicias, que incluye una selección de postres como brownies, galletas, helados, frutas bañadas en chocolate, junto con café, té y otras bebidas.', 16.00, 3, '688223344');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espacios`
--

CREATE TABLE `espacios` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `open_space` tinyint(1) DEFAULT NULL,
  `enclosed_space` tinyint(1) DEFAULT NULL,
  `event_type` int(11) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `espacios`
--

INSERT INTO `espacios` (`id`, `name`, `image`, `description`, `capacity`, `price`, `open_space`, `enclosed_space`, `event_type`, `contact_number`, `address`) VALUES
(1, 'Salón Dorado', 'imagen1.jpg', 'Espacio elegante y espacioso para eventos especiales.', 150, 500.00, 0, 1, 0, '623154785', ''),
(2, 'Jardín de las Rosas', 'imagen2.jpg', 'Hermoso jardín al aire libre ideal para bodas y eventos al aire libre.', 200, 700.00, 1, 0, 0, '654852365', ''),
(3, 'Salón de Conferencias A', 'imagen3.jpg', 'Espacio perfecto para conferencias y charlas empresariales.', 100, 300.00, 0, 1, 2, '622523414', ''),
(4, 'Sala de Exposiciones', 'imagen4.jpg', 'Espacio amplio y luminoso para exposiciones y eventos artísticos.', 300, 800.00, 0, 1, 3, '669958554', ''),
(5, 'Terraza Panorámica', 'imagen5.jpg', 'Terraza con vistas impresionantes de la ciudad, ideal para cenas de empresa.', 80, 400.00, 1, 0, 1, '901253654', ''),
(6, 'Salón de Eventos B', 'imagen6.jpg', 'Salón multifuncional adecuado para todo tipo de eventos sociales.', 120, 600.00, 0, 1, 0, '624587884', ''),
(7, 'Patio de los Naranjos', 'imagen7.jpg', 'Patio encantador rodeado de naranjos para eventos al aire libre.', 150, 600.00, 1, 0, 0, '965854457', ''),
(8, 'Salón VIP', 'imagen8.jpg', 'Espacio exclusivo con comodidades de lujo para eventos selectos.', 50, 1000.00, 0, 1, 1, '969323586', ''),
(9, 'Sala de Conciertos A', 'imagen9.jpg', 'Sala de conciertos equipada con tecnología de última generación.', 500, 1500.00, 0, 1, 3, '674147253', ''),
(10, 'Salón de Baile', 'imagen10.jpg', 'Amplio salón perfecto para eventos con música y baile.', 200, 800.00, 0, 1, 3, '635269532', ''),
(11, 'Jardín de Invierno', 'imagen11.jpg', 'Jardín cubierto con calefacción para eventos en cualquier temporada.', 100, 600.00, 1, 0, 1, '601203652', ''),
(12, 'Salón Principal', 'imagen12.jpg', 'Elegante salón para eventos formales y ceremonias especiales.', 150, 700.00, 0, 1, 0, '655202369', ''),
(13, 'Terraza Lounge', 'imagen13.jpg', 'Terraza moderna y chic para eventos sociales y fiestas privadas.', 80, 500.00, 1, 0, 1, '685747523', ''),
(14, 'Sala de Reuniones', 'imagen14.jpg', 'Sala íntima y profesional para reuniones de negocios y conferencias.', 30, 200.00, 0, 1, 2, '606326101', ''),
(15, 'Sala Polivalente', 'imagen15.jpg', 'Espacio versátil adaptable a diversas configuraciones para eventos.', 80, 400.00, 0, 1, 3, '986992352', ''),
(16, 'Sala de Juegos', 'imagen16.jpg', 'Sala de juegos equipada con entretenimiento para eventos juveniles.', 50, 300.00, 0, 1, 3, '603332125', ''),
(17, 'Salón Elegante', 'imagen17.jpg', 'Salón clásico y elegante para bodas y eventos especiales.', 100, 600.00, 0, 1, 0, '644102352', ''),
(18, 'Pista de Baile', 'imagen18.jpg', 'Gran pista de baile para fiestas y eventos con música en vivo.', 200, 800.00, 0, 1, 3, '685742110', ''),
(19, 'Salón Privado', 'imagen19.jpg', 'Salón íntimo y privado para cenas exclusivas y eventos VIP.', 40, 500.00, 0, 1, 1, '635289002', ''),
(20, 'Sala de Exposiciones B', 'imagen20.jpg', 'Amplia sala de exposiciones para eventos artísticos y culturales.', 400, 1200.00, 0, 1, 3, '645238501', ''),
(21, 'Salón de Eventos C', 'imagen21.jpg', 'Espacio versátil con excelente iluminación y comodidades.', 150, 700.00, 0, 1, 1, '986582312', ''),
(22, 'Terraza Verde', 'imagen22.jpg', 'Terraza arbolada y fresca ideal para eventos al aire libre.', 100, 500.00, 1, 0, 1, '963250124', ''),
(23, 'Salón de Reuniones Ejecutivas', 'imagen23.jpg', 'Sala de reuniones equipada para eventos corporativos.', 20, 300.00, 0, 1, 2, '655241038', ''),
(24, 'Sala de Presentaciones', 'imagen24.jpg', 'Sala moderna con capacidad para presentaciones y conferencias.', 80, 400.00, 0, 1, 2, '687856921', ''),
(25, 'Área Lounge', 'imagen25.jpg', 'Espacio relajado y cómodo para eventos sociales y networking.', 50, 200.00, 1, 0, 1, '632588741', ''),
(26, 'Salón Principal A', 'imagen26.jpg', 'Elegante salón con decoración clásica y ambiente refinado.', 200, 800.00, 0, 1, 0, '678910112', ''),
(27, 'Jardín de Eventos', 'imagen27.jpg', 'Amplio jardín con zona de césped ideal para eventos al aire libre.', 300, 1000.00, 1, 0, 0, '674253881', ''),
(28, 'Sala de Conciertos B', 'imagen28.jpg', 'Sala de conciertos con excelente acústica y capacidad para grandes audiencias.', 600, 2000.00, 0, 1, 3, '698525363', ''),
(29, 'Salón de Celebraciones', 'imagen29.jpg', 'Espacio acogedor y versátil para celebraciones íntimas y familiares.', 80, 500.00, 0, 1, 0, '636525414', ''),
(30, 'Terraza Chill-out', 'imagen30.jpg', 'Terraza elegante y moderna con área de descanso y barra de cócteles.', 70, 600.00, 1, 0, 1, '654456852', ''),
(31, 'Salón de Reuniones B', 'imagen31.jpg', 'Sala de reuniones equipada con tecnología avanzada y mobiliario confortable.', 40, 300.00, 0, 1, 2, '698745236', ''),
(32, 'Patio Central', 'imagen32.jpg', 'Patio central con diseño contemporáneo y capacidad para eventos exclusivos.', 100, 700.00, 1, 0, 0, '614258745', ''),
(33, 'Salón de Actos', 'imagen33.jpg', 'Espacio multifuncional para actos sociales y eventos empresariales.', 150, 600.00, 0, 1, 1, '698536241', ''),
(34, 'Sala de Exposiciones C', 'imagen34.jpg', 'Sala amplia y diáfana para exposiciones de arte y eventos culturales.', 400, 1500.00, 0, 1, 2, '936025148', ''),
(35, 'Área de Recepción', 'imagen35.jpg', 'Espacio elegante y acogedor para recepciones y eventos de bienvenida.', 50, 400.00, 1, 0, 1, '907542368', ''),
(36, 'Salón de Eventos D', 'imagen36.jpg', 'Salón versátil y moderno con capacidad para eventos de todo tipo.', 120, 800.00, 0, 1, 0, '604253698', ''),
(37, 'Terraza Cubierta', 'imagen37.jpg', 'Terraza con techo retráctil para eventos al aire libre en cualquier clima.', 80, 500.00, 1, 0, 1, '924702356', ''),
(38, 'Sala de Videoconferencias', 'imagen38.jpg', 'Sala equipada con tecnología de videoconferencia para reuniones virtuales.', 20, 300.00, 0, 1, 2, '611447723', ''),
(39, 'Salón Principal B', 'imagen39.jpg', 'Salón principal con capacidad para eventos de gran envergadura.', 250, 900.00, 0, 1, 3, '685444258', ''),
(40, 'Área de Descanso', 'imagen40.jpg', 'Espacio relajado con sofás y áreas de descanso para eventos informales.', 30, 200.00, 1, 0, 1, '672415368', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `event_type` int(11) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `space_id` int(11) DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `catering_id` int(11) DEFAULT NULL,
  `musician_id` int(11) DEFAULT NULL,
  `open_bar` tinyint(1) DEFAULT NULL,
  `guests_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `event_type`, `creator_id`, `start_date`, `end_date`, `space_id`, `restaurant_id`, `catering_id`, `musician_id`, `open_bar`, `guests_number`) VALUES
(1, 1, 1, '2024-05-10 17:00:00', '2024-05-10 22:00:00', 1, NULL, 1, 1, 1, 100),
(2, 2, 2, '2024-06-15 19:00:00', '2024-06-15 23:00:00', NULL, 2, NULL, NULL, 1, 50),
(3, 3, 3, '2024-07-20 09:00:00', '2024-07-22 18:00:00', 3, NULL, 16, NULL, 0, 300),
(4, 4, 4, '2024-08-25 19:00:00', '2024-08-25 23:00:00', 15, NULL, 23, NULL, 1, 200),
(5, 1, 5, '2024-09-30 16:00:00', '2024-09-30 21:00:00', 7, NULL, 5, 5, 1, 150),
(6, 2, 6, '2024-10-15 20:00:00', '2024-10-15 23:00:00', 5, NULL, 10, NULL, 1, 80),
(7, 3, 7, '2024-11-20 09:00:00', '2024-11-22 18:00:00', 20, NULL, 18, 12, 0, 250),
(8, 4, 8, '2024-12-25 18:00:00', '2024-12-25 22:00:00', 10, NULL, NULL, 20, 1, 180);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musicos`
--

CREATE TABLE `musicos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `event_type` int(11) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `musicos`
--

INSERT INTO `musicos` (`id`, `name`, `description`, `price`, `event_type`, `contact_number`) VALUES
(1, 'Ensemble Clásico', 'Un grupo de músicos clásicos que ofrece una selección de música instrumental para ceremonias de bodas, incluyendo piezas de Bach, Mozart y otros compositores clásicos. Precio por evento.', 800.00, 0, '688990011'),
(2, 'Dúo Acústico', 'Un dúo acústico que proporciona música en vivo durante la ceremonia y el cóctel de bodas, interpretando versiones acústicas de canciones populares y clásicos del folk. Precio por hora.', 500.00, 0, '677889900'),
(3, 'Cantante Solista', 'Un cantante solista con acompañamiento de guitarra que ofrece una actuación íntima y emocional para la ceremonia de bodas, interpretando baladas románticas y canciones populares. Precio por evento.', 600.00, 0, '688001122'),
(4, 'Orquesta de Jazz', 'Una orquesta de jazz que proporciona música en vivo durante la recepción y el banquete de bodas, interpretando estándares de jazz y canciones swing para crear un ambiente elegante y animado. Precio por hora.', 1000.00, 0, '688223344'),
(5, 'Grupo de Mariachis', 'Un grupo de mariachis que ofrece una experiencia auténtica de música mexicana para animar la fiesta de bodas, interpretando rancheras, corridos y otros géneros tradicionales. Precio por hora.', 700.00, 0, '688223345'),
(6, 'Cuarteto de Cuerdas', 'Un cuarteto de cuerdas que proporciona música clásica durante la ceremonia y el banquete de bodas, interpretando piezas de compositores clásicos y modernos para crear un ambiente elegante y romántico. Precio por evento.', 900.00, 0, '688223346'),
(7, 'Grupo de Música Latina', 'Un grupo de música latina que ofrece una variedad de ritmos y estilos para animar la fiesta de bodas, interpretando salsa, merengue, bachata y otros géneros bailables. Precio por hora.', 800.00, 0, '688223347'),
(8, 'Dúo de Violín y Piano', 'Un dúo de violín y piano que ofrece una selección de música clásica y contemporánea para la ceremonia y el cóctel de bodas, creando una atmósfera elegante y emotiva. Precio por evento.', 750.00, 0, '688223348'),
(9, 'Grupo de Rock', 'Un grupo de rock que ofrece una actuación enérgica y divertida para la fiesta de bodas, interpretando versiones de rock clásico y éxitos actuales para mantener a los invitados en la pista de baile. Precio por hora.', 900.00, 0, '688223349'),
(10, 'Trío de Jazz', 'Un trío de jazz que proporciona música en vivo durante el cóctel y el banquete de bodas, interpretando estándares de jazz, bossa nova y blues para crear un ambiente sofisticado y relajado. Precio por hora.', 850.00, 0, '688223350'),
(11, 'Cuarteto de Cuerdas Ambiental', 'Un cuarteto de cuerdas que proporciona música clásica de fondo durante los coffee breaks y las pausas del congreso, creando un ambiente elegante y relajante para los asistentes. Precio por hora.', 600.00, 2, '688990011'),
(12, 'Pianista de Jazz', 'Un pianista de jazz que ofrece música en vivo durante las sesiones del congreso, interpretando estándares de jazz y música instrumental para añadir un toque de sofisticación al evento. Precio por hora.', 500.00, 2, '677889900'),
(13, 'Dúo de Guitarra Española', 'Un dúo de guitarra española que proporciona música en vivo durante la recepción y el almuerzo del congreso, interpretando flamenco, música latina y melodías españolas para crear un ambiente animado y festivo. Precio por hora.', 700.00, 2, '688001122'),
(14, 'DJ Ambiental', 'Un DJ que proporciona música de fondo durante las sesiones del congreso y los descansos, creando listas de reproducción personalizadas con música relajante y motivadora para mantener el ambiente adecuado. Precio por hora.', 400.00, 2, '688223344'),
(15, 'Grupo de Música Electrónica', 'Un grupo de música electrónica que ofrece una actuación en vivo durante la fiesta de clausura del congreso, interpretando sets de música electrónica y dance para animar a los asistentes y crear una atmósfera festiva. Precio por hora.', 800.00, 2, '688223345'),
(16, 'Experto en Sonido en Vivo', 'Técnico de sonido especializado en conciertos en vivo que ofrece servicios de mezcla y control de sonido durante el evento, asegurando una experiencia auditiva de alta calidad para artistas y audiencia. Precio por evento.', 800.00, 3, '688990011'),
(17, 'Ingeniero de Sonido Profesional', 'Ingeniero de sonido con experiencia en conciertos que proporciona servicios de configuración de equipos, ajuste de sonido y control de calidad durante las actuaciones en vivo, garantizando un sonido óptimo en todo momento. Precio por evento.', 700.00, 3, '677889900'),
(18, 'Técnico de Sonido y Luces', 'Técnico polivalente de sonido y luces que ofrece servicios de diseño de sonido, configuración de equipos de iluminación y control técnico durante el concierto, creando una experiencia audiovisual completa para el público. Precio por evento.', 900.00, 3, '688001122'),
(19, 'Operador de Mezcla en Directo', 'Operador de mezcla en directo con experiencia en conciertos que proporciona servicios de mezcla de sonido en tiempo real durante las actuaciones, garantizando un equilibrio sonoro adecuado y una experiencia auditiva óptima para los espectadores. Precio por evento.', 750.00, 3, '688223344'),
(20, 'Técnico de Audio Profesional', 'Técnico de audio con amplios conocimientos en conciertos en vivo que ofrece servicios de configuración de equipos, ajuste de sonido y control técnico durante el evento, asegurando un sonido impecable y una experiencia memorable para todos los presentes. Precio por evento.', 850.00, 3, '688223345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_caterings`
--

CREATE TABLE `reservas_caterings` (
  `id` int(11) NOT NULL,
  `catering_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `reservas_caterings`
--

INSERT INTO `reservas_caterings` (`id`, `catering_id`, `start_date`, `end_date`) VALUES
(1, 1, '2024-05-10 18:00:00', '2024-05-10 19:00:00'),
(2, 2, '2024-06-15 18:00:00', '2024-06-15 19:00:00'),
(3, 3, '2024-07-20 19:00:00', '2024-07-20 20:00:00'),
(4, 4, '2024-08-25 17:00:00', '2024-08-25 18:00:00'),
(5, 5, '2024-09-30 18:00:00', '2024-09-30 19:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_espacios`
--

CREATE TABLE `reservas_espacios` (
  `id` int(11) NOT NULL,
  `space_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `reservas_espacios`
--

INSERT INTO `reservas_espacios` (`id`, `space_id`, `start_date`, `end_date`) VALUES
(1, 1, '2024-05-10 09:00:00', '2024-05-10 17:00:00'),
(2, 2, '2024-06-15 12:00:00', '2024-06-15 20:00:00'),
(3, 3, '2024-07-20 10:00:00', '2024-07-20 18:00:00'),
(4, 4, '2024-08-25 11:00:00', '2024-08-25 19:00:00'),
(5, 5, '2024-09-30 14:00:00', '2024-09-30 22:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_musicos`
--

CREATE TABLE `reservas_musicos` (
  `id` int(11) NOT NULL,
  `musician_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `reservas_musicos`
--

INSERT INTO `reservas_musicos` (`id`, `musician_id`, `start_date`, `end_date`) VALUES
(1, 1, '2024-05-10 19:00:00', '2024-05-10 22:00:00'),
(2, 2, '2024-06-15 20:00:00', '2024-06-15 23:00:00'),
(3, 3, '2024-07-20 21:00:00', '2024-07-20 23:00:00'),
(4, 4, '2024-08-25 19:00:00', '2024-08-25 22:00:00'),
(5, 5, '2024-09-30 20:00:00', '2024-09-30 23:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_restaurantes`
--

CREATE TABLE `reservas_restaurantes` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `reservas_restaurantes`
--

INSERT INTO `reservas_restaurantes` (`id`, `restaurant_id`, `start_date`, `end_date`) VALUES
(1, 1, '2024-05-10 19:00:00', '2024-05-10 21:00:00'),
(2, 2, '2024-06-15 19:00:00', '2024-06-15 22:00:00'),
(3, 3, '2024-07-20 20:00:00', '2024-07-20 23:00:00'),
(4, 4, '2024-08-25 18:00:00', '2024-08-25 21:00:00'),
(5, 5, '2024-09-30 19:00:00', '2024-09-30 22:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurantes`
--

CREATE TABLE `restaurantes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `restaurantes`
--

INSERT INTO `restaurantes` (`id`, `name`, `image`, `description`, `capacity`, `price`, `contact_number`, `address`) VALUES
(1, 'Restaurante La Terraza', 'imagen1.jpg', 'Restaurante con terraza al aire libre y excelente cocina mediterránea.', 80, 40.00, '912345678', ''),
(2, 'El Rincón de María', 'imagen2.jpg', 'Acogedor restaurante familiar con especialidades caseras.', 50, 30.00, '934567890', ''),
(3, 'La Parrilla del Sur', 'imagen3.jpg', 'Carnes a la parrilla y platos tradicionales en un ambiente rústico.', 100, 50.00, '910987654', ''),
(4, 'Cafetería Central', 'imagen4.jpg', 'Cafetería con variedad de bocadillos, pasteles y café recién hecho.', 40, 20.00, '923456789', ''),
(5, 'Taberna El Olivo', 'imagen5.jpg', 'Taberna típica con tapas y vinos de la región en un ambiente acogedor.', 60, 35.00, '931234567', ''),
(6, 'Restaurante La Fuente', 'imagen6.jpg', 'Restaurante con comida internacional y terraza junto a una fuente.', 120, 60.00, '918765432', ''),
(7, 'Pizzería La Italiana', 'imagen7.jpg', 'Pizzas artesanales y pasta fresca en un ambiente italiano.', 70, 25.00, '944567890', ''),
(8, 'Burger Bar Express', 'imagen8.jpg', 'Hamburguesas gourmet y patatas fritas caseras en un local moderno.', 50, 20.00, '937654321', ''),
(9, 'Cervecería La Abadía', 'imagen9.jpg', 'Cervecería con una amplia selección de cervezas artesanales.', 80, 35.00, '919876543', ''),
(10, 'Mesón del Bosque', 'imagen10.jpg', 'Cocina tradicional española con vistas al bosque y chimenea.', 90, 45.00, '926543210', ''),
(11, 'Restaurante Vegano Verde', 'imagen11.jpg', 'Restaurante vegano con platos saludables y opciones sin gluten.', 40, 35.00, '945678901', ''),
(12, 'Bar de Tapas El Andaluz', 'imagen12.jpg', 'Bar de tapas con especialidades andaluzas y ambiente animado.', 60, 30.00, '915432109', ''),
(13, 'Café Parisien', 'imagen13.jpg', 'Café parisino con croissants, tartas y café de primera calidad.', 30, 15.00, '930987654', ''),
(14, 'Asador La Brasa', 'imagen14.jpg', 'Asador con carnes a la brasa y amplia selección de vinos.', 80, 50.00, '911234567', ''),
(15, 'Sushi Bar Sakura', 'imagen15.jpg', 'Sushi fresco y sashimi en un ambiente japonés moderno.', 50, 40.00, '939876543', ''),
(16, 'Ristorante Da Mario', 'imagen16.jpg', 'Auténtica cocina italiana con pasta fresca y pizzas al horno de leña.', 70, 35.00, '929012345', ''),
(17, 'Churrería El Manantial', 'imagen17.jpg', 'Churrería tradicional con churros, porras y chocolate caliente.', 40, 20.00, '948765432', ''),
(18, 'Bar de Mariscos La Mar', 'imagen18.jpg', 'Bar de mariscos frescos y pescado del día en un ambiente marinero.', 60, 55.00, '913456789', ''),
(19, 'Cafetería El Establo', 'imagen19.jpg', 'Cafetería con encanto en un antiguo establo restaurado.', 30, 25.00, '934109876', ''),
(20, 'Restaurante Gastronómico El Cielo', 'imagen20.jpg', 'Restaurante de alta cocina con menú degustación y vistas panorámicas.', 40, 100.00, '917654321', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `name`, `last_name`, `email`, `password`, `image`, `created_at`) VALUES
(1, 'user1', 'Juan', 'Pérez González', 'juan@example.com', 'contraseña123', 'foto1.jpg', '2024-04-28 22:00:00'),
(2, 'user2', 'María', 'López Martínez', 'maria@example.com', 'clave456', 'foto2.jpg', '2024-04-28 22:00:00'),
(3, 'jose89', 'José', 'García Fernández', 'jose@example.com', 'password789', NULL, '2024-04-28 22:00:00'),
(4, 'ana22', 'Ana', 'Rodríguez Pérez', 'ana@example.com', '123abc', 'foto3.jpg', '2024-04-28 22:00:00'),
(5, 'luisa74', 'Luisa', 'Sánchez García', 'luisa@example.com', 'contraseña321', NULL, '2024-04-28 22:00:00'),
(6, 'pablo', 'Pablo', 'Hernández Rodríguez', 'pablo@example.com', 'abc123', 'foto4.jpg', '2024-04-28 22:00:00'),
(7, 'laura', 'Laura', 'Martínez López', 'laura@example.com', 'password123', NULL, '2024-04-28 22:00:00'),
(8, 'carlos', 'Carlos', 'Fernández Pérez', 'carlos@example.com', 'pass123', 'foto5.jpg', '2024-04-28 22:00:00'),
(9, 'sara', 'Sara', 'Gómez Ruiz', 'sara@example.com', 'password456', NULL, '2024-04-28 22:00:00'),
(10, 'david', 'David', 'Jiménez Martín', 'david@example.com', 'pass456', 'foto6.jpg', '2024-04-28 22:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caterings`
--
ALTER TABLE `caterings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `espacios`
--
ALTER TABLE `espacios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_creador` (`creator_id`),
  ADD KEY `id_espacio` (`space_id`),
  ADD KEY `id_restaurante` (`restaurant_id`),
  ADD KEY `id_catering` (`catering_id`),
  ADD KEY `id_musica` (`musician_id`);

--
-- Indices de la tabla `musicos`
--
ALTER TABLE `musicos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservas_caterings`
--
ALTER TABLE `reservas_caterings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_catering` (`catering_id`);

--
-- Indices de la tabla `reservas_espacios`
--
ALTER TABLE `reservas_espacios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_espacio` (`space_id`);

--
-- Indices de la tabla `reservas_musicos`
--
ALTER TABLE `reservas_musicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_musico` (`musician_id`);

--
-- Indices de la tabla `reservas_restaurantes`
--
ALTER TABLE `reservas_restaurantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_restaurante` (`restaurant_id`);

--
-- Indices de la tabla `restaurantes`
--
ALTER TABLE `restaurantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caterings`
--
ALTER TABLE `caterings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `espacios`
--
ALTER TABLE `espacios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `musicos`
--
ALTER TABLE `musicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `reservas_caterings`
--
ALTER TABLE `reservas_caterings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reservas_espacios`
--
ALTER TABLE `reservas_espacios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reservas_musicos`
--
ALTER TABLE `reservas_musicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reservas_restaurantes`
--
ALTER TABLE `reservas_restaurantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `restaurantes`
--
ALTER TABLE `restaurantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `eventos_ibfk_2` FOREIGN KEY (`space_id`) REFERENCES `espacios` (`id`),
  ADD CONSTRAINT `eventos_ibfk_3` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurantes` (`id`),
  ADD CONSTRAINT `eventos_ibfk_4` FOREIGN KEY (`catering_id`) REFERENCES `caterings` (`id`),
  ADD CONSTRAINT `eventos_ibfk_5` FOREIGN KEY (`musician_id`) REFERENCES `musicos` (`id`);

--
-- Filtros para la tabla `reservas_caterings`
--
ALTER TABLE `reservas_caterings`
  ADD CONSTRAINT `reservas_caterings_ibfk_1` FOREIGN KEY (`catering_id`) REFERENCES `caterings` (`id`);

--
-- Filtros para la tabla `reservas_espacios`
--
ALTER TABLE `reservas_espacios`
  ADD CONSTRAINT `reservas_espacios_ibfk_1` FOREIGN KEY (`space_id`) REFERENCES `espacios` (`id`);

--
-- Filtros para la tabla `reservas_musicos`
--
ALTER TABLE `reservas_musicos`
  ADD CONSTRAINT `reservas_musicos_ibfk_1` FOREIGN KEY (`musician_id`) REFERENCES `musicos` (`id`);

--
-- Filtros para la tabla `reservas_restaurantes`
--
ALTER TABLE `reservas_restaurantes`
  ADD CONSTRAINT `reservas_restaurantes_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurantes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

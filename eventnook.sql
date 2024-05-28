-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2024 a las 10:01:25
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

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
(1, 'Salón Dorado', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/bodas.webp', 'Espacio elegante y espacioso para eventos especiales. Ideal para bodas, recepciones y galas formales, ofrece una atmósfera majestuosa que cautiva a los invitados.', 150, 500.00, 0, 1, 0, '623154785', ''),
(2, 'Jardín de las Rosas', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/jardin%20boda%202.jpg', 'Hermoso jardín al aire libre ideal para bodas y eventos al aire libre. Rodeado de exuberante vegetación y flores, crea un ambiente mágico y romántico para celebraciones inolvidables.', 200, 700.00, 1, 0, 0, '654852365', 'Calle Colón nº3, Meliana'),
(3, 'Salón de Conferencias A', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/conferencia%202.webp', 'Espacio perfecto para conferencias y charlas empresariales. Equipado con tecnología de vanguardia y mobiliario ergonómico, garantiza un entorno profesional y confortable para reuniones corporativas y eventos de networking.', 100, 300.00, 0, 1, 2, '622523414', 'Av. del Cid nº136, València'),
(4, 'Sala de Exposiciones', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/expo%20(2).jpg', 'Espacio amplio y luminoso para exposiciones y eventos artísticos. Con paredes blancas y luz natural, realza la exhibición de obras de arte y productos, atrayendo a aficionados y compradores.', 300, 800.00, 0, 1, 3, '669958554', 'Calle Joaquín Costa nº12, Paterna'),
(5, 'Terraza Panorámica', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/terraza%20mar.jpg', 'Terraza con vistas impresionantes del mar, ideal para cenas de empresa. Ofrece una experiencia gastronómica única con su ambiente al aire libre y panorámicas vistas agradables, perfecto para eventos corporativos.', 80, 400.00, 1, 0, 1, '901253654', 'Carrer d\'Eugènia Viñes nº17, València'),
(6, 'Salón de Eventos B', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/multiusos.jpg', 'Salón multifuncional adecuado para todo tipo de eventos sociales. Desde bodas y fiestas de cumpleaños hasta conferencias y exposiciones, este espacio versátil se adapta a cualquier ocasión con su diseño flexible y moderno.', 120, 600.00, 0, 1, 0, '624587884', 'Calle Colón nº62, Burjassot'),
(7, 'Patio de los Naranjos', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/jardin%20boda.jpg', 'Patio encantador rodeado de naranjos para eventos al aire libre. Con su encanto mediterráneo y aroma cítrico, crea un ambiente acogedor y fresco para celebraciones al aire libre, como bodas y cócteles.', 150, 600.00, 1, 0, 0, '965854457', ''),
(9, 'Sala de Conciertos A', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/concierto-2.webp', 'Sala de conciertos equipada con tecnología de última generación. Diseñada para ofrecer una experiencia acústica excepcional, es el escenario perfecto para conciertos, recitales y eventos musicales de todo tipo.', 500, 1500.00, 0, 1, 3, '674147253', 'Av. Albert Einstein nº28, Valencia'),
(11, 'Jardín de Invierno', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/lago%20boda.jpg', 'Jardín cubierto con calefacción para eventos en cualquier temporada. Con su diseño elegante y cálido, proporciona un oasis verde durante el invierno, ideal para bodas y eventos al aire libre durante todo el año.', 100, 600.00, 1, 0, 1, '601203652', 'Calle Ausiàs March nº12, Alboraia'),
(12, 'Salón Principal', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/sala%20teatro.jpg', 'Elegante salón para eventos formales y ceremonias especiales. Con su arquitectura clásica y detalles ornamentales, añade un toque de grandeza a bodas, recepciones y eventos de gala.', 150, 700.00, 0, 1, 0, '655202369', ''),
(13, 'Terraza Lounge', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/terraza%20lounge.jpg', 'Terraza moderna y chic para eventos sociales y fiestas privadas. Con su diseño contemporáneo y mobiliario elegante, ofrece un ambiente relajado y sofisticado para cócteles, fiestas y eventos exclusivos.', 80, 500.00, 1, 0, 1, '685747523', ''),
(14, 'Sala de Reuniones', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/sala%20reuniones.jpg', 'Sala íntima y profesional para reuniones de negocios y conferencias. Equipada con tecnología de punta y mobiliario ergonómico, proporciona un entorno productivo y confortable para discusiones empresariales y presentaciones ejecutivas.', 30, 200.00, 0, 1, 2, '606326101', ''),
(15, 'Sala Polivalente', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/sala%20polivalente.jpg', 'Espacio versátil adaptable a diversas configuraciones para eventos. Desde reuniones de negocios y conferencias hasta exposiciones y presentaciones, este espacio polivalente se ajusta a las necesidades de cualquier evento.', 80, 400.00, 0, 1, 3, '986992352', ''),
(20, 'Sala de Exposiciones B', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/expo.jpg', 'Amplia sala de exposiciones para eventos artísticos y culturales. Con su diseño diáfano y versátil, proporciona el espacio perfecto para exhibiciones de arte, ferias comerciales y eventos culturales de gran envergadura.', 400, 1200.00, 0, 1, 3, '645238501', ''),
(22, 'Terraza Verde', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/terraza%20mediterranea.jpg', 'Terraza arbolada y fresca ideal para eventos al aire libre. Con su entorno natural y ambiente relajado, proporciona el escenario perfecto para celebraciones al aire libre, como bodas, cócteles y fiestas privadas.', 100, 500.00, 1, 0, 1, '963250124', ''),
(23, 'Salón de Reuniones Ejecutivas', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/sala%20reuniones%20formales.jpg', 'Sala de reuniones equipada para eventos corporativos. Con su mobiliario ergonómico y tecnología avanzada, ofrece un entorno profesional y productivo para reuniones de negocios, presentaciones ejecutivas y conferencias corporativas.', 20, 300.00, 0, 1, 2, '655241038', ''),
(24, 'Sala de Presentaciones', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/conferencia.jpg', 'Sala moderna con capacidad para presentaciones y conferencias. Equipada con proyector, pantalla y sistemas de sonido, proporciona un entorno dinámico y tecnológicamente avanzado para presentaciones, charlas y seminarios.', 80, 400.00, 0, 1, 2, '687856921', ''),
(25, 'Salón Elegante', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/boda-interior-con-musica.webp', 'Espacio elegante y encantador, pensado para bodas amplias. Cuenta con un gran espacio acogedor, además de una zona reservada para que la música de tu evento se escuche desde cada rincón.', 120, 700.00, 1, 1, 1, '674123589', 'Calle Mediterráneo nº123'),
(26, 'Salón Principal A', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/sala%20polivalente%202.jpg', 'Elegante salón con decoración clásica y ambiente refinado. Desde bodas y galas hasta conferencias y lanzamientos de productos, ofrece un entorno distinguido y versátil para una amplia gama de eventos especiales.', 200, 800.00, 0, 1, 0, '678910112', ''),
(27, 'Jardín de Eventos', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/jardin%20general.jpg', 'Amplio jardín con zona de césped ideal para eventos al aire libre. Con su vasta extensión y entorno natural, proporciona el escenario perfecto para bodas al aire libre, picnics corporativos y eventos comunitarios.', 300, 1000.00, 1, 0, 0, '674253881', ''),
(28, 'Sala de Conciertos B', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/concierto_1.webp', 'Sala de conciertos con excelente acústica y capacidad para grandes audiencias. Equipada con tecnología de sonido de última generación, proporciona una experiencia auditiva inigualable para conciertos, recitales y eventos musicales de gran envergadura.', 600, 2000.00, 0, 1, 3, '698525363', ''),
(29, 'Salón de Celebraciones', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/sala%20polivalente%202.jpg', 'Espacio acogedor y versátil para celebraciones íntimas y familiares. Desde cumpleaños y aniversarios hasta bautizos y fiestas familiares, ofrece un ambiente cálido y familiar para celebraciones memorables y entrañables.', 80, 500.00, 0, 1, 0, '636525414', ''),
(31, 'Salón de Reuniones B', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/sala%20reuniones%20formales%20oscura.jpg', 'Sala de reuniones equipada con tecnología avanzada y mobiliario confortable. Con su ambiente profesional y servicios personalizados, proporciona el entorno ideal para reuniones de negocios, presentaciones ejecutivas y conferencias corporativas.', 40, 300.00, 0, 1, 2, '698745236', ''),
(33, 'Salón pequeño', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/interior.jpg', 'Espacio multifuncional para actos sociales y eventos empresariales. Con su diseño versátil y tecnología integrada, es adecuado para conferencias, presentaciones, galas de premios y eventos corporativos de todo tipo, ofreciendo un escenario impresionante y funcional para grandes audiencias y presentaciones de alto impacto.', 150, 600.00, 0, 1, 1, '698536241', ''),
(34, 'Sala de Exposiciones C', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/sala%20de%20exposiciones%20c.webp', 'Sala amplia y diáfana para exposiciones de arte y eventos culturales. Con su diseño contemporáneo y excelente iluminación, realza la exhibición de obras de arte y proporciona un espacio inspirador para eventos culturales y artísticos.', 400, 1500.00, 0, 1, 2, '936025148', ''),
(35, 'Área de Recepción', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/recepcion.jpg', 'Espacio elegante y acogedor para recepciones y eventos de bienvenida. Con su decoración refinada y ambiente cálido, brinda la bienvenida a los invitados con estilo y ofrece el escenario perfecto para iniciar cualquier evento con elegancia y hospitalidad.', 50, 400.00, 1, 0, 1, '907542368', ''),
(38, 'Sala de Videoconferencias', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/sala%20reuniones%20formales%20oscura.jpg', 'Sala equipada con tecnología de videoconferencia para reuniones virtuales. Con su equipamiento audiovisual y conexiones de alta velocidad, ofrece un entorno profesional y eficiente para reuniones virtuales, presentaciones a distancia y colaboraciones en línea.', 20, 300.00, 0, 1, 2, '611447723', ''),
(40, 'Área de Descanso', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/sala%20descanso%20sof%C3%A1s.jpg', 'Espacio relajado con sofás y áreas de descanso para eventos informales. Con su ambiente acogedor y mobiliario confortable, invita a los invitados a relajarse y disfrutar de momentos de tranquilidad en medio de la actividad del evento.', 30, 200.00, 1, 0, 2, '672415368', ''),
(41, 'El Mediterráneo', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/edificio%20bodas.jpg', 'Espacio encantador inspirado en la costa mediterránea, perfecto para eventos temáticos y celebraciones al aire libre. Con su decoración marinera y vistas al mar, crea una atmósfera relajada y sofisticada para bodas y fiestas playeras.', 120, 700.00, 1, 1, 0, '674123589', 'Calle Mediterráneo, 123');

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
  `guests_number` int(11) DEFAULT NULL,
  `photographer` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `event_type`, `creator_id`, `start_date`, `end_date`, `space_id`, `restaurant_id`, `catering_id`, `musician_id`, `open_bar`, `guests_number`, `photographer`) VALUES
(1, 0, 1, '2024-05-10 17:00:00', '2024-05-10 22:00:00', 41, NULL, 1, 1, 1, 100, 1),
(2, 1, 2, '2024-06-15 19:00:00', '2024-06-15 23:00:00', NULL, 2, NULL, NULL, 1, 50, 0),
(3, 2, 3, '2024-07-20 09:00:00', '2024-07-22 18:00:00', 3, NULL, 16, NULL, 0, 300, 0),
(4, 3, 4, '2024-08-25 19:00:00', '2024-08-25 23:00:00', 15, NULL, 23, NULL, 1, 200, 0),
(5, 0, 5, '2024-09-30 16:00:00', '2024-09-30 21:00:00', 7, NULL, 5, 5, 1, 150, 0),
(6, 1, 6, '2024-10-15 20:00:00', '2024-10-15 23:00:00', 5, NULL, 10, NULL, 1, 80, 1),
(7, 2, 7, '2024-11-20 09:00:00', '2024-11-22 18:00:00', 20, NULL, 18, 12, 0, 250, 0),
(8, 3, 1, '2024-12-25 18:00:00', '2024-12-25 22:00:00', 9, NULL, NULL, 20, 1, 180, 0);

--
-- Disparadores `eventos`
--
DELIMITER $$
CREATE TRIGGER `after_event_insert` AFTER INSERT ON `eventos` FOR EACH ROW BEGIN
    -- Insertar reserva para el espacio
    IF NEW.space_id IS NOT NULL THEN
        INSERT INTO reservas_espacios (space_id, start_date, end_date)
        VALUES (NEW.space_id, NEW.start_date, NEW.end_date);
    END IF;

    -- Insertar reserva para el restaurante
    IF NEW.restaurant_id IS NOT NULL THEN
        INSERT INTO reservas_restaurantes (restaurant_id, start_date, end_date)
        VALUES (NEW.restaurant_id, NEW.start_date, NEW.end_date);
    END IF;

    -- Insertar reserva para el catering
    IF NEW.catering_id IS NOT NULL THEN
        INSERT INTO reservas_caterings (catering_id, start_date, end_date)
        VALUES (NEW.catering_id, NEW.start_date, NEW.end_date);
    END IF;

    -- Insertar reserva para el músico
    IF NEW.musician_id IS NOT NULL THEN
        INSERT INTO reservas_musicos (musician_id, start_date, end_date)
        VALUES (NEW.musician_id, NEW.start_date, NEW.end_date);
    END IF;
END
$$
DELIMITER ;

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
(10, 'Trío de Jazz', 'Un trío de jazz que proporciona música en vivo durante el cóctel y el banquete de bodas, interpretando estándares de jazz, bossa nova y blues para crear un ambiente sofisticado y relajado. Precio por hora.', 850.00, 1, '688223350'),
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
  `menu` varchar(500) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `restaurantes`
--

INSERT INTO `restaurantes` (`id`, `name`, `image`, `description`, `menu`, `capacity`, `price`, `contact_number`, `address`) VALUES
(1, 'Restaurante La Terraza', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/terraza%20restaurante.jpg', 'Restaurante con terraza al aire libre y excelente cocina mediterránea.', '- Ensalada de pulpo a la gallega con pimentón de la Vera.\n- Paella de mariscos.\n- Tartar de atún rojo con aguacate y mango.\n- Lubina a la sal con verduras a la parrilla.', 80, 40.00, '912345678', ''),
(2, 'El Rincón de María', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/comida-gambas.webp', 'Acogedor restaurante familiar con especialidades caseras.', '- Cocido madrileño.\n- Albóndigas caseras en salsa de tomate.\n- Tortilla de patatas con cebolla caramelizada.\n- Pisto manchego con huevo frito.', 50, 30.00, '934567890', ''),
(3, 'La Parrilla del Sur', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/bar-restaurante.webp', 'Carnes a la parrilla y platos tradicionales en un ambiente rústico.', '- Chuletón de buey a la parrilla.\n- Asado de tira con chimichurri.\n- Provoleta a la parrilla con orégano.\n- Empanadas criollas de carne.', 100, 50.00, '910987654', ''),
(4, 'Cafetería Central', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/cafeteria.webp', 'Cafetería con variedad de bocadillos, pasteles y café recién hecho.', '- Bocadillo de jamón ibérico y tomate.\n- Croissants rellenos de chocolate.\n- Tarta de manzana casera.\n- Café latte con leche de almendra.', 40, 20.00, '923456789', ''),
(5, 'Taberna El Olivo', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/bar.webp', 'Taberna típica con tapas y vinos de la región en un ambiente acogedor.', '- Tortilla española de patatas y cebolla.\n- Patatas bravas con alioli.\n- Jamón ibérico con pan tumaca.\n- Boquerones en vinagre.', 60, 35.00, '931234567', ''),
(6, 'Restaurante La Fuente', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/restaurant-449952_640.webp', 'Restaurante con comida internacional y terraza junto a una fuente.', '- Ceviche de corvina con leche de tigre.\n- Filete mignon con salsa de vino tinto.\n- Risotto de hongos trufado.\n- Sopa de cebolla gratinada.', 120, 60.00, '918765432', ''),
(7, 'Pizzería La Italiana', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/pizzeria.jpg', 'Pizzas artesanales y pasta fresca en un ambiente italiano.', '- Pizza Margherita con albahaca fresca.\n- Tagliatelle al pesto genovés.\n- Calzone de jamón y queso.\n- Tiramisu tradicional.', 70, 25.00, '944567890', ''),
(11, 'Restaurante Vegano Verde', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/terraza%20mediterranea.jpg', 'Restaurante vegano con platos saludables y opciones sin gluten.', '- Ensalada de quinoa con aguacate y granada.\n- Lasagna de verduras con bechamel vegana.\n- Hamburguesa de garbanzos y espinacas.\n- Brownie de chocolate sin gluten.', 40, 35.00, '945678901', ''),
(12, 'Bar de Tapas El Andaluz', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/comida%20restaurante.jpg', 'Bar de tapas con especialidades andaluzas y ambiente animado.', '- Salmorejo cordobés.\n- Gambas al ajillo.\n- Flamenquín de jamón y queso.\n- Choco frito.', 60, 30.00, '915432109', ''),
(15, 'Sushi Bar Sakura', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/sushi.jpg', 'Sushi fresco y sashimi en un ambiente japonés moderno.', '- Sushi de salmón y aguacate.\n- Sashimi de atún.\n- Tempura de verduras.\n- Maki de pepino y cangrejo.', 50, 40.00, '939876543', ''),
(18, 'Restaurante de Mariscos La Mar', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/restaurante%20nocturno.jpg', 'Bar de mariscos frescos y pescado del día en un ambiente marinero.', '- Pulpo a la gallega.\n- Mariscada con langosta, gambas y mejillones.\n- Almejas a la marinera.\n- Merluza a la plancha con salsa verde.', 60, 55.00, '913456789', ''),
(20, 'Restaurante Gastronómico El Cielo', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/restaurante%20normal.jpg', 'Restaurante de alta cocina con menú degustación y vistas panorámicas.', '- Foie gras con reducción de Pedro Ximénez.\n- Lomo de venado con puré de castañas.\n- Raviolis de langosta con espuma de marisco.\n- Soufflé de chocolate con corazón líquido.', 40, 100.00, '917654321', '');

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
(1, 'user1', 'Juan', 'Pérez González', 'juan@example.com', 'abc123', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/avatar-312160_640.png', '2024-04-28 22:00:00'),
(2, 'user2', 'María', 'López Martínez', 'maria@example.com', 'clave456', 'https://pub-075bb5be9b9a4349baac38abf6b858f4.r2.dev/avatar-312160_640.png', '2024-04-28 22:00:00'),
(3, 'jose89', 'José', 'García Fernández', 'jose@example.com', 'password789', NULL, '2024-04-28 22:00:00'),
(4, 'ana22', 'Ana', 'Rodríguez Pérez', 'ana@example.com', '123abc', 'foto3.jpg', '2024-04-28 22:00:00'),
(5, 'luisa74', 'Luisa', 'Sánchez García', 'luisa@example.com', 'contraseña321', NULL, '2024-04-28 22:00:00'),
(6, 'pablo', 'Pablo', 'Hernández Rodríguez', 'pablo@example.com', 'abc123', 'foto4.jpg', '2024-04-28 22:00:00'),
(7, 'laura', 'Laura', 'Martínez López', 'laura@example.com', 'password123', NULL, '2024-04-28 22:00:00'),
(8, 'carlos', 'Carlos', 'Fernández Pérez', 'carlos@example.com', 'pass123', 'foto5.jpg', '2024-04-28 22:00:00'),
(9, 'sara', 'Sara', 'Gómez Ruiz', 'sara@example.com', 'password456', NULL, '2024-04-28 22:00:00'),
(10, 'david', 'David', 'Jiménez Martín', 'david@example.com', 'pass456', 'foto6.jpg', '2024-04-28 22:00:00'),
(11, 'vvnat', 'Natalia', 'Risueño', 'nrisuenosantiago@gmail.com', 'abc123456', NULL, '2024-05-21 12:14:02'),
(12, 'alumno123', 'Alumno', 'Alumno', 'alumno@iescamp.es', 'alumno123', NULL, '2024-05-21 12:23:13');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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

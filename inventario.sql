

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `categorias` (`id`, `nombre`, `fecha`) VALUES
(1, 'cascos', '2023-11-30 18:57:07'),
(2, 'guantes', '2023-11-30 18:57:16'),
(5, 'motos', '2023-11-30 16:54:18');



CREATE TABLE `entradap` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `nombrecategoria` int(11) NOT NULL,
  `entrada` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `entradap` (`id`, `codigo`, `descripcion`, `nombrecategoria`, `entrada`, `fecha`) VALUES
(1, 201, 'guante1', 1, 12, '2023-11-30 15:25:15'),
(2, 201, 'casco ferrari', 1, 10, '2023-11-30 15:51:25'),
(3, 201, 'guante2', 1, 10, '2023-11-30 16:02:18'),
(4, 76676878, 'casco pro', 2, 15, '2023-11-30 16:04:23'),
(5, 201, 'ktm', 1, 10, '2023-11-30 01:42:46'),
(6, 201, 'suzuki', 1, 10, '2023-11-30 16:55:33');





CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `codigo` text NOT NULL,
  `descripcion` text NOT NULL,
  `stock` int(11) NOT NULL,
  `precio` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `productos` (`id`, `idcategoria`, `codigo`, `descripcion`, `stock`, `precio`, `fecha`) VALUES
(1, 1, '201', 'casco ferrari', 50, 200, '2023-11-30 16:55:33'),
(3, 2, '76676878', 'guante1', 20, 78, '2023-11-30 16:55:55');

-- --------------------------------------------------------



CREATE TABLE `salidap` (
  `id` int(11) NOT NULL,
  `codigo` text NOT NULL,
  `descripcion` text NOT NULL,
  `nombrecategoria` text NOT NULL,
  `salida` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `salidap` (`id`, `codigo`, `descripcion`, `nombrecategoria`, `salida`, `fecha`) VALUES
(1, '76676878', 'guante1', '2', 5, '2023-11-30 16:23:20'),
(2, '76676878', 'guante1', '2', 10, '2023-11-30 01:43:02'),
(3, '76676878', 'guante1', '2', 10, '2023-11-30 16:55:55');





CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL,
  `password` varchar(300) NOT NULL,
  `perfil` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `fecha`) VALUES
(1, 'camilo modificado', 'milo', '$2a$07$asxx54ahjppf45sd87a5au1mMwPFOiFOa2BiMswhkNpbB7hBZc6pa', 'Administrador', '2023-11-30 17:12:46'),
(3, 'erika modifcado', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador-C', '2023-11-30 18:17:38'),
(4, 'Ecommerce modificado', 'hola', '$2a$07$asxx54ahjppf45sd87a5au1mMwPFOiFOa2BiMswhkNpbB7hBZc6pa', 'Administrador', '2023-11-30 17:30:58'),
(7, 'siii', 'hola', '$2a$07$asxx54ahjppf45sd87a5auEKl984fID33lyBClW7OSuuQkFCZQT9a', 'Vamos', '2023-11-30');


ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `entradap`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `salidap`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `entradap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `salidap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;


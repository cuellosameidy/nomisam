/*
SAMEIDY CUELLO
22-SIIT-1-015

*/

CREATE TABLE `deducciones` (
  `idDeduccion` int NOT NULL,
  `idEmpleado` int NOT NULL,
  `isr` decimal(10,2) NOT NULL,
  `sfs` decimal(10,2) NOT NULL,
  `afp` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `deducciones`
--

INSERT INTO `deducciones` (`idDeduccion`, `idEmpleado`, `isr`, `sfs`, `afp`) VALUES
(1, 1, 0.00, 1152.00, 861.00),
(2, 2, 47.25, 1344.00, 1004.50),
(3, 3, 0.00, 1036.80, 774.90),
(4, 4, 0.00, 1190.40, 889.70),
(5, 5, 0.00, 1146.24, 856.70),
(6, 6, 0.00, 960.00, 717.50),
(7, 7, 0.00, 1152.00, 861.00),
(8, 8, 0.00, 1113.60, 832.30),
(9, 9, 0.00, 1152.00, 861.00),
(10, 10, 0.00, 1191.94, 890.85),
(11, 11, 0.00, 107.52, 80.36),
(12, 12, 0.00, 1228.80, 918.40),
(13, 13, 0.00, 1301.76, 972.93),
(14, 14, 0.00, 1267.20, 947.10),
(15, 15, 0.00, 1255.68, 938.49),
(16, 16, 0.00, 1142.40, 853.83),
(17, 17, 0.00, 1147.20, 857.41),
(18, 18, 0.00, 1094.40, 817.95),
(19, 19, 0.00, 1324.80, 990.15),
(20, 20, 0.00, 1113.60, 832.30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `idDepartamento` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `codigo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`idDepartamento`, `nombre`, `codigo`) VALUES
(1, 'Recursos Humanos', 'RRHH'),
(2, 'Contabilidad y Finanzas', 'CONF'),
(3, 'Control de Calidad', 'CCAL'),
(4, 'Logística y Transporte', 'LOGT'),
(5, 'Administración', 'ADMIN'),
(6, 'Operaciones', 'OP'),
(7, 'Seguridad', 'SEC'),
(8, 'Tecnología de la Información', 'TI'),
(9, 'Mantenimiento', 'MANT'),
(10, 'Producción', 'PROD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `correo` varchar(75) NOT NULL,
  `cargo` varchar(75) NOT NULL,
  `idDepartamento` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `nombre`, `apellido`, `telefono`, `correo`, `cargo`, `idDepartamento`) VALUES
(1, 'Luna', 'Murillo', '8094958581', 'fajardo.victor@example.net', 'Auxiliar de producción', 10),
(2, 'Izan', 'Zapata', '8099372870', 'raul14@example.com', 'Gerente de Calidad', 3),
(3, 'Lucia', 'Palomo', '8095879209', 'wbañuelos@example.org', 'Supervisora de Entrega', 4),
(4, 'Zoe', 'Calvillo', '8099374416', 'aroa.rojas@example.com', 'Contadora', 2),
(5, 'Samuel', 'Marín', '8291306031', 'castañeda.ismael@example.org', 'Secretaria', 5),
(6, 'Cristian', 'Rueda', '8294495849', 'pabón.gabriel@example.com', 'Encargado de Transporte', 4),
(7, 'Aina', 'Zayas', '8294514981', 'javier.carreón@example.org', 'Jefe de Línea 2', 10),
(8, 'Adrian', 'Rueda', '8292739937', 'caraballo.arnau@example.org', 'Jefe de Seguridad', 7),
(9, 'Oriol', 'Samaniego', '8295567487', 'vescudero@example.com', 'Jefe de mantenimiento', 9),
(10, 'Gabriela', 'Adorno', '8497644518', 'verdugo.ona@example.net', 'Subjefe de almacén', 4),
(11, 'Rocio', 'Grijalva', '8499834316', 'yaiza.alvarado@example.org', 'Auxiliar de Línea', 10),
(12, 'Jose Manuel', 'Guerra', '8493217627', 'nadia.esquibel@example.com', 'Operador de Maquinaria', 6),
(13, 'Raquel', 'Juan', '8495020374', 'ycarrión@example.org', 'Generalista de Recursos Humanos', 1),
(14, 'Andrea', 'Colón', '8491667104', 'isabel.aragón@example.net', 'Encargada de Nómina', 1),
(15, 'Jose', 'Martín', '8095004062', 'carmen.narváez@example.net', 'Transportista', 4),
(16, 'Pedro', 'Avilés', '8099842305', 'adelagarza@example.com', 'Ayudante de Almacén', 4),
(17, 'Arnau', 'Rosas', '8093503328', 'elsa12@example.net', 'Auditor de Calidad', 4),
(18, 'Raquel', 'Romo', '8098708594', 'garcía.anna@example.net', 'Supervisora de Equipo', 6),
(19, 'Hugo', 'Blasco', '8092643373', 'borrego.carlos@example.net', 'Ingeniero en Sistemas', 8),
(20, 'Yaiza', 'Galindo', '8091302808', 'marta96@example.org', 'Subgerente de Servicios', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `idPago` int NOT NULL,
  `idEmpleado` int NOT NULL,
  `idDeduccion` int NOT NULL,
  `idSalario` int NOT NULL,
  `fecha` date NOT NULL,
  `horasExtras` decimal(10,2) NOT NULL,
  `salarioNeto` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`idPago`, `idEmpleado`, `idDeduccion`, `idSalario`, `fecha`, `horasExtras`, `salarioNeto`) VALUES
(1, 1, 1, 1, '2024-04-09', 600.00, 28587.00),
(2, 2, 2, 2, '2024-04-09', 750.00, 33354.00),
(3, 3, 3, 3, '2024-04-09', 300.00, 25488.00),
(4, 4, 4, 4, '2024-04-09', 450.00, 29370.00),
(5, 5, 5, 5, '2024-04-09', 600.00, 28447.00),
(6, 6, 6, 6, '2024-04-09', 600.00, 23922.00),
(7, 7, 7, 7, '2024-04-09', 675.00, 28662.00),
(8, 8, 8, 8, '2024-04-09', 480.00, 27534.00),
(9, 9, 9, 9, '2024-04-09', 600.00, 28587.00),
(10, 10, 10, 10, '2024-04-09', 675.00, 29632.00),
(11, 11, 11, 11, '2024-04-09', 375.00, 2987.00),
(12, 12, 12, 12, '2024-04-09', 300.00, 30153.00),
(13, 13, 13, 13, '2024-04-09', 675.00, 32300.00),
(14, 14, 14, 14, '2024-04-09', 630.00, 31416.00),
(15, 15, 15, 15, '2024-04-09', 675.00, 31181.00),
(16, 16, 16, 16, '2024-04-09', 630.00, 28384.00),
(17, 17, 17, 17, '2024-04-09', 570.00, 28440.00),
(18, 18, 18, 18, '2024-04-09', 405.00, 26993.00),
(19, 19, 19, 19, '2024-04-09', 645.00, 32830.00),
(20, 20, 20, 20, '2024-04-09', 570.00, 27624.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salarios`
--

CREATE TABLE `salarios` (
  `idSalario` int NOT NULL,
  `idEmpleado` int NOT NULL,
  `salarioBase` decimal(10,2) NOT NULL,
  `salarioPorHoraExtra` decimal(10,2) NOT NULL,
  `horasPorDia` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `salarios`
--

INSERT INTO `salarios` (`idSalario`, `idEmpleado`, `salarioBase`, `salarioPorHoraExtra`, `horasPorDia`) VALUES
(1, 1, 30000.00, 400.00, 8.00),
(2, 2, 35000.00, 500.00, 8.00),
(3, 3, 27000.00, 200.00, 7.00),
(4, 4, 31000.00, 300.00, 8.00),
(5, 5, 29850.00, 400.00, 7.00),
(6, 6, 25000.00, 400.00, 6.00),
(7, 7, 30000.00, 450.00, 8.00),
(8, 8, 29000.00, 320.00, 8.00),
(9, 9, 30000.00, 400.00, 8.00),
(10, 10, 31040.00, 450.00, 8.00),
(11, 11, 2800.00, 250.00, 7.00),
(12, 12, 32000.00, 200.00, 7.00),
(13, 13, 33900.00, 450.00, 7.00),
(14, 14, 33000.00, 420.00, 8.00),
(15, 15, 32700.00, 450.00, 8.00),
(16, 16, 29750.00, 420.00, 8.00),
(17, 17, 29875.00, 380.00, 8.00),
(18, 18, 28500.00, 270.00, 7.00),
(19, 19, 34500.00, 430.00, 8.00),
(20, 20, 29000.00, 380.00, 8.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `deducciones`
--
ALTER TABLE `deducciones`
  ADD PRIMARY KEY (`idDeduccion`),
  ADD KEY `idEmpleado` (`idEmpleado`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`idDepartamento`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `idDepartamento` (`idDepartamento`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`idPago`),
  ADD KEY `idDeduccion` (`idDeduccion`),
  ADD KEY `idEmpleado` (`idEmpleado`),
  ADD KEY `idSalario` (`idSalario`);

--
-- Indices de la tabla `salarios`
--
ALTER TABLE `salarios`
  ADD PRIMARY KEY (`idSalario`),
  ADD KEY `idEmpleado` (`idEmpleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `deducciones`
--
ALTER TABLE `deducciones`
  MODIFY `idDeduccion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `idDepartamento` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `idPago` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `salarios`
--
ALTER TABLE `salarios`
  MODIFY `idSalario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `deducciones`
--
ALTER TABLE `deducciones`
  ADD CONSTRAINT `deducciones_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idDepartamento`) REFERENCES `departamentos` (`idDepartamento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`idDeduccion`) REFERENCES `deducciones` (`idDeduccion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pagos_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pagos_ibfk_3` FOREIGN KEY (`idSalario`) REFERENCES `salarios` (`idSalario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `salarios`
--
ALTER TABLE `salarios`
  ADD CONSTRAINT `salarios_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;


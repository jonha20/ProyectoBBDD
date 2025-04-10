--Aprobado


INSERT INTO aprobado (id_nota, id_proyecto, "apto") VALUES
(1, 1, 'apto'),
(2, 2, 'apto'),
(3, 3, 'apto'),
(4, 4, 'apto'),
(5, 5, 'apto'),
(6, 6, 'apto'),
(7, 7, 'apto'),
(8, 8, 'apto'),
(9, 9, 'apto'),
(10, 10, 'apto'),
(11, 11, 'apto'),
(12, 1, 'no apto'),
(13, 2, 'no apto'),
(14, 3, 'no apto'),
(15, 4, 'no apto'),
(16, 5, 'no apto'),
(17, 6, 'no apto'),
(18, 7, 'no apto'),
(19, 8, 'no apto'),
(20, 9, 'no apto'),
(21, 10, 'no apto'),
(22, 11, 'no apto')

--Promocion

INSERT INTO promocion (id_promocion, "Fecha_inicio" ,"Fecha_fin" ,"NPromocion", id_rama) VALUES
(1, '18/09/2023', '18/12/2023', 'alfa', 1),
(2, '12/02/2024', '12/05/2024', 'beta', 1),
(3, '18/09/2024', '18/012/2024', 'charlie', 1),
(4, '12/02/2023', '12/05/2023', 'delta', 1),
(5, '10/06/2024', '10/09/2024', 'echo', 1),
(6, '18/09/2023', '5/10/2024', 'alfa', 2),
(7, '12/02/2024', '28/02/2025', 'beta', 2),
(8, '18/09/2024', '18/012/2025', 'charlie', 2),
(9, '12/02/2023', '10/01/2026', 'delta', 2),
(10, '10/06/2024', '12/05/2027', 'echo', 2)

--Proyecto

INSERT INTO proyecto (id_proyecto, "Nombre", "Descripcion" , id_rama) VALUES
(1, 'Proyecto_HL', 'hundir la flota python',1),
(2, 'Proyecto_EDA', 'investigacion basaada en datos',1),
(3, 'Proyecto_BBDD', 'creacion bases de datos ',1),
(4, 'Proyecto_ML', 'enseñar a la maquina',1),
(5, 'Proyecto_Deployment', 'desafio final',1),
(6, 'Proyecto_WebDev', 'creacion pagina web',2),
(7, 'Proyecto_FrontEnd', 'html y css',2),
(8, 'Proyecto_Backend', 'js y api',2),
(9, 'Proyecto_React', 'puesta a punto para proyecto final',2),
(10, 'Proyecto_FullSatck', 'proyecto final',2),
(11, 'Proyecto_BBDD', 'creacion bases de datos ',2)

--Rama

INSERT INTO rama (id_rama, "Nombre") VALUES
(1, 'DataScience'),
(2, 'Full-Stack')

--Campus

INSERT INTO campus (id_campus, "nombre", id_promocion) VALUES
(1, 'Madrid', 1),
(2, 'Valencia', 2),
(3, 'Barcelona', 3),
(4, 'Sevilla', 4),
(5, 'Bilbao', 5)

--Modalidad

INSERT INTO modalidad (id_modalidad, "Nombre", "hora_entrada", "hora_salida",id_rama) VALUES
(1, 'full_time ', '9.00', '17.30',1),
(2, 'full_time ', '9.00', '17.30',2),
(3, 'part_time', '9.00', '17.30',1),
(4, 'part_time', '9.00', '17.30',2)

--TAsistencia

INSERT INTO t_asistencia (id_asistencia, "nombre", id_rama) VALUES
(1, 'presencial', 1),
(2, 'presencial', 2),
(3, 'online', 1),
(4, 'online', 2)

--Rol

INSERT INTO rol (id_rol, "nombre", "descripcion", "hora_entrada", "hora_salida") VALUES
(2, 'TA', 'Profesor de asistencia para alumnos', '9.00','17.30'),
(1, 'LI', 'Profesor principal', '9.00','14.00')

--Profesores

INSERT INTO profesor (id_profesor, "nombre", "email", "fecha_inicio_trabajo", "fecha_fin", id_rol, id_rama) VALUES
(1, 'Noa Yáñez', 'nyanes@gmail.com', '2023-03-01', '', 2, 1),
(2, 'Saturnina Benitez', 'sbenites@gmail.com', '2023-04-15', '', 2, 1),
(3, 'Anna Feliu', 'Afeliu@me.com', '2023-05-10', '2024-05-10', 2, 2),
(4, 'Rosalva Ayuso', 'r.a@gmail.com', '2023-06-05', '', 2, 2),
(5, 'Ana Sofía Ferrer', 'ASF@hotmail.com', '2023-07-01', '2024-07-01', 2, 2),
(6, 'Angélica Corral', 'angelicaC@gmail.com', '2023-08-20', '', 2, 2),
(7, 'Ariel Lledó', 'alledo@gmail.com', '2023-09-10', '', 2, 1),
(8, 'Mario Prats', 'mariop@gmail.com', '2023-10-01', '', 1, 2),
(9, 'Luis Ángel Suárez', 'luisangel@gmail.com', '2023-11-15', '2024-11-15', 1, 2),
(10, 'María Dolores Diaz', 'mdd@gmail.com', '2023-12-05', '', 1, 1)

--Alumnos

INSERT INTO alumno (id_alumno, "nombre", "email", id_promocion) VALUES
(0, 'Jafet Casals', 'Jafet_Casals@gmail.com',1),
(1, 'Jorge Manzanares', 'Jorge_Manzanares@gmail.com',1),
(2, 'Onofre Adadia', 'Onofre_Adadia@gmail.com',1),
(3, 'Merche Prada', 'Merche_Prada@gmail.com',1),
(4, 'Pilar Abella', 'Pilar_Abella@gmail.com',1),
(5, 'Leoncio Tena', 'Leoncio_Tena@gmail.com',1),
(6, 'Odalys Torrijos', 'Odalys_Torrijos@gmail.com',1),
(7, 'Eduardo Caparros', 'Eduardo_Caparros@gmail.com',1),
(8, 'Ignacio Goicoechea', 'Ignacio_Goicoechea@gmail.com',1),
(9, 'Clementina Santos', 'Clementina_Santos@gmail.com',1),
(10, 'Daniela Falco', 'Daniela_Falco@gmail.com',1),
(11, 'Abraham Velez', 'Abraham_Velez@gmail.com',1),
(12, 'Maximiliano Menendez', 'Maximiliano_Menendez@gmail.com',1),
(13, 'Anita Heredia', 'Anita_Heredia@gmail.com',1),
(14, 'Eli Casas', 'Eli_Casas@gmail.com',1),
(15, 'Guillermo Borrego', 'Guillermo_Borrego@gmail.com',2),
(16, 'Sergio Aguirre', 'Sergio_Aguirre@gmail.com',2),
(17, 'Carlito CarriÃ³n', 'Carlito_Carrien@gmail.com',2),
(18, 'Haydae Figueroa', 'Haydae_Figueroa@gmail.com',2),
(19, 'Chita Mancebo', 'Chita_Mancebo@gmail.com',2),
(20, 'Joaquina Asensio', 'Joaquina_Asensio@gmail.com',2),
(21, 'Cristian Sarabia', 'Cristian_Sarabia@gmail.com',2),
(22, 'Isabel Ibañez', 'Isabel_Ibañez@gmail.com',2),
(23, 'Desiderio Jordi', 'Desiderio_Jordi@gmail.com',2),
(24, 'Rosalina Llanos', 'Rosalina_Llanos@gmail.com',2),
(25, 'Amor Larraaaga', 'Amor_Larraaaga@gmail.com',6),
(26, 'Teodoro Alberola', 'Teodoro_Alberola@gmail.com',6),
(27, 'Cleto Plana', 'Cleto_Plana@gmail.com',6),
(28, 'Aitana Sebastian', 'Aitana_Sebastian@gmail.com',6),
(29, 'Dolores Valbuena', 'Dolores_Valbuena@gmail.com',6),
(30, 'Julie Ferrer', 'Julie_Ferrer@gmail.com',6),
(31, 'Mireia Cabañas', 'Mireia_Cabañas@gmail.com',6),
(32, 'Flavia Amador', 'Flavia_Amador@gmail.com',6),
(33, 'Albino Macias', 'Albino_Macias@gmail.com',6),
(34, 'Ester SÃ¡nchez', 'Ester_SÃ¡nchez@gmail.com',6),
(35, 'Luis Miguel Galvez', 'Luis_Miguel_Galvez@gmail.com',6),
(36, 'Loida Arellano', 'Loida_Arellano@gmail.com',6),
(37, 'Heraclio Duque', 'Heraclio_Duque@gmail.com',6),
(38, 'Herberto Figueras', 'Herberto_Figueras@gmail.com',6),
(39, 'Teresa Laguna', 'Teresa_Laguna@gmail.com',7),
(40, 'Estrella Murillo', 'Estrella_Murillo@gmail.com',7),
(41, 'Ernesto Uriarte', 'Ernesto_Uriarte@gmail.com',7),
(42, 'Daniela Guitart', 'Daniela_Guitart@gmail.com',7),
(43, 'Timoteo Trillo', 'Timoteo_Trillo@gmail.com',7),
(44, 'Ricarda Tovar', 'Ricarda_Tovar@gmail.com',7),
(45, 'Alejandra Vilaplana', 'Alejandra_Vilaplana@gmail.com',7),
(46, 'Daniel Rossell', 'Daniel_Rossell@gmail.com',7),
(47, 'Rita Olivares', 'Rita_Olivares@gmail.com',7),
(48, 'Cleto Montes', 'Cleto_Montes@gmail.com',7)
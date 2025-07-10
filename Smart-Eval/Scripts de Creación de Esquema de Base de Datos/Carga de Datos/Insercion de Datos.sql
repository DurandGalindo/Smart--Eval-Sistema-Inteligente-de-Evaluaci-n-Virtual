#INSERCIONES
-- ESTUDIANTES
DELETE FROM estudiante;
INSERT INTO estudiante (id_estudiante, nombre, apellido, correo) VALUES
('23200001', 'Ana Maria', 'Torres Diaz', 'ana.torres@unmsm.edu.pe'),
('23200002', 'Luis', 'Sanchez Gomez', 'luis.sanchez@unmsm.edu.pe'),
('23200003', 'Carlos', 'Fernandez Ruiz', 'carlos.fernandez@unmsm.edu.pe'),
('23200004', 'Andrea', 'Castillo Paredes', 'andrea.castillo@unmsm.edu.pe'),
('23200005', 'Pedro', 'Ramirez Soto', 'pedro.ramirez@unmsm.edu.pe'),
('23200006', 'Lucia', 'Flores Aguilar', 'lucia.flores@unmsm.edu.pe'),
('23200007', 'Jose', 'Perez Cueva', 'jose.perez@unmsm.edu.pe'),
('23200008', 'Angela', 'Rojas Mejia', 'angela.rojas@unmsm.edu.pe'),
('23200009', 'Marco', 'Vasquez León', 'marco.vasquez@unmsm.edu.pe'),
('23200010', 'Tatiana', 'Salazar Ruiz', 'tatiana.salazar@unmsm.edu.pe'),
('23200011', 'Karina', 'Vargas Poma', 'karina.vargas@unmsm.edu.pe'),
('23200012', 'Juan', 'Vargas Poma', 'juan.vargas@unmsm.edu.pe'), -- hermano
('23200013', 'Diego', 'Lopez Mendoza', 'diego.lopez@unmsm.edu.pe'),
('23200014', 'Daniela', 'Medina Quispe', 'daniela.medina@unmsm.edu.pe'),
('23200015', 'Javier', 'Ramos Huaman', 'javier.ramos@unmsm.edu.pe'),
('23200016', 'Fatima', 'Gonzales Peña', 'fatima.gonzales@unmsm.edu.pe'),
('23200017', 'Sofia', 'Silva Torres', 'sofia.silva@unmsm.edu.pe'),
('23200018', 'Erick', 'Quispe Huayta', 'erick.quispe@unmsm.edu.pe'),
('23200019', 'Milagros', 'Carrillo Inga', 'milagros.carrillo@unmsm.edu.pe'),
('23200020', 'Jose Luis', 'Paredes Quispe', 'joseluis.paredes@unmsm.edu.pe'),
('23200021', 'Luis Alberto', 'Gomez Araujo', 'luis.alberto@unmsm.edu.pe'), -- tocayo
('23200022', 'Natalia', 'Cruz Arce', 'natalia.cruz@unmsm.edu.pe'),
('23200023', 'Alonso', 'Palacios Zevallos', 'alonso.palacios@unmsm.edu.pe'),
('23200024', 'Karla', 'Soto Ñahui', 'karla.soto@unmsm.edu.pe'),
('23200025', 'Victor', 'Chavez Peña', 'victor.chavez@unmsm.edu.pe'),
('23200026', 'Bruno', 'Delgado Salas', 'bruno.delgado@unmsm.edu.pe'),
('23200027', 'Luz', 'Ticona Apaza', 'luz.ticona@unmsm.edu.pe'),
('23200028', 'Carmen', 'Fernandez Soto', 'carmen.fernandez@unmsm.edu.pe'),
('23200029', 'Jhon', 'Valverde León', 'jhon.valverde@unmsm.edu.pe'),
('23200030', 'Luis Enrique', 'Cabrera Yupanqui', 'luis.enrique@unmsm.edu.pe'),
('23200031', 'Jose Miguel', 'Cruzado Llanos', 'josemiguel.cruzado@unmsm.edu.pe'),
('23200032', 'Fiorella', 'Ramos Flores', 'fiorella.ramos@unmsm.edu.pe'),
('23200033', 'Sebastian', 'Gutierrez Roman', 'sebastian.gutierrez@unmsm.edu.pe'),
('23200034', 'Lucero', 'Espinoza Ñahui', 'lucero.espinoza@unmsm.edu.pe'),
('23200035', 'Andres', 'Reyes Arce', 'andres.reyes@unmsm.edu.pe'),
('23200036', 'Rodrigo', 'Acosta Lujan', 'rodrigo.acosta@unmsm.edu.pe'),
('23200037', 'Camila', 'Ortega Guzman', 'camila.ortega@unmsm.edu.pe'),
('23200038', 'Luis Fernando', 'Sanchez Gomez', 'luis.fernando@unmsm.edu.pe'), -- tocayo
('23200039', 'Alexandra', 'Torres Diaz', 'alexandra.torres@unmsm.edu.pe'), -- hermana de Ana Maria
('23200040', 'Ricardo', 'Yupanqui Salas', 'ricardo.yupanqui@unmsm.edu.pe'),
('23200041', 'Yasmin', 'Nina Suyo', 'yasmin.nina@unmsm.edu.pe'),
('23200042', 'Gabriela', 'Huamaní Tello', 'gabriela.huamani@unmsm.edu.pe'),
('23200043', 'Renzo', 'Castañeda Zárate', 'renzo.castaneda@unmsm.edu.pe'),
('23200044', 'Patricia', 'Calle Quiroz', 'patricia.calle@unmsm.edu.pe'),
('23200045', 'Eduardo', 'Arana Rios', 'eduardo.arana@unmsm.edu.pe'),
('23200046', 'Luis', 'Rojas Mejia', 'luis.rojas@unmsm.edu.pe'), -- tocayo
('23200047', 'Martha', 'Mendoza Peña', 'martha.mendoza@unmsm.edu.pe'),
('23200048', 'Julio', 'Inga Mamani', 'julio.inga@unmsm.edu.pe'),
('23200049', 'Yesenia', 'Velasquez Vera', 'yesenia.velasquez@unmsm.edu.pe'),
('23200050', 'Frank', 'Vega Cotrina', 'frank.vega@unmsm.edu.pe');

SELECT * FROM estudiante;


-- DOCENTES
DESC docente;
INSERT INTO docente (id_docente, nombre, apellido, correo, especialidad, telefono) VALUES
('DOC00001', 'Marcos Brayan', 'Salazar Espinoza', 'marcos.salazar@unmsm.edu.pe', 'Matematica', '987654321'),
('DOC00002', 'Diana Isabel', 'Reyes Miñope', 'diana.reyes@unmsm.edu.pe', 'Historia', '987654322'),
('DOC00003', 'Carlos', 'Obando Orúe', 'carlos.obando@unmsm.edu.pe', 'Computacion', '926251883'),
('DOC00004', 'Laura Isabel', 'Chavez Herrera', 'laura.chavez@unmsm.edu.pe', 'Medio Ambiente', ''),
('DOC00005', 'Elena', 'Paredes Galvez', 'elena.paredes@unmsm.edu.pe', 'Fisica', '987654325');

-- CURSOS
DESC curso;
INSERT INTO curso (id_curso, nombre) VALUES
('20123001', 'Matematica'),
('20123002', 'Historia'),
('20123003', 'Computacion'),
('20123004', 'Medio Ambiente'),
('20123005', 'Fisica');

-- DIFICULTAD
DESC dificultad;
INSERT INTO dificultad (id_dificultad, descripcion_dificultad) VALUES
('DFCT0001', 'Facil'),
('DFCT0002', 'Intermedio'),
('DFCT0003', 'Dificil');

-- PLANTILLAS
SELECT * FROM plantilla;
INSERT INTO plantilla (id_plantilla, descripcion_plantilla) VALUES
('PLANT001', 'Plantilla de Matemática'),
('PLANT002', 'Plantilla de Historia'),
('PLANT003', 'Plantilla de Computacion'),
('PLANT004', 'Plantilla de Medio Ambiente'),
('PLANT005', 'Plantilla de Fisica');

-- DETALLE PLANTILLA
DESC detalle_plantilla;
INSERT INTO detalle_plantilla (id_detalle_plantilla, id_plantilla, id_curso, cantidadFaciles, cantidadIntermedias, cantidadDificiles)
VALUES
-- Tendremos 3 tipos de detalle_plantilla (diferentes cantidades de preguntas F,I,D)
-- Pregunta Facil = 1 ptos, Pregunta Intermedia = 2 ptos, Pregunta Dificil = 3 ptos

-- Curso de Matemática
('DPLT0001', 'PLANT001', '20123001', 8,3, 2),
('DPLT0002', 'PLANT001', '20123001', 6, 4, 2),
('DPLT0003', 'PLANT001', '20123001', 5, 3, 3),

-- Curso de Historia
('DPLT0004', 'PLANT002', '20123002', 8, 3, 2),
('DPLT0005', 'PLANT002', '20123002', 6, 4, 2),
('DPLT0006', 'PLANT002', '20123002', 5, 3, 3),

-- Curso de Computación
('DPLT0007', 'PLANT003', '20123003', 8, 3, 2),
('DPLT0008', 'PLANT003', '20123003', 6, 4, 2),
('DPLT0009', 'PLANT003', '20123003', 5, 3, 3),

-- Curso de Medio Ambiente
('DPLT0010', 'PLANT004', '20123004', 8, 3, 2),
('DPLT0011', 'PLANT004', '20123004', 6, 4, 2),
('DPLT0012', 'PLANT004', '20123004', 5, 3, 3),

-- Curso de Física
('DPLT0013', 'PLANT005', '20123005', 8, 3, 2),
('DPLT0014', 'PLANT005', '20123005', 6, 4, 2),
('DPLT0015', 'PLANT005', '20123005', 5, 3, 3);


DESC pregunta;
INSERT INTO pregunta (id_pregunta, id_curso, id_dificultad, enunciado, tipo_pregunta, puntaje_maximo)
VALUES
-- PREGUNTAS Matematica
-- FACILES
('PREG0001', '20123001', 'DFCT0001', '¿El número 0 es un numero par? (V/F)', 'VF', 1),
('PREG0002', '20123001', 'DFCT0001', 'La suma de 5 y 7 es ___', 'RELLENAR', 1),
('PREG0003', '20123001', 'DFCT0001', '¿Cuál es un número primo?', 'SELECCIÓN', 1),
('PREG0004', '20123001', 'DFCT0001', '¿Cuánto es 9 × 3?', 'SELECCIÓN', 1),
('PREG0005', '20123001', 'DFCT0001', '¿La resta es conmutativa? (V/F)', 'VF', 1),
('PREG0006', '20123001', 'DFCT0001', 'La raíz cuadrada de 16 es ___', 'RELLENAR', 1),
('PREG0007', '20123001', 'DFCT0001', '¿Cuál es el resultado de 15 ÷ 3?', 'SELECCIÓN', 1),
('PREG0008', '20123001', 'DFCT0001', '¿El número 10 es divisible por 2? (V/F)', 'VF', 1),
('PREG0009', '20123001', 'DFCT0001', '3 + 4 × 2 = ___', 'RELLENAR', 1),
('PREG0010', '20123001', 'DFCT0001', '¿Cuál es el valor de 2²?', 'SELECCIÓN', 1),

-- INTERMEDIAS - MATEMATICA
('PREG0011', '20123001', 'DFCT0002', 'La fracción 2/4 es equivalente a 1/2. (V/F)', 'VF', 2),
('PREG0012', '20123001', 'DFCT0002', 'Resuelve: 3x + 2 = 11. ¿x = ___?', 'RELLENAR', 2),
('PREG0013', '20123001', 'DFCT0002', '¿Cuál es la raíz cuadrada de 81?', 'SELECCIÓN', 2),
('PREG0014', '20123001', 'DFCT0002', 'El número decimal 0.75 es igual a 3/4. (V/F)', 'VF', 2),
('PREG0015', '20123001', 'DFCT0002', 'Completa: El área de un triángulo es (base × altura) ÷ ___', 'RELLENAR', 2),
('PREG0016', '20123001', 'DFCT0002', '¿Cuál es el valor absoluto de -12?', 'SELECCIÓN', 2),
('PREG0017', '20123001', 'DFCT0002', '¿Toda proporción es una igualdad entre dos razones? (V/F)', 'VF', 2),
('PREG0018', '20123001', 'DFCT0002', 'Calcula: Si x = 4, ¿cuánto vale 2x² - 3x?', 'RELLENAR', 2),
('PREG0019', '20123001', 'DFCT0002', '¿Cuál es la media aritmética de 4, 6 y 10?', 'SELECCIÓN', 2),
('PREG0020', '20123001', 'DFCT0002', '¿El número 1.4142 es una aproximación de qué número irracional?', 'SELECCIÓN', 2),


('PREG0021', '20123001', 'DFCT0003', '¿Un número irracional puede escribirse como una fracción exacta? (V/F)', 'VF', 3),
('PREG0022', '20123001', 'DFCT0003', 'Resuelve: log₁₀(100) = ___', 'RELLENAR', 3),
('PREG0023', '20123001', 'DFCT0003', '¿Cuál de estos es un número irracional?', 'SELECCIÓN', 3),
('PREG0024', '20123001', 'DFCT0003', 'El conjunto de los números reales incluye a los imaginarios. (V/F)', 'VF', 3),
('PREG0025', '20123001', 'DFCT0003', 'Si f(x) = x² − 2x + 1, entonces f(3) = ___', 'RELLENAR', 3),
('PREG0026', '20123001', 'DFCT0003', '¿Cuál es el resultado de 2⁴ ÷ 2²?', 'SELECCIÓN', 3),
('PREG0027', '20123001', 'DFCT0003', '¿El discriminante determina el número de soluciones reales de una ecuación cuadrática? (V/F)', 'VF', 3),
('PREG0028', '20123001', 'DFCT0003', 'En una progresión aritmética con primer término 3 y razón 4, ¿cuál es el cuarto término?', 'RELLENAR', 3),
('PREG0029', '20123001', 'DFCT0003', '¿Cuál es el dominio de f(x) = 1 / (x − 3)?', 'SELECCIÓN', 3),
('PREG0030', '20123001', 'DFCT0003', '¿El número e (≈2.718) es un número irracional? (V/F)', 'VF', 3);

SELECT * FROM pregunta;

-- PREGUNTAS Historia
-- FACILES
INSERT INTO pregunta (id_pregunta, id_curso, id_dificultad, enunciado, tipo_pregunta, puntaje_maximo)
VALUES
-- HISTORIA - FACILES
('PREG0031', '20123002', 'DFCT0001', 'Cristóbal Colón descubrió América en 1492. (V/F)', 'VF', 1),
('PREG0032', '20123002', 'DFCT0001', 'El imperio romano cayó en el año ___ d.C.', 'RELLENAR', 1),
('PREG0033', '20123002', 'DFCT0001', '¿Quién fue el primer presidente de Estados Unidos?', 'SELECCIÓN', 1),
('PREG0034', '20123002', 'DFCT0001', 'La Segunda Guerra Mundial terminó en 1945. (V/F)', 'VF', 1),
('PREG0035', '20123002', 'DFCT0001', 'La independencia del Perú fue en el año ___', 'RELLENAR', 1),
('PREG0036', '20123002', 'DFCT0001', '¿En qué país se originó la Revolución Francesa?', 'SELECCIÓN', 1),
('PREG0037', '20123002', 'DFCT0001', 'Napoleón Bonaparte fue emperador de Francia. (V/F)', 'VF', 1),
('PREG0038', '20123002', 'DFCT0001', 'Completa: La Edad Media se desarrolló entre la Edad Antigua y la Edad ___', 'RELLENAR', 1),
('PREG0039', '20123002', 'DFCT0001', '¿Quién lideró la marcha por los derechos civiles en EE. UU. en los años 60?', 'SELECCIÓN', 1),
('PREG0040', '20123002', 'DFCT0001', 'Simón Bolívar luchó por la independencia de varios países sudamericanos. (V/F)', 'VF', 1),

-- HISTORIA - INTERMEDIAS
('PREG0041', '20123002', 'DFCT0002', 'La Guerra Fría fue un conflicto directo entre Estados Unidos y la URSS. (V/F)', 'VF', 2),
('PREG0042', '20123002', 'DFCT0002', '¿En qué año comenzó la Primera Guerra Mundial?', 'RELLENAR', 2),
('PREG0043', '20123002', 'DFCT0002', '¿Quién fue el líder del Tercer Reich durante la Segunda Guerra Mundial?', 'SELECCIÓN', 2),
('PREG0044', '20123002', 'DFCT0002', 'La Revolución Industrial inició en Inglaterra. (V/F)', 'VF', 2),
('PREG0045', '20123002', 'DFCT0002', 'Napoleón fue derrotado definitivamente en la batalla de ___', 'RELLENAR', 2),
('PREG0046', '20123002', 'DFCT0002', '¿Qué país fue invadido por Alemania en 1939, iniciando la Segunda Guerra Mundial?', 'SELECCIÓN', 2),
('PREG0047', '20123002', 'DFCT0002', 'El muro de Berlín cayó en 1989. (V/F)', 'VF', 2),
('PREG0048', '20123002', 'DFCT0002', '¿Cuál fue el sistema económico dominante en Europa durante la Edad Media?', 'SELECCIÓN', 2),
('PREG0049', '20123002', 'DFCT0002', 'La Revolución Rusa ocurrió en el año ___', 'RELLENAR', 2),
('PREG0050', '20123002', 'DFCT0002', '¿El Renacimiento fue un movimiento cultural que sucedió en la Edad Moderna? (V/F)', 'VF', 2),
-- DIFICIL
('PREG0051', '20123002', 'DFCT0003', 'La Conferencia de Yalta se realizó antes de finalizar la Segunda Guerra Mundial. (V/F)', 'VF', 3),
('PREG0052', '20123002', 'DFCT0003', '¿Qué tratado puso fin a la Primera Guerra Mundial?', 'RELLENAR', 3),
('PREG0053', '20123002', 'DFCT0003', '¿Quién fue el último zar de Rusia?', 'SELECCIÓN', 3),
('PREG0054', '20123002', 'DFCT0003', 'La independencia de Haití fue la primera en América Latina. (V/F)', 'VF', 3),
('PREG0055', '20123002', 'DFCT0003', '¿En qué año se firmó la Declaración de Independencia de Estados Unidos?', 'RELLENAR', 3),
('PREG0056', '20123002', 'DFCT0003', '¿Qué civilización desarrolló el concepto del cero como número?', 'SELECCIÓN', 3),
('PREG0057', '20123002', 'DFCT0003', '¿El Plan Marshall fue una ayuda económica de EE.UU. para Europa tras la Segunda Guerra Mundial? (V/F)', 'VF', 3),
('PREG0058', '20123002', 'DFCT0003', 'Napoleón fue exiliado por segunda vez a la isla de ___', 'RELLENAR', 3),
('PREG0059', '20123002', 'DFCT0003', '¿Qué país colonizó inicialmente el Congo durante el siglo XIX?', 'SELECCIÓN', 3),
('PREG0060', '20123002', 'DFCT0003', 'El apartheid fue un sistema de segregación racial implementado en Sudáfrica. (V/F)', 'VF', 3);
























INSERT INTO pregunta (id_pregunta, id_curso, id_dificultad, enunciado, tipo_pregunta, puntaje_maximo)
VALUES
-- COMPUTACION - FACILES
('PREG0061', '20123003', 'DFCT0001', 'Una computadora necesita electricidad para funcionar. (V/F)', 'VF', 1),
('PREG0062', '20123003', 'DFCT0001', 'El lenguaje de programación más usado para crear páginas web es ___', 'RELLENAR', 1),
('PREG0063', '20123003', 'DFCT0001', '¿Cuál de los siguientes es un sistema operativo?', 'SELECCIÓN', 1),
('PREG0064', '20123003', 'DFCT0001', 'Un bit es la unidad más pequeña de información digital. (V/F)', 'VF', 1),
('PREG0065', '20123003', 'DFCT0001', 'La sigla CPU significa ___', 'RELLENAR', 1),
('PREG0066', '20123003', 'DFCT0001', '¿Cuál de los siguientes dispositivos es de entrada?', 'SELECCIÓN', 1),
('PREG0067', '20123003', 'DFCT0001', 'El teclado es un periférico de entrada. (V/F)', 'VF', 1),
('PREG0068', '20123003', 'DFCT0001', 'Una impresora es un dispositivo de ___', 'RELLENAR', 1),
('PREG0069', '20123003', 'DFCT0001', '¿Cuál de los siguientes es un navegador web?', 'SELECCIÓN', 1),
('PREG0070', '20123003', 'DFCT0001', 'Google Chrome es un navegador de internet. (V/F)', 'VF', 1),

-- COMPUTACION - INTERMEDIO
('PREG0071', '20123003', 'DFCT0002', 'HTML es un lenguaje de programación. (V/F)', 'VF', 2),
('PREG0072', '20123003', 'DFCT0002', 'La memoria RAM se utiliza para almacenar datos de manera ___', 'RELLENAR', 2),
('PREG0073', '20123003', 'DFCT0002', '¿Cuál de los siguientes lenguajes es usado para el desarrollo web en el lado del cliente?', 'SELECCIÓN', 2),
('PREG0074', '20123003', 'DFCT0002', 'Los dispositivos de almacenamiento como el disco duro son permanentes. (V/F)', 'VF', 2),
('PREG0075', '20123003', 'DFCT0002', 'CSS se utiliza para definir el ___ de una página web.', 'RELLENAR', 2),
('PREG0076', '20123003', 'DFCT0002', '¿Cuál de los siguientes es un lenguaje de programación interpretado?', 'SELECCIÓN', 2),
('PREG0077', '20123003', 'DFCT0002', 'Los archivos con extensión .exe son archivos ejecutables. (V/F)', 'VF', 2),
('PREG0078', '20123003', 'DFCT0002', 'Una base de datos relacional almacena información en forma de ___', 'RELLENAR', 2),
('PREG0079', '20123003', 'DFCT0002', '¿Qué software se usa comúnmente para gestionar bases de datos relacionales?', 'SELECCIÓN', 2),
('PREG0080', '20123003', 'DFCT0002', 'Linux es un sistema operativo de código abierto. (V/F)', 'VF', 2),

-- COMPUTACION - DIFICILES
('PREG0081', '20123003', 'DFCT0003', 'La arquitectura de Von Neumann se basa en un único bus para instrucciones y datos. (V/F)', 'VF', 3),
('PREG0082', '20123003', 'DFCT0003', 'La recursión en programación es una técnica donde una función se llama a ___', 'RELLENAR', 3),
('PREG0083', '20123003', 'DFCT0003', '¿Cuál de las siguientes estructuras de datos funciona como FIFO?', 'SELECCIÓN', 3),
('PREG0084', '20123003', 'DFCT0003', 'Los algoritmos de ordenamiento como QuickSort tienen eficiencia promedio de O(n log n). (V/F)', 'VF', 3),
('PREG0085', '20123003', 'DFCT0003', 'SQL es un lenguaje utilizado principalmente para ___', 'RELLENAR', 3),
('PREG0086', '20123003', 'DFCT0003', '¿Cuál de los siguientes algoritmos es de búsqueda binaria?', 'SELECCIÓN', 3),
('PREG0087', '20123003', 'DFCT0003', 'El modelo cliente-servidor es la base de internet. (V/F)', 'VF', 3),
('PREG0088', '20123003', 'DFCT0003', 'Un compilador traduce código de alto nivel a ___', 'RELLENAR', 3),
('PREG0089', '20123003', 'DFCT0003', '¿Qué lenguaje es conocido por usarse en inteligencia artificial?', 'SELECCIÓN', 3),
('PREG0090', '20123003', 'DFCT0003', 'Los sistemas operativos gestionan tanto el hardware como el software. (V/F)', 'VF', 3);






INSERT INTO pregunta (id_pregunta, id_curso, id_dificultad, enunciado, tipo_pregunta, puntaje_maximo)
VALUES
-- MEDIO AMBIENTE - FACILES
('PREG0091', '20123004', 'DFCT0001', 'El agua es un recurso natural renovable. (V/F)', 'VF', 1),
('PREG0092', '20123004', 'DFCT0001', 'El color del contenedor para residuos orgánicos es ___', 'RELLENAR', 1),
('PREG0093', '20123004', 'DFCT0001', '¿Cuál de los siguientes es un recurso natural?', 'SELECCIÓN', 1),
('PREG0094', '20123004', 'DFCT0001', 'Las plantas purifican el aire. (V/F)', 'VF', 1),
('PREG0095', '20123004', 'DFCT0001', 'El reciclaje reduce la producción de ___', 'RELLENAR', 1),
('PREG0096', '20123004', 'DFCT0001', '¿Qué gas es esencial para la respiración humana?', 'SELECCIÓN', 1),
('PREG0097', '20123004', 'DFCT0001', 'Respirar aire contaminado puede causar enfermedades. (V/F)', 'VF', 1),
('PREG0098', '20123004', 'DFCT0001', 'El plástico es un material que tarda mucho en ___', 'RELLENAR', 1),
('PREG0099', '20123004', 'DFCT0001', '¿Cuál de los siguientes no es un contaminante?', 'SELECCIÓN', 1),
('PREG0100', '20123004', 'DFCT0001', 'La energía solar es limpia y renovable. (V/F)', 'VF', 1),
-- MEDIO AMBIENTE - INTERMEDIAS
('PREG0101', '20123004', 'DFCT0002', 'Los gases de efecto invernadero contribuyen al calentamiento global. (V/F)', 'VF', 2),
('PREG0102', '20123004', 'DFCT0002', 'La capa de ___ protege la Tierra de los rayos UV.', 'RELLENAR', 2),
('PREG0103', '20123004', 'DFCT0002', '¿Cuál de los siguientes elementos es reciclable?', 'SELECCIÓN', 2),
('PREG0104', '20123004', 'DFCT0002', 'El uso excesivo de pesticidas afecta la salud humana. (V/F)', 'VF', 2),
('PREG0105', '20123004', 'DFCT0002', 'Una de las consecuencias de la deforestación es la pérdida de ___', 'RELLENAR', 2),
('PREG0106', '20123004', 'DFCT0002', '¿Cuál de estos comportamientos ayuda a cuidar el medio ambiente?', 'SELECCIÓN', 2),
('PREG0107', '20123004', 'DFCT0002', 'La acumulación de basura puede generar plagas. (V/F)', 'VF', 2),
('PREG0108', '20123004', 'DFCT0002', 'El dióxido de carbono se produce en gran cantidad por la quema de ___', 'RELLENAR', 2),
('PREG0109', '20123004', 'DFCT0002', '¿Cuál es un ejemplo de energía limpia?', 'SELECCIÓN', 2),
('PREG0110', '20123004', 'DFCT0002', 'El calentamiento global produce el derretimiento de los glaciares. (V/F)', 'VF', 2),
-- MEDIO AMBIENTE - DIFICILES
('PREG0111', '20123004', 'DFCT0003', 'Los océanos absorben gran parte del CO₂ emitido por actividades humanas. (V/F)', 'VF', 3),
('PREG0112', '20123004', 'DFCT0003', 'El protocolo de ___ fue creado para reducir la emisión de gases que dañan la capa de ozono.', 'RELLENAR', 3),
('PREG0113', '20123004', 'DFCT0003', '¿Cuál de las siguientes es una consecuencia directa del calentamiento global?', 'SELECCIÓN', 3),
('PREG0114', '20123004', 'DFCT0003', 'Los microplásticos son contaminantes que afectan la fauna marina. (V/F)', 'VF', 3),
('PREG0115', '20123004', 'DFCT0003', 'El deshielo del permafrost libera grandes cantidades de ___', 'RELLENAR', 3),
('PREG0116', '20123004', 'DFCT0003', '¿Cuál es una medida internacional para combatir el cambio climático?', 'SELECCIÓN', 3),
('PREG0117', '20123004', 'DFCT0003', 'La acidificación de los océanos es causada por la absorción de CO₂. (V/F)', 'VF', 3),
('PREG0118', '20123004', 'DFCT0003', 'Las especies invasoras pueden alterar ecosistemas al competir con especies ___', 'RELLENAR', 3),
('PREG0119', '20123004', 'DFCT0003', '¿Qué sector es el principal responsable de la deforestación en la Amazonía?', 'SELECCIÓN', 3),
('PREG0120', '20123004', 'DFCT0003', 'El efecto isla de calor urbano es un fenómeno relacionado al aumento de temperatura en ciudades. (V/F)', 'VF', 3);





INSERT INTO pregunta (id_pregunta, id_curso, id_dificultad, enunciado, tipo_pregunta, puntaje_maximo)
VALUES
-- FISICA - FACILES
('PREG0121', '20123005', 'DFCT0001', 'La gravedad de la Tierra atrae los objetos hacia su centro. (V/F)', 'VF', 1),
('PREG0122', '20123005', 'DFCT0001', 'Un cuerpo en reposo tiende a permanecer ___', 'RELLENAR', 1),
('PREG0123', '20123005', 'DFCT0001', '¿Cuál es la unidad de medida de la fuerza?', 'SELECCIÓN', 1),
('PREG0124', '20123005', 'DFCT0001', 'La velocidad se mide en metros por segundo. (V/F)', 'VF', 1),
('PREG0125', '20123005', 'DFCT0001', 'La energía no se ___, solo se transforma.', 'RELLENAR', 1),
('PREG0126', '20123005', 'DFCT0001', '¿Qué instrumento se usa para medir la masa?', 'SELECCIÓN', 1),
('PREG0127', '20123005', 'DFCT0001', 'Un imán tiene dos polos: norte y sur. (V/F)', 'VF', 1),
('PREG0128', '20123005', 'DFCT0001', 'La temperatura se mide en grados ___', 'RELLENAR', 1),
('PREG0129', '20123005', 'DFCT0001', '¿Cuál de los siguientes es un ejemplo de energía cinética?', 'SELECCIÓN', 1),
('PREG0130', '20123005', 'DFCT0001', 'La luz viaja más rápido que el sonido. (V/F)', 'VF', 1),

-- FISICA - INTERMEDIAS
('PREG0131', '20123005', 'DFCT0002', 'La segunda ley de Newton establece que F = m × a. (V/F)', 'VF', 2),
('PREG0132', '20123005', 'DFCT0002', 'La presión se mide en unidades llamadas ___', 'RELLENAR', 2),
('PREG0133', '20123005', 'DFCT0002', '¿Cuál de los siguientes es un ejemplo de energía potencial?', 'SELECCIÓN', 2),
('PREG0134', '20123005', 'DFCT0002', 'El sonido necesita un medio para propagarse. (V/F)', 'VF', 2),
('PREG0135', '20123005', 'DFCT0002', 'La fórmula de la densidad es masa entre ___', 'RELLENAR', 2),
('PREG0136', '20123005', 'DFCT0002', '¿Cuál es un ejemplo de un conductor eléctrico?', 'SELECCIÓN', 2),
('PREG0137', '20123005', 'DFCT0002', 'La luz blanca se descompone en ___ colores al pasar por un prisma.', 'RELLENAR', 2),
('PREG0138', '20123005', 'DFCT0002', '¿Cuál de estos materiales es aislante térmico?', 'SELECCIÓN', 2),
('PREG0139', '20123005', 'DFCT0002', 'La fricción actúa en dirección opuesta al movimiento. (V/F)', 'VF', 2),
('PREG0140', '20123005', 'DFCT0002', 'La energía ___ se obtiene del calor interno de la Tierra.', 'RELLENAR', 2),

-- FISICA - DIFICILES
('PREG0141', '20123005', 'DFCT0003', 'El principio de conservación de la energía establece que la energía no se crea ni se destruye. (V/F)', 'VF', 3),
('PREG0142', '20123005', 'DFCT0003', 'La ley de ___ explica la relación entre presión y volumen en los gases.', 'RELLENAR', 3),
('PREG0143', '20123005', 'DFCT0003', '¿Cuál es la partícula subatómica con carga negativa?', 'SELECCIÓN', 3),
('PREG0144', '20123005', 'DFCT0003', 'El campo magnético terrestre se origina en el núcleo externo de la Tierra. (V/F)', 'VF', 3),
('PREG0145', '20123005', 'DFCT0003', 'La fórmula para calcular trabajo es fuerza por ___', 'RELLENAR', 3),
('PREG0146', '20123005', 'DFCT0003', '¿Cuál de las siguientes ondas necesita un medio para propagarse?', 'SELECCIÓN', 3),
('PREG0147', '20123005', 'DFCT0003', 'Un circuito en paralelo tiene varias rutas para la corriente. (V/F)', 'VF', 3),
('PREG0148', '20123005', 'DFCT0003', 'La ___ es una propiedad que indica la oposición al paso de corriente.', 'RELLENAR', 3),
('PREG0149', '20123005', 'DFCT0003', '¿Qué fenómeno permite que la luz cambie de dirección al pasar por otro medio?', 'SELECCIÓN', 3),
('PREG0150', '20123005', 'DFCT0003', 'La aceleración es la variación de la velocidad respecto al tiempo. (V/F)', 'VF', 3);













-- EXAMENES
DESC examen;
select * from examen;
delete from examen;
INSERT INTO examen (id_examen, id_estudiante, id_plantilla, id_docente, fecha, puntaje_final, estado) 
VALUES
-- MATEMATICA
('EXAM0001', '23200001', 'PLANT001', 'DOC00001', '2025-06-20', 16, 'Calificado'),
('EXAM0002', '23200002', 'PLANT002', 'DOC00001', '2025-06-20', 18, 'Calificado'),
('EXAM0003', '23200003', 'PLANT003', 'DOC00001', '2025-06-21', 17, 'Calificado'),
('EXAM0004', '23200004', 'PLANT001', 'DOC00001', '2025-06-20', 16, 'Calificado'),
('EXAM0005', '23200005', 'PLANT002', 'DOC00001', '2025-06-20', 18, 'Calificado'),
('EXAM0006', '23200006', 'PLANT003', 'DOC00001', '2025-06-21', 17, 'Calificado'),
('EXAM0007', '23200007', 'PLANT001', 'DOC00001', '2025-06-20', 16, 'Calificado'),
('EXAM0008', '23200008', 'PLANT002', 'DOC00001', '2025-06-20', 18, 'Calificado'),
('EXAM0009', '23200009', 'PLANT003', 'DOC00001', '2025-06-21', 17, 'Calificado'),
('EXAM0010', '23200010', 'PLANT001', 'DOC00001', '2025-06-20', 16, 'Calificado'),

-- HISTORIA 
('EXAM0011', '23200011', 'PLANT001', 'DOC00002', '2025-06-20', 18, 'Calificado'),
('EXAM0012', '23200012', 'PLANT002', 'DOC00002', '2025-06-21', 17, 'Calificado'),
('EXAM0013', '23200013', 'PLANT003', 'DOC00002', '2025-06-20', 16, 'Calificado'),
('EXAM0014', '23200014', 'PLANT001', 'DOC00002', '2025-06-20', 18, 'Calificado'),
('EXAM0015', '23200015', 'PLANT002', 'DOC00002', '2025-06-21', 17, 'Calificado'),
('EXAM0016', '23200016', 'PLANT003', 'DOC00002', '2025-06-20', 16, 'Calificado'),
('EXAM0017', '23200017', 'PLANT001', 'DOC00002', '2025-06-20', 18, 'Calificado'),
('EXAM0018', '23200018', 'PLANT002', 'DOC00002', '2025-06-21', 17, 'Calificado'),
('EXAM0019', '23200019', 'PLANT003', 'DOC00002', '2025-06-20', 16, 'Calificado'),
('EXAM0020', '23200020', 'PLANT001', 'DOC00002', '2025-06-20', 18, 'Calificado'),


-- MEDIO AMBIENTE
('EXAM0021', '23200021', 'PLANT001', 'DOC00003', '2025-06-21', 17, 'Calificado'),
('EXAM0022', '23200022', 'PLANT002', 'DOC00003', '2025-06-20', 16, 'Calificado'),
('EXAM0023', '23200023', 'PLANT003', 'DOC00003', '2025-06-20', 18, 'Calificado'),
('EXAM0024', '23200024', 'PLANT001', 'DOC00003', '2025-06-21', 17, 'Calificado'),
('EXAM0025', '23200025', 'PLANT002', 'DOC00003', '2025-06-20', 16, 'Calificado'),
('EXAM0026', '23200026', 'PLANT003', 'DOC00003', '2025-06-20', 18, 'Calificado'),
('EXAM0027', '23200027', 'PLANT001', 'DOC00003', '2025-06-21', 17, 'Calificado'),
('EXAM0028', '23200028', 'PLANT002', 'DOC00003', '2025-06-20', 16, 'Calificado'),
('EXAM0029', '23200029', 'PLANT003', 'DOC00003', '2025-06-20', 18, 'Calificado'),
('EXAM0030', '23200039', 'PLANT001', 'DOC00003', '2025-06-21', 17, 'Calificado'),

-- COMPUTACION
('EXAM0031', '23200031', 'PLANT001', 'DOC00004', '2025-06-20', 16, 'Calificado'),
('EXAM0032', '23200032', 'PLANT002', 'DOC00004', '2025-06-20', 18, 'Calificado'),
('EXAM0033', '23200033', 'PLANT003', 'DOC00004', '2025-06-21', 17, 'Calificado'),
('EXAM0034', '23200034', 'PLANT001', 'DOC00004', '2025-06-20', 16, 'Calificado'),
('EXAM0035', '23200035', 'PLANT002', 'DOC00004', '2025-06-20', 18, 'Calificado'),
('EXAM0036', '23200036', 'PLANT003', 'DOC00004', '2025-06-21', 17, 'Calificado'),
('EXAM0037', '23200037', 'PLANT001', 'DOC00004', '2025-06-20', 16, 'Calificado'),
('EXAM0038', '23200038', 'PLANT002', 'DOC00004', '2025-06-20', 18, 'Calificado'),
('EXAM0039', '23200039', 'PLANT003', 'DOC00004', '2025-06-21', 17, 'Calificado'),
('EXAM0040', '23200040', 'PLANT001', 'DOC00004', '2025-06-20', 16, 'Calificado'),

-- FISICA
('EXAM0041', '23200041', 'PLANT001', 'DOC00005', '2025-06-20', 18, 'Calificado'),
('EXAM0042', '23200042', 'PLANT001', 'DOC00005', '2025-06-21', 17, 'Calificado'),
('EXAM0043', '23200043', 'PLANT001', 'DOC00005', '2025-06-20', 16, 'Calificado'),
('EXAM0044', '23200044', 'PLANT001', 'DOC00005', '2025-06-20', 18, 'Calificado'),
('EXAM0045', '23200045', 'PLANT001', 'DOC00005', '2025-06-21', 17, 'Calificado'),
('EXAM0046', '23200046', 'PLANT001', 'DOC00005', '2025-06-20', 16, 'Calificado'),
('EXAM0047', '23200047', 'PLANT001', 'DOC00005', '2025-06-20', 18, 'Calificado'),
('EXAM0048', '23200048', 'PLANT001', 'DOC00005', '2025-06-21', 17, 'Calificado'),
('EXAM0049', '23200049', 'PLANT001', 'DOC00005', '2025-06-20', 16, 'Calificado'),
('EXAM0050', '23200050', 'PLANT001', 'DOC00005', '2025-06-20', 18, 'Calificado');


-- PREGUNTA_EXAMEN
DESC pregunta_examen;
SELECT * FROM pregunta_examen;
DELETE FROM pregunta_examen;
INSERT INTO pregunta_examen (id_examen, id_pregunta) VALUES
-- MATEMATICA
-- EXAM0001: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0001', 'PREG0001'), ('EXAM0001', 'PREG0002'), ('EXAM0001', 'PREG0003'),
('EXAM0001', 'PREG0004'), ('EXAM0001', 'PREG0005'), ('EXAM0001', 'PREG0006'),
('EXAM0001', 'PREG0007'), ('EXAM0001', 'PREG0008'), -- 8 fáciles
('EXAM0001', 'PREG0011'),('EXAM0001', 'PREG0012'), ('EXAM0001', 'PREG0013'), -- 3 intermedias
('EXAM0001', 'PREG0021'), ('EXAM0001', 'PREG0022'), -- 2 difciles

-- EXAM0002: plantilla DPLT0002 (6 fáciles, 4 intermedias, 2 difíciles)
('EXAM0002', 'PREG0009'), ('EXAM0002', 'PREG0010'), ('EXAM0002', 'PREG0001'),
('EXAM0002', 'PREG0002'), ('EXAM0002', 'PREG0003'), ('EXAM0002', 'PREG0004'), -- 6 fáciles
('EXAM0002', 'PREG0016'), ('EXAM0002', 'PREG0017'),
('EXAM0002', 'PREG0014'), ('EXAM0002', 'PREG0015'), -- 4 intermedias
('EXAM0002', 'PREG0023'), ('EXAM0002', 'PREG0024'), -- 2 dificiles

-- EXAM0003: plantilla DPLT0003 (5 fáciles, 3 intermedias, 3 difíciles)
('EXAM0003', 'PREG0005'), ('EXAM0003', 'PREG0006'), ('EXAM0003', 'PREG0007'),
('EXAM0003', 'PREG0008'), ('EXAM0003', 'PREG0009'), -- 5 fáciles
('EXAM0003', 'PREG0016'), ('EXAM0003', 'PREG0017'),('EXAM0003', 'PREG0018'), -- 3 intermedias
('EXAM0003', 'PREG0025'),('EXAM0003', 'PREG0026'),('EXAM0003', 'PREG0027'), -- 3 dificiles

-- EXAM0004: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0004', 'PREG0010'), ('EXAM0004', 'PREG0001'), ('EXAM0004', 'PREG0002'),
('EXAM0004', 'PREG0003'), ('EXAM0004', 'PREG0004'), ('EXAM0004', 'PREG0005'),
('EXAM0004', 'PREG0006'), ('EXAM0004', 'PREG0007'), -- 8 faciles
('EXAM0004', 'PREG0019'), ('EXAM0004', 'PREG0020'), ('EXAM0004', 'PREG0011'), -- 3intermedias
('EXAM0004', 'PREG0028'),('EXAM0004', 'PREG0029'), -- 2 dificiles

-- EXAM0005: plantilla DPLT0002 (6 fáciles, 4 intermedias, 2 difíciles)
('EXAM0005', 'PREG0008'), ('EXAM0005', 'PREG0009'), ('EXAM0005', 'PREG0010'),
('EXAM0005', 'PREG0001'), ('EXAM0005', 'PREG0002'), ('EXAM0005', 'PREG0003'), -- 6 fáciles
('EXAM0005', 'PREG0012'), ('EXAM0005', 'PREG0013'), ('EXAM0005', 'PREG0014'),
('EXAM0005', 'PREG0015'), -- 4 intermedias
('EXAM0005', 'PREG0030'), ('EXAM0005', 'PREG0021'),-- 2 difíciles

-- EXAM0006: plantilla DPLT0003 (5 fáciles, 3 intermedias, 3 difíciles)
('EXAM0006', 'PREG0004'), ('EXAM0006', 'PREG0005'), ('EXAM0006', 'PREG0006'),
('EXAM0006', 'PREG0007'), ('EXAM0006', 'PREG0008'), -- 5 fáciles
('EXAM0006', 'PREG0016'), ('EXAM0006', 'PREG0017'), ('EXAM0006', 'PREG0018'), -- 3 intermedias
('EXAM0006', 'PREG0022'), ('EXAM0006', 'PREG0023'), ('EXAM0006', 'PREG0024'), -- 3 difíciles

-- EXAM0007: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0007', 'PREG0009'), ('EXAM0007', 'PREG0010'), ('EXAM0007', 'PREG0001'),
('EXAM0007', 'PREG0002'), ('EXAM0007', 'PREG0003'), ('EXAM0007', 'PREG0004'),
('EXAM0007', 'PREG0005'), ('EXAM0007', 'PREG0006'), -- 8 fáciles
('EXAM0007', 'PREG0019'), ('EXAM0007', 'PREG0020'), ('EXAM0007', 'PREG0011'), -- 3 intermedias
('EXAM0007', 'PREG0025'), ('EXAM0007', 'PREG0026'), -- 2 difíciles

-- EXAM0008: plantilla DPLT0002 (6 fáciles, 4 intermedias, 2 difíciles)
('EXAM0008', 'PREG0007'), ('EXAM0008', 'PREG0008'), ('EXAM0008', 'PREG0009'),
('EXAM0008', 'PREG0010'), ('EXAM0008', 'PREG0001'), ('EXAM0008', 'PREG0002'), -- 6 fáciles
('EXAM0008', 'PREG0012'), ('EXAM0008', 'PREG0013'), ('EXAM0008', 'PREG0014'), 
('EXAM0008', 'PREG0015'), -- 4 intermedias
('EXAM0008', 'PREG0027'), ('EXAM0008', 'PREG0028'), -- 2 difíciles

-- EXAM0009: plantilla DPLT0003 (5 fáciles, 3 intermedias, 3 difíciles)
('EXAM0009', 'PREG0003'), ('EXAM0009', 'PREG0004'), ('EXAM0009', 'PREG0005'),
('EXAM0009', 'PREG0006'), ('EXAM0009', 'PREG0007'), -- 5 fáciles
('EXAM0009', 'PREG0016'), ('EXAM0009', 'PREG0017'), ('EXAM0009', 'PREG0018'), -- 3 intermedias
('EXAM0009', 'PREG0029'), ('EXAM0009', 'PREG0030'), ('EXAM0009', 'PREG0021'), -- 3 difíciles

-- EXAM0010: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0010', 'PREG0008'), ('EXAM0010', 'PREG0009'), ('EXAM0010', 'PREG0010'),
('EXAM0010', 'PREG0001'), ('EXAM0010', 'PREG0002'), ('EXAM0010', 'PREG0003'),
('EXAM0010', 'PREG0004'), ('EXAM0010', 'PREG0005'), -- 8 fáciles
('EXAM0010', 'PREG0019'), ('EXAM0010', 'PREG0020'), ('EXAM0010', 'PREG0011'), -- 3 intermedias
('EXAM0010', 'PREG0022'), ('EXAM0010', 'PREG0023');-- 2 difíciles


-- HISTORIA:
INSERT INTO pregunta_examen (id_examen, id_pregunta) VALUES
-- EXAM0001: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0011', 'PREG0031'), ('EXAM0011', 'PREG0032'), ('EXAM0011', 'PREG0033'),
('EXAM0011', 'PREG0034'), ('EXAM0011', 'PREG0035'), ('EXAM0011', 'PREG0036'),
('EXAM0011', 'PREG0037'), ('EXAM0011', 'PREG0038'), -- 8 fáciles
('EXAM0011', 'PREG0041'), ('EXAM0011', 'PREG0042'), ('EXAM0011', 'PREG0043'), -- 3 intermedias
('EXAM0011', 'PREG0051'), ('EXAM0011', 'PREG0052'), -- 2 difciles

-- EXAM0012: plantilla DPLT0002 (6 fáciles, 4 intermedias, 2 difíciles)
('EXAM0012', 'PREG0039'), ('EXAM0012', 'PREG0040'), ('EXAM0002', 'PREG0031'),
('EXAM0012', 'PREG0032'), ('EXAM0012', 'PREG0033'), ('EXAM0002', 'PREG0034'), -- 6 fáciles
('EXAM0012', 'PREG0046'), ('EXAM0012', 'PREG0047'),
('EXAM0012', 'PREG0044'), ('EXAM0012', 'PREG0045'), -- 4 intermedias
('EXAM0012', 'PREG0053'), ('EXAM0012', 'PREG0054'), -- 2 dificiles

-- EXAM0003: plantilla DPLT0003 (5 fáciles, 3 intermedias, 3 difíciles)
('EXAM0013', 'PREG0035'), ('EXAM0013', 'PREG0036'), ('EXAM0013', 'PREG0037'),
('EXAM0013', 'PREG0038'), ('EXAM0013', 'PREG0039'), -- 5 fáciles
('EXAM0013', 'PREG0046'), ('EXAM0013', 'PREG0047'),('EXAM0013', 'PREG0048'), -- 3 intermedias
('EXAM0013', 'PREG0055'), ('EXAM0013', 'PREG0056'),('EXAM0013', 'PREG0057'), -- 3 dificiles

-- EXAM0014: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0014', 'PREG0040'), ('EXAM0014', 'PREG0031'), ('EXAM0014', 'PREG0032'),
('EXAM0014', 'PREG0033'), ('EXAM0014', 'PREG0034'), ('EXAM0014', 'PREG0035'),
('EXAM0014', 'PREG0036'), ('EXAM0014', 'PREG0037'), -- 8 faciles
('EXAM0014', 'PREG0049'), ('EXAM0014', 'PREG0050'), ('EXAM0014', 'PREG0041'), -- 3intermedias
('EXAM0014', 'PREG0058'),('EXAM0014', 'PREG0059'), -- 2 dificiles

-- EXAM0015: plantilla DPLT0002 (6 fáciles, 4 intermedias, 2 difíciles)
('EXAM0015', 'PREG0038'), ('EXAM0015', 'PREG0039'), ('EXAM0015', 'PREG0040'),
('EXAM0015', 'PREG0031'), ('EXAM0015', 'PREG0032'), ('EXAM0015', 'PREG0033'), -- 6 fáciles
('EXAM0015', 'PREG0042'), ('EXAM0015', 'PREG0043'), ('EXAM0015', 'PREG0044'),
('EXAM0015', 'PREG0045'), -- 4 intermedias
('EXAM0015', 'PREG0060'), ('EXAM0015', 'PREG0051'),-- 2 difíciles

-- EXAM0006: plantilla DPLT0003 (5 fáciles, 3 intermedias, 3 difíciles)
('EXAM0016', 'PREG0034'), ('EXAM0016', 'PREG0035'), ('EXAM0016', 'PREG0036'),
('EXAM0016', 'PREG0037'), ('EXAM0016', 'PREG0038'), -- 5 fáciles
('EXAM0016', 'PREG0046'), ('EXAM0016', 'PREG0047'), ('EXAM0016', 'PREG0048'), -- 3 intermedias
('EXAM0016', 'PREG0052'), ('EXAM0016', 'PREG0053'), ('EXAM0016', 'PREG0054'), -- 3 difíciles

-- EXAM0017: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0017', 'PREG0039'), ('EXAM0017', 'PREG0040'), ('EXAM0017', 'PREG0031'),
('EXAM0017', 'PREG0032'), ('EXAM0017', 'PREG0033'), ('EXAM0017', 'PREG0034'),
('EXAM0017', 'PREG0035'), ('EXAM0017', 'PREG0036'), -- 8 fáciles
('EXAM0017', 'PREG0049'), ('EXAM0017', 'PREG0050'), ('EXAM0017', 'PREG0041'), -- 3 intermedias
('EXAM0017', 'PREG0055'), ('EXAM0017', 'PREG0056'), -- 2 difíciles

-- EXAM0018: plantilla DPLT0002 (6 fáciles, 4 intermedias, 2 difíciles)
('EXAM0018', 'PREG0037'), ('EXAM0018', 'PREG0038'), ('EXAM0018', 'PREG0039'),
('EXAM0018', 'PREG0040'), ('EXAM0018', 'PREG0031'), ('EXAM0018', 'PREG0032'), -- 6 fáciles
('EXAM0018', 'PREG0042'), ('EXAM0018', 'PREG0043'), ('EXAM0018', 'PREG0044'), 
('EXAM0018', 'PREG0045'), -- 4 intermedias
('EXAM0018', 'PREG0057'), ('EXAM0018', 'PREG0058'), -- 2 difíciles

-- EXAM0019: plantilla DPLT0003 (5 fáciles, 3 intermedias, 3 difíciles)
('EXAM0019', 'PREG0033'), ('EXAM0019', 'PREG0034'), ('EXAM0019', 'PREG0035'),
('EXAM0019', 'PREG0036'), ('EXAM0019', 'PREG0037'), -- 5 fáciles
('EXAM0019', 'PREG0046'), ('EXAM0019', 'PREG0047'), ('EXAM0019', 'PREG0048'), -- 3 intermedias
('EXAM0019', 'PREG0059'), ('EXAM0019', 'PREG0060'), ('EXAM0019', 'PREG0051'), -- 3 difíciles

-- EXAM0020: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0020', 'PREG0038'), ('EXAM0020', 'PREG0039'), ('EXAM0020', 'PREG0040'),
('EXAM0020', 'PREG0031'), ('EXAM0020', 'PREG0032'), ('EXAM0020', 'PREG0033'),
('EXAM0020', 'PREG0034'), ('EXAM0020', 'PREG0035'), -- 8 fáciles
('EXAM0020', 'PREG0049'), ('EXAM0020', 'PREG0050'), ('EXAM0020', 'PREG0041'), -- 3 intermedias
('EXAM0020', 'PREG0052'), ('EXAM0020', 'PREG0053');-- 2 difíciles

-- COMPUTACION:
INSERT INTO pregunta_examen (id_examen, id_pregunta) VALUES
-- EXAM0021: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0021', 'PREG0061'), ('EXAM0021', 'PREG0062'), ('EXAM0021', 'PREG0063'),
('EXAM0021', 'PREG0064'), ('EXAM0021', 'PREG0065'), ('EXAM0021', 'PREG0066'),
('EXAM0021', 'PREG0067'), ('EXAM0021', 'PREG0068'), -- 8 fáciles
('EXAM0021', 'PREG0071'), ('EXAM0021', 'PREG0072'), ('EXAM0021', 'PREG0073'), -- 3 intermedias
('EXAM0021', 'PREG0081'), ('EXAM0021', 'PREG0082'), -- 2 difciles

-- EXAM0022: plantilla DPLT0002 (6 fáciles, 4 intermedias, 2 difíciles)
('EXAM0022', 'PREG0069'), ('EXAM0022', 'PREG0070'), ('EXAM0022', 'PREG0061'),
('EXAM0022', 'PREG0062'), ('EXAM0022', 'PREG0063'), ('EXAM0022', 'PREG0064'), -- 6 fáciles
('EXAM0022', 'PREG0076'), ('EXAM0022', 'PREG0077'),
('EXAM0022', 'PREG0074'), ('EXAM0022', 'PREG0075'), -- 4 intermedias
('EXAM0022', 'PREG0083'), ('EXAM0022', 'PREG0084'), -- 2 dificiles

-- EXAM0023: plantilla DPLT0003 (5 fáciles, 3 intermedias, 3 difíciles)
('EXAM0023', 'PREG0065'), ('EXAM0023', 'PREG0066'), ('EXAM0023', 'PREG0067'),
('EXAM0023', 'PREG0068'), ('EXAM0023', 'PREG0069'), -- 5 fáciles
('EXAM0023', 'PREG0076'), ('EXAM0023', 'PREG0077'),('EXAM0023', 'PREG0078'), -- 3 intermedias
('EXAM0023', 'PREG0085'), ('EXAM0023', 'PREG0086'),('EXAM0023', 'PREG0087'), -- 3 dificiles

-- EXAM0024: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0024', 'PREG0070'), ('EXAM0014', 'PREG0061'), ('EXAM0014', 'PREG0032'),
('EXAM0024', 'PREG0063'), ('EXAM0014', 'PREG0064'), ('EXAM0014', 'PREG0035'),
('EXAM0024', 'PREG0066'), ('EXAM0014', 'PREG0067'), -- 8 faciles
('EXAM0024', 'PREG0079'), ('EXAM0014', 'PREG0080'), ('EXAM0014', 'PREG0071'), -- 3intermedias
('EXAM0024', 'PREG0088'),('EXAM0014', 'PREG0089'), -- 2 dificiles

-- EXAM0015: plantilla DPLT0002 (6 fáciles, 4 intermedias, 2 difíciles)
('EXAM0025', 'PREG0068'), ('EXAM0025', 'PREG0069'), ('EXAM0025', 'PREG0070'),
('EXAM0025', 'PREG0061'), ('EXAM0025', 'PREG0062'), ('EXAM0025', 'PREG0063'), -- 6 fáciles
('EXAM0025', 'PREG0072'), ('EXAM0025', 'PREG0073'), ('EXAM0025', 'PREG0074'),
('EXAM0025', 'PREG0075'), -- 4 intermedias
('EXAM0025', 'PREG0090'), ('EXAM0025', 'PREG0081'),-- 2 difíciles

-- EXAM0026: plantilla DPLT0003 (5 fáciles, 3 intermedias, 3 difíciles)
('EXAM0026', 'PREG0064'), ('EXAM0026', 'PREG0065'), ('EXAM0026', 'PREG0066'),
('EXAM0026', 'PREG0067'), ('EXAM0026', 'PREG0068'), -- 5 fáciles
('EXAM0026', 'PREG0076'), ('EXAM0026', 'PREG0077'), ('EXAM0026', 'PREG0078'), -- 3 intermedias
('EXAM0026', 'PREG0082'), ('EXAM0026', 'PREG0083'), ('EXAM0026', 'PREG0084'), -- 3 difíciles

-- EXAM0027: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0027', 'PREG0069'), ('EXAM0027', 'PREG0070'), ('EXAM0027', 'PREG0061'),
('EXAM0027', 'PREG0062'), ('EXAM0027', 'PREG0063'), ('EXAM0027', 'PREG0064'),
('EXAM0027', 'PREG0065'), ('EXAM0027', 'PREG0066'), -- 8 fáciles
('EXAM0027', 'PREG0079'), ('EXAM0027', 'PREG0080'), ('EXAM0027', 'PREG0071'), -- 3 intermedias
('EXAM0027', 'PREG0085'), ('EXAM0027', 'PREG0086'), -- 2 difíciles

-- EXAM0028: plantilla DPLT0002 (6 fáciles, 4 intermedias, 2 difíciles)
('EXAM0028', 'PREG0067'), ('EXAM0028', 'PREG0068'), ('EXAM0028', 'PREG0069'),
('EXAM0028', 'PREG0070'), ('EXAM0028', 'PREG0061'), ('EXAM0028', 'PREG0062'), -- 6 fáciles
('EXAM0028', 'PREG0072'), ('EXAM0028', 'PREG0073'), ('EXAM0028', 'PREG0074'), 
('EXAM0028', 'PREG0075'), -- 4 intermedias
('EXAM0028', 'PREG0087'), ('EXAM0028', 'PREG0088'), -- 2 difíciles

-- EXAM0029: plantilla DPLT0003 (5 fáciles, 3 intermedias, 3 difíciles)
('EXAM0029', 'PREG0063'), ('EXAM0029', 'PREG0064'), ('EXAM0029', 'PREG0065'),
('EXAM0029', 'PREG0066'), ('EXAM0029', 'PREG0067'), -- 5 fáciles
('EXAM0029', 'PREG0076'), ('EXAM0029', 'PREG0077'), ('EXAM0029', 'PREG0078'), -- 3 intermedias
('EXAM0029', 'PREG0089'), ('EXAM0029', 'PREG0090'), ('EXAM0029', 'PREG0081'), -- 3 difíciles

-- EXAM0030: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0030', 'PREG0068'), ('EXAM0030', 'PREG0069'), ('EXAM0030', 'PREG0070'),
('EXAM0030', 'PREG0061'), ('EXAM0030', 'PREG0062'), ('EXAM0030', 'PREG0063'),
('EXAM0030', 'PREG0064'), ('EXAM0030', 'PREG0065'), -- 8 fáciles
('EXAM0030', 'PREG0079'), ('EXAM0030', 'PREG0080'), ('EXAM0030', 'PREG0071'), -- 3 intermedias
('EXAM0030', 'PREG0082'), ('EXAM0030', 'PREG0083');-- 2 difíciles


-- PARA MEDIO AMBIENTE
INSERT INTO pregunta_examen (id_examen, id_pregunta) VALUES
-- EXAM0031: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0031', 'PREG0091'), ('EXAM0031', 'PREG0092'), ('EXAM0031', 'PREG0093'),
('EXAM0031', 'PREG0094'), ('EXAM0031', 'PREG0095'), ('EXAM0031', 'PREG0096'),
('EXAM0031', 'PREG0097'), ('EXAM0031', 'PREG0098'), -- 8 fáciles
('EXAM0031', 'PREG0101'), ('EXAM0031', 'PREG0102'), ('EXAM0031', 'PREG0103'), -- 3 intermedias
('EXAM0031', 'PREG0112'), ('EXAM0031', 'PREG0113'), -- 2 difciles

-- EXAM0032: plantilla DPLT0002 (6 fáciles, 4 intermedias, 2 difíciles)
('EXAM0032', 'PREG0099'), ('EXAM0032', 'PREG0100'), ('EXAM0032', 'PREG0091'),
('EXAM0032', 'PREG0092'), ('EXAM0032', 'PREG0093'), ('EXAM0032', 'PREG0094'), -- 6 fáciles
('EXAM0032', 'PREG0106'), ('EXAM0032', 'PREG0107'),
('EXAM0032', 'PREG0104'), ('EXAM0032', 'PREG0105'), -- 4 intermedias
('EXAM0032', 'PREG0113'), ('EXAM0032', 'PREG0114'), -- 2 dificiles

-- EXAM0033: plantilla DPLT0003 (5 fáciles, 3 intermedias, 3 difíciles)
('EXAM0033', 'PREG0095'), ('EXAM0033', 'PREG0096'), ('EXAM0033', 'PREG0097'),
('EXAM0033', 'PREG0098'), ('EXAM0033', 'PREG0099'), -- 5 fáciles
('EXAM0033', 'PREG0106'), ('EXAM0033', 'PREG0107'),('EXAM0033', 'PREG0108'), -- 3 intermedias
('EXAM0033', 'PREG0115'), ('EXAM0033', 'PREG0116'),('EXAM0033', 'PREG0117'), -- 3 dificiles

-- EXAM0034: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0034', 'PREG0100'), ('EXAM0034', 'PREG0091'), ('EXAM0034', 'PREG0092'),
('EXAM0034', 'PREG0093'), ('EXAM0034', 'PREG0094'), ('EXAM0034', 'PREG0095'),
('EXAM0034', 'PREG0096'), ('EXAM0034', 'PREG0097'), -- 8 faciles
('EXAM0034', 'PREG0109'), ('EXAM0034', 'PREG0110'), ('EXAM0034', 'PREG0101'), -- 3intermedias
('EXAM0034', 'PREG0118'),('EXAM0034', 'PREG0119'), -- 2 dificiles

-- EXAM0035: plantilla DPLT0002 (6 fáciles, 4 intermedias, 2 difíciles)
('EXAM0035', 'PREG0098'), ('EXAM0035', 'PREG0099'), ('EXAM0025', 'PREG0100'),
('EXAM0035', 'PREG0091'), ('EXAM0035', 'PREG0092'), ('EXAM0025', 'PREG0093'), -- 6 fáciles
('EXAM0035', 'PREG0102'), ('EXAM0035', 'PREG0103'), ('EXAM0025', 'PREG0104'),
('EXAM0035', 'PREG0105'), -- 4 intermedias
('EXAM0035', 'PREG0120'), ('EXAM0035', 'PREG0111'),-- 2 difíciles

-- EXAM0036: plantilla DPLT0003 (5 fáciles, 3 intermedias, 3 difíciles)
('EXAM0036', 'PREG0094'), ('EXAM0026', 'PREG0095'), ('EXAM0026', 'PREG0096'),
('EXAM0036', 'PREG0097'), ('EXAM0026', 'PREG0098'), -- 5 fáciles
('EXAM0036', 'PREG0106'), ('EXAM0026', 'PREG0107'), ('EXAM0026', 'PREG0108'), -- 3 intermedias
('EXAM0036', 'PREG0112'), ('EXAM0026', 'PREG0113'), ('EXAM0026', 'PREG0114'), -- 3 difíciles

-- EXAM0037: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0037', 'PREG0099'), ('EXAM0037', 'PREG0100'), ('EXAM0037', 'PREG0091'),
('EXAM0037', 'PREG0092'), ('EXAM0037', 'PREG0093'), ('EXAM0037', 'PREG0094'),
('EXAM0037', 'PREG0095'), ('EXAM0037', 'PREG0096'), -- 8 fáciles
('EXAM0037', 'PREG0109'), ('EXAM0037', 'PREG0110'), ('EXAM0037', 'PREG0101'), -- 3 intermedias
('EXAM0037', 'PREG0115'), ('EXAM0037', 'PREG0116'), -- 2 difíciles

-- EXAM0038: plantilla DPLT0002 (6 fáciles, 4 intermedias, 2 difíciles)
('EXAM0038', 'PREG0097'), ('EXAM0038', 'PREG0098'), ('EXAM0028', 'PREG0099'),
('EXAM0038', 'PREG0100'), ('EXAM0038', 'PREG0091'), ('EXAM0028', 'PREG0092'), -- 6 fáciles
('EXAM0038', 'PREG0102'), ('EXAM0038', 'PREG0103'), ('EXAM0028', 'PREG0104'), 
('EXAM0038', 'PREG0105'), -- 4 intermedias
('EXAM0038', 'PREG0117'), ('EXAM0038', 'PREG0118'), -- 2 difíciles

-- EXAM0039: plantilla DPLT0003 (5 fáciles, 3 intermedias, 3 difíciles)
('EXAM0039', 'PREG0093'), ('EXAM0039', 'PREG0094'), ('EXAM0029', 'PREG0095'),
('EXAM0039', 'PREG0096'), ('EXAM0039', 'PREG0097'), -- 5 fáciles
('EXAM0039', 'PREG0106'), ('EXAM0039', 'PREG0107'), ('EXAM0029', 'PREG0108'), -- 3 intermedias
('EXAM0039', 'PREG0119'), ('EXAM0039', 'PREG0110'), ('EXAM0029', 'PREG0111'), -- 3 difíciles

-- EXAM0030: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0040', 'PREG0098'), ('EXAM0040', 'PREG0099'), ('EXAM0040', 'PREG0100'),
('EXAM0040', 'PREG0091'), ('EXAM0040', 'PREG0092'), ('EXAM0040', 'PREG0093'),
('EXAM0040', 'PREG0094'), ('EXAM0040', 'PREG0095'), -- 8 fáciles
('EXAM0040', 'PREG0109'), ('EXAM0040', 'PREG0110'), ('EXAM0040', 'PREG0101'), -- 3 intermedias
('EXAM0040', 'PREG0112'), ('EXAM0040', 'PREG0113');-- 2 difíciles





-- PARA FÍSICA
INSERT INTO pregunta_examen (id_examen, id_pregunta) VALUES
-- EXAM0041: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0041', 'PREG0121'), ('EXAM0041', 'PREG0122'), ('EXAM0041', 'PREG0123'),
('EXAM0041', 'PREG0124'), ('EXAM0041', 'PREG0125'), ('EXAM0041', 'PREG0126'),
('EXAM0041', 'PREG0127'), ('EXAM0041', 'PREG0128'), -- 8 fáciles
('EXAM0041', 'PREG0131'), ('EXAM0041', 'PREG0132'), ('EXAM0041', 'PREG0133'), -- 3 intermedias
('EXAM0041', 'PREG0142'), ('EXAM0041', 'PREG0143'), -- 2 difciles

-- EXAM0042: plantilla DPLT0002 (6 fáciles, 4 intermedias, 2 difíciles)
('EXAM0042', 'PREG0129'), ('EXAM0042', 'PREG0130'), ('EXAM0042', 'PREG0091'),
('EXAM0042', 'PREG0122'), ('EXAM0042', 'PREG0123'), ('EXAM0042', 'PREG0094'), -- 6 fáciles
('EXAM0042', 'PREG0136'), ('EXAM0042', 'PREG0137'),
('EXAM0042', 'PREG0134'), ('EXAM0042', 'PREG0135'), -- 4 intermedias
('EXAM0042', 'PREG0143'), ('EXAM0042', 'PREG0144'), -- 2 dificiles

-- EXAM0043: plantilla DPLT0003 (5 fáciles, 3 intermedias, 3 difíciles)
('EXAM0043', 'PREG0125'), ('EXAM0043', 'PREG0126'), ('EXAM0043', 'PREG0127'),
('EXAM0043', 'PREG0128'), ('EXAM0043', 'PREG0129'), -- 5 fáciles
('EXAM0043', 'PREG0136'), ('EXAM0043', 'PREG0137'),('EXAM0043', 'PREG0138'), -- 3 intermedias
('EXAM0043', 'PREG0145'), ('EXAM0043', 'PREG0146'),('EXAM0043', 'PREG0147'), -- 3 dificiles

-- EXAM0044: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0044', 'PREG0130'), ('EXAM0034', 'PREG0121'), ('EXAM0034', 'PREG0122'),
('EXAM0044', 'PREG0123'), ('EXAM0034', 'PREG0124'), ('EXAM0034', 'PREG0125'),
('EXAM0044', 'PREG0126'), ('EXAM0034', 'PREG0127'), -- 8 faciles
('EXAM0044', 'PREG0139'), ('EXAM0034', 'PREG0140'), ('EXAM0034', 'PREG0131'), -- 3intermedias
('EXAM0044', 'PREG0148'),('EXAM0034', 'PREG0149'), -- 2 dificiles

-- EXAM0045: plantilla DPLT0002 (6 fáciles, 4 intermedias, 2 difíciles)
('EXAM0045', 'PREG0128'), ('EXAM0045', 'PREG0129'), ('EXAM0045', 'PREG0130'),
('EXAM0045', 'PREG0121'), ('EXAM0045', 'PREG0122'), ('EXAM0045', 'PREG0123'), -- 6 fáciles
('EXAM0045', 'PREG0132'), ('EXAM0045', 'PREG0133'), ('EXAM0045', 'PREG0134'),
('EXAM0045', 'PREG0135'), -- 4 intermedias
('EXAM0045', 'PREG0150'), ('EXAM0045', 'PREG0141'),-- 2 difíciles

-- EXAM0046: plantilla DPLT0003 (5 fáciles, 3 intermedias, 3 difíciles)
('EXAM0046', 'PREG0124'), ('EXAM0046', 'PREG0125'), ('EXAM0046', 'PREG0126'),
('EXAM0046', 'PREG0127'), ('EXAM0046', 'PREG0128'), -- 5 fáciles
('EXAM0046', 'PREG0136'), ('EXAM0046', 'PREG0137'), ('EXAM0046', 'PREG0138'), -- 3 intermedias
('EXAM0046', 'PREG0142'), ('EXAM0046', 'PREG0143'), ('EXAM0046', 'PREG0144'), -- 3 difíciles

-- EXAM0047: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0047', 'PREG0129'), ('EXAM0047', 'PREG0130'), ('EXAM0037', 'PREG0121'),
('EXAM0047', 'PREG0122'), ('EXAM0047', 'PREG0123'), ('EXAM0037', 'PREG0124'),
('EXAM0047', 'PREG0125'), ('EXAM0047', 'PREG0126'), -- 8 fáciles
('EXAM0047', 'PREG0139'), ('EXAM0047', 'PREG0140'), ('EXAM0037', 'PREG0131'), -- 3 intermedias
('EXAM0047', 'PREG0145'), ('EXAM0047', 'PREG0146'), -- 2 difíciles

-- EXAM0048: plantilla DPLT0002 (6 fáciles, 4 intermedias, 2 difíciles)
('EXAM0048', 'PREG0127'), ('EXAM0048', 'PREG0128'), ('EXAM0048', 'PREG0129'),
('EXAM0048', 'PREG0130'), ('EXAM0048', 'PREG0121'), ('EXAM0048', 'PREG0122'), -- 6 fáciles
('EXAM0048', 'PREG0132'), ('EXAM0048', 'PREG0133'), ('EXAM0048', 'PREG0134'), 
('EXAM0048', 'PREG0135'), -- 4 intermedias
('EXAM0048', 'PREG0147'), ('EXAM0048', 'PREG0148'), -- 2 difíciles

-- EXAM0049: plantilla DPLT0003 (5 fáciles, 3 intermedias, 3 difíciles)
('EXAM0049', 'PREG0123'), ('EXAM0049', 'PREG0124'), ('EXAM0049', 'PREG0125'),
('EXAM0049', 'PREG0126'), ('EXAM0049', 'PREG0127'), -- 5 fáciles
('EXAM0049', 'PREG0136'), ('EXAM0049', 'PREG0137'), ('EXAM0049', 'PREG0138'), -- 3 intermedias
('EXAM0049', 'PREG0149'), ('EXAM0049', 'PREG0140'), ('EXAM0049', 'PREG0141'), -- 3 difíciles

-- EXAM0050: plantilla DPLT0001 (8 fáciles, 3 intermedias, 2 difíciles)
('EXAM0050', 'PREG0128'), ('EXAM0050', 'PREG0129'), ('EXAM0040', 'PREG0130'),
('EXAM0050', 'PREG0121'), ('EXAM0050', 'PREG0122'), ('EXAM0040', 'PREG0123'),
('EXAM0050', 'PREG0124'), ('EXAM0050', 'PREG0125'), -- 8 fáciles
('EXAM0050', 'PREG0139'), ('EXAM0050', 'PREG0140'), ('EXAM0040', 'PREG0131'), -- 3 intermedias
('EXAM0050', 'PREG0142'), ('EXAM0050', 'PREG0143');-- 2 difíciles






-- RESPUESTA_ESTUDIANTE (54 respuestas)
desc respuesta_estudiante;
INSERT INTO respuesta_estudiante (id_respuesta_estudiante, id_examen, 
id_pregunta, respuesta, correcta, puntaje_obtenido) VALUES
-- EXAM0001
('RESP0001', 'EXAM0001', 'PREG0001', 'V', 1, 1),
('RESP0002', 'EXAM0001', 'PREG0002', '12', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', '2', 1, 1),
('RESP0004', 'EXAM0001', 'PREG0004', '27', 1, 1),
('RESP0005', 'EXAM0001', 'PREG0005', 'F', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', '4', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0007', '5', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0008', 'V', 1, 1),

('RESP0009', 'EXAM0001', 'PREG0011', 'F', 0, 0),
('RESP0010', 'EXAM0001', 'PREG0012', '4', 0, 0),
('RESP0011', 'EXAM0001', 'PREG0013', '9', 1, 2),

('RESP0012', 'EXAM0001', 'PREG0021', 'F', 1, 1),
('RESP0013', 'EXAM0001', 'PREG0022', '2', 1, 1);

-- EXAM0002
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0003
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),


-- EXAM0004
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0005
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0006
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0007
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0008
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0009
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0010
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),



-- EXAM0011
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0012
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0013
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),


-- EXAM0014
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0015
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0016
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0017
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0018
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0019
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0020
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),



-- EXAM0001
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0002
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0003
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),


-- EXAM0004
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0005
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0006
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0007
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0008
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0009
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0010
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),



-- EXAM0011
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0012
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0013
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),


-- EXAM0014
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0015
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0016
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0017
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0018
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0019
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0020
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),




-- EXAM0011
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0012
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0013
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),


-- EXAM0014
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0015
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0016
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0017
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0018
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0019
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

-- EXAM0020
('RESP0001', 'EXAM0001', 'PREG0001', 'Cambio en el clima causado por la actividad humana', 1, 2),
('RESP0002', 'EXAM0001', 'PREG0002', 'Verdadero', 1, 1),
('RESP0003', 'EXAM0001', 'PREG0003', 'arboles', 1, 2),
('RESP0004', 'EXAM0001', 'PREG0004', 'Energía solar', 1, 2),
('RESP0005', 'EXAM0001', 'PREG0005', 'Aumenta el calentamiento global', 1, 3),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0007', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0008', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),

('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),
('RESP0006', 'EXAM0001', 'PREG0006', 'Falso', 1, 1),


INSERT INTO opcion_respuesta (id_opcion_respuesta, id_pregunta, texto_opcion, es_correcta) 
VALUES
-- FACILES - MATEMATICA
-- PREG0001 - VF
('OPC00001', 'PREG0001', 'F', 0),
('OPC00002', 'PREG0001', 'V', 1),

-- PREG0003 - SELECCION
('OPC00003', 'PREG0003', '2', 1),
('OPC00004', 'PREG0003', '4', 0),
('OPC00005', 'PREG0003', '6', 0),
('OPC00006', 'PREG0003', '8', 0),

-- PREG0004 - SELECCION
('OPC00007', 'PREG0004', '27', 1),
('OPC00008', 'PREG0004', '24', 0),
('OPC00009', 'PREG0004', '21', 0),
('OPC00010', 'PREG0004', '29', 0),

-- PREG0005 - VF
('OPC00011', 'PREG0005', 'V', 0),
('OPC00012', 'PREG0005', 'F', 1),

-- PREG0007 - SELECCION
('OPC00013', 'PREG0007', '5', 1),
('OPC00014', 'PREG0007', '3', 0),
('OPC00015', 'PREG0007', '6', 0),
('OPC00016', 'PREG0007', '4', 0),

-- PREG0008 - VF
('OPC00017', 'PREG0008', 'V', 1),
('OPC00018', 'PREG0008', 'F', 0),

-- PREG0010 - SELECCION
('OPC00019', 'PREG0010', '2', 0),
('OPC00020', 'PREG0010', '3', 0),
('OPC00021', 'PREG0010', '4', 1),
('OPC00022', 'PREG0010', '6', 0),

-- INTERMEDIAS MATEMÁTICA
-- PREG0011 - VF
('OPC00023', 'PREG0011', 'V', 1),
('OPC00024', 'PREG0011', 'F', 0),

-- PREG0013 - SELECCION
('OPC00025', 'PREG0013', '7', 0),
('OPC00026', 'PREG0013', '8', 0),
('OPC00027', 'PREG0013', '9', 1),
('OPC00028', 'PREG0013', '10', 0),

-- PREG0014 - VF
('OPC00029', 'PREG0014', 'V', 1),
('OPC00030', 'PREG0014', 'F', 0),

-- PREG0016 - SELECCION
('OPC00031', 'PREG0016', '12', 1),
('OPC00032', 'PREG0016', '-12', 0),
('OPC00033', 'PREG0016', '0', 0),
('OPC00034', 'PREG0016', '1', 0),

-- PREG0017 - VF
('OPC00035', 'PREG0017', 'V', 1),
('OPC00036', 'PREG0017', 'F', 0),

-- PREG0019 - SELECCION
('OPC00037', 'PREG0019', '6.5', 0),
('OPC00038', 'PREG0019', '6.7', 1),
('OPC00039', 'PREG0019', '7.0', 0),
('OPC00040', 'PREG0019', '5.5', 0),

-- PREG0020 - SELECCION
('OPC00041', 'PREG0020', 'π', 0),
('OPC00042', 'PREG0020', '√2', 1),
('OPC00043', 'PREG0020', '√3', 0),
('OPC00044', 'PREG0020', 'e', 0),


-- PREGUNTAS DIFICILES
-- PREG0021 - VF
('OPC00045', 'PREG0021', 'V', 0),
('OPC00046', 'PREG0021', 'F', 1),

-- PREG0023 - SELECCION
('OPC00047', 'PREG0023', '4', 0),
('OPC00048', 'PREG0023', '0.5', 0),
('OPC00049', 'PREG0023', '√2', 1),
('OPC00050', 'PREG0023', '2/3', 0),

-- PREG0024 - VF
('OPC00051', 'PREG0024', 'V', 0),
('OPC00052', 'PREG0024', 'F', 1),

-- PREG0026 - SELECCION
('OPC00053', 'PREG0026', '2', 0),
('OPC00054', 'PREG0026', '4', 1),
('OPC00055', 'PREG0026', '6', 0),
('OPC00056', 'PREG0026', '8', 0),

-- PREG0027 - VF
('OPC00057', 'PREG0027', 'V', 1),
('OPC00058', 'PREG0027', 'F', 0),

-- PREG0029 - SELECCION
('OPC00059', 'PREG0029', 'Todos los reales', 0),
('OPC00060', 'PREG0029', 'x ≠ 3', 1),
('OPC00061', 'PREG0029', 'x ≥ 0', 0),
('OPC00062', 'PREG0029', 'Ninguno', 0),

-- PREG0030 - VF
('OPC00063', 'PREG0030', 'V', 1),
('OPC00064', 'PREG0030', 'F', 0);



select * from opcion_respuesta;
-- CURSO HISTORIA
INSERT INTO opcion_respuesta (id_opcion_respuesta, id_pregunta, texto_opcion, es_correcta) 
VALUES
-- PREG0031 - VF
('OPC00065', 'PREG0031', 'V', 1),
('OPC00066', 'PREG0031', 'F', 0),

-- PREG0033 - SELECCION
('OPC00067', 'PREG0033', 'George Washington', 1),
('OPC00068', 'PREG0033', 'Abraham Lincoln', 0),
('OPC00069', 'PREG0033', 'Thomas Jefferson', 0),
('OPC00070', 'PREG0033', 'Benjamin Franklin', 0),

-- PREG0034 - VF
('OPC00071', 'PREG0034', 'V', 1),
('OPC00072', 'PREG0034', 'F', 0),

-- PREG0036 - SELECCION
('OPC00073', 'PREG0036', 'Inglaterra', 0),
('OPC00074', 'PREG0036', 'Alemania', 0),
('OPC00075', 'PREG0036', 'Francia', 1),
('OPC00076', 'PREG0036', 'Italia', 0),

-- PREG0037 - VF
('OPC00077', 'PREG0037', 'V', 1),
('OPC00078', 'PREG0037', 'F', 0),

-- PREG0039 - SELECCION
('OPC00079', 'PREG0039', 'Martin Luther King Jr.', 1),
('OPC00080', 'PREG0039', 'Barack Obama', 0),
('OPC00081', 'PREG0039', 'Malcolm X', 0),
('OPC00082', 'PREG0039', 'Nelson Mandela', 0),

-- PREG0040 - VF
('OPC00083', 'PREG0040', 'V', 1),
('OPC00084', 'PREG0040', 'F', 0),

-- NIVEL INTERMEDIO - HISTORIA
-- PREG0041 - VF
('OPC00085', 'PREG0041', 'V', 0),
('OPC00086', 'PREG0041', 'F', 1),

-- PREG0043 - SELECCION
('OPC00087', 'PREG0043', 'Benito Mussolini', 0),
('OPC00088', 'PREG0043', 'Winston Churchill', 0),
('OPC00089', 'PREG0043', 'Adolf Hitler', 1),
('OPC00090', 'PREG0043', 'Joseph Stalin', 0),

-- PREG0044 - VF
('OPC00091', 'PREG0044', 'V', 1),
('OPC00092', 'PREG0044', 'F', 0),

-- PREG0046 - SELECCION
('OPC00093', 'PREG0046', 'Francia', 0),
('OPC00094', 'PREG0046', 'Polonia', 1),
('OPC00095', 'PREG0046', 'Rusia', 0),
('OPC00096', 'PREG0046', 'Austria', 0),

-- PREG0047 - VF
('OPC00097', 'PREG0047', 'V', 1),
('OPC00098', 'PREG0047', 'F', 0),

-- PREG0048 - SELECCION
('OPC00099', 'PREG0048', 'Capitalismo', 0),
('OPC00100', 'PREG0048', 'Feudalismo', 1),
('OPC00101', 'PREG0048', 'Socialismo', 0),
('OPC00102', 'PREG0048', 'Mercantilismo', 0),

-- PREG0050 - VF
('OPC00103', 'PREG0050', 'V', 1),
('OPC00104', 'PREG0050', 'F', 0),

-- DIFICIL HISTORIA

-- PREG0051 - VF
('OPC00105', 'PREG0051', 'V', 1),
('OPC00106', 'PREG0051', 'F', 0),

-- PREG0053 - SELECCION
('OPC00107', 'PREG0053', 'Pedro I', 0),
('OPC00108', 'PREG0053', 'Iván IV', 0),
('OPC00109', 'PREG0053', 'Nicolás II', 1),
('OPC00110', 'PREG0053', 'Alejandro III', 0),

-- PREG0054 - VF
('OPC00111', 'PREG0054', 'V', 1),
('OPC00112', 'PREG0054', 'F', 0),

-- PREG0056 - SELECCION
('OPC00113', 'PREG0056', 'Egipcia', 0),
('OPC00114', 'PREG0056', 'Griega', 0),
('OPC00115', 'PREG0056', 'Maya', 1),
('OPC00116', 'PREG0056', 'China', 0),

-- PREG0057 - VF
('OPC00117', 'PREG0057', 'V', 1),
('OPC00118', 'PREG0057', 'F', 0),

-- PREG0059 - SELECCION
('OPC00119', 'PREG0059', 'Francia', 0),
('OPC00120', 'PREG0059', 'Bélgica', 1),
('OPC00121', 'PREG0059', 'Alemania', 0),
('OPC00122', 'PREG0059', 'Portugal', 0),

-- PREG0060 - VF
('OPC00123', 'PREG0060', 'V', 1),
('OPC00124', 'PREG0060', 'F', 0);




INSERT INTO opcion_respuesta (id_opcion_respuesta, id_pregunta, texto_opcion, es_correcta) 
VALUES
-- PREG0061 - VF
('OPC00125', 'PREG0061', 'V', 1),
('OPC00126', 'PREG0061', 'F', 0),

-- PREG0063 - SELECCION
('OPC00127', 'PREG0063', 'Windows', 1),
('OPC00128', 'PREG0063', 'Photoshop', 0),
('OPC00129', 'PREG0063', 'Excel', 0),
('OPC00130', 'PREG0063', 'Facebook', 0),

-- PREG0064 - VF
('OPC00131', 'PREG0064', 'V', 1),
('OPC00132', 'PREG0064', 'F', 0),

-- PREG0066 - SELECCION
('OPC00133', 'PREG0066', 'Monitor', 0),
('OPC00134', 'PREG0066', 'Teclado', 1),
('OPC00135', 'PREG0066', 'Proyector', 0),
('OPC00136', 'PREG0066', 'Parlante', 0),

-- PREG0067 - VF
('OPC00137', 'PREG0067', 'V', 1),
('OPC00138', 'PREG0067', 'F', 0),

-- PREG0069 - SELECCION
('OPC00139', 'PREG0069', 'Google Chrome', 1),
('OPC00140', 'PREG0069', 'Word', 0),
('OPC00141', 'PREG0069', 'PowerPoint', 0),
('OPC00142', 'PREG0069', 'Excel', 0),

-- PREG0070 - VF
('OPC00143', 'PREG0070', 'V', 1),
('OPC00144', 'PREG0070', 'F', 0),


-- PREG0071 - VF
('OPC00145', 'PREG0071', 'V', 0),
('OPC00146', 'PREG0071', 'F', 1),

-- PREG0073 - SELECCIÓN
('OPC00147', 'PREG0073', 'JavaScript', 1),
('OPC00148', 'PREG0073', 'Python', 0),
('OPC00149', 'PREG0073', 'PHP', 0),
('OPC00150', 'PREG0073', 'Java', 0),

-- PREG0074 - VF
('OPC00151', 'PREG0074', 'V', 1),
('OPC00152', 'PREG0074', 'F', 0),

-- PREG0076 - SELECCIÓN
('OPC00153', 'PREG0076', 'C++', 0),
('OPC00154', 'PREG0076', 'Python', 1),
('OPC00155', 'PREG0076', 'Java', 0),
('OPC00156', 'PREG0076', 'C#', 0),

-- PREG0077 - VF
('OPC00157', 'PREG0077', 'V', 1),
('OPC00158', 'PREG0077', 'F', 0),

-- PREG0079 - SELECCIÓN
('OPC00159', 'PREG0079', 'MySQL', 1),
('OPC00160', 'PREG0079', 'Photoshop', 0),
('OPC00161', 'PREG0079', 'Excel', 0),
('OPC00162', 'PREG0079', 'Word', 0),

-- PREG0080 - VF
('OPC00163', 'PREG0080', 'V', 1),
('OPC00164', 'PREG0080', 'F', 0),

-- PREG0081 - VF
('OPC00165', 'PREG0081', 'V', 1),
('OPC00166', 'PREG0081', 'F', 0),

-- PREG0083 - SELECCION
('OPC00167', 'PREG0083', 'Pila', 0),
('OPC00168', 'PREG0083', 'Cola', 1),
('OPC00169', 'PREG0083', 'Árbol', 0),
('OPC00170', 'PREG0083', 'Grafo', 0),

-- PREG0084 - VF
('OPC00171', 'PREG0084', 'V', 1),
('OPC00172', 'PREG0084', 'F', 0),

-- PREG0086 - SELECCION
('OPC00173', 'PREG0086', 'Linear Search', 0),
('OPC00174', 'PREG0086', 'Binary Search', 1),
('OPC00175', 'PREG0086', 'Bubble Sort', 0),
('OPC00176', 'PREG0086', 'Depth First Search', 0),

-- PREG0087 - VF
('OPC00177', 'PREG0087', 'V', 1),
('OPC00178', 'PREG0087', 'F', 0),

-- PREG0089 - SELECCION
('OPC00179', 'PREG0089', 'Python', 1),
('OPC00180', 'PREG0089', 'C++', 0),
('OPC00181', 'PREG0089', 'Java', 0),
('OPC00182', 'PREG0089', 'Ruby', 0),

-- PREG0090 - VF
('OPC00183', 'PREG0090', 'V', 1),
('OPC00184', 'PREG0090', 'F', 0);

















-- MEDIO AMBIENTE
INSERT INTO opcion_respuesta (id_opcion_respuesta, id_pregunta, texto_opcion, es_correcta)
VALUES
-- PREG0091 - VF
('OPC00185', 'PREG0091', 'V', 1),
('OPC00186', 'PREG0091', 'F', 0),

-- PREG0093 - SELECCIÓN
('OPC00187', 'PREG0093', 'Petróleo', 1),
('OPC00188', 'PREG0093', 'Celular', 0),
('OPC00189', 'PREG0093', 'Auto', 0),
('OPC00190', 'PREG0093', 'Ladrillo', 0),

-- PREG0094 - VF
('OPC00191', 'PREG0094', 'V', 1),
('OPC00192', 'PREG0094', 'F', 0),

-- PREG0096 - SELECCIÓN
('OPC00193', 'PREG0096', 'Oxígeno', 1),
('OPC00194', 'PREG0096', 'Dióxido de carbono', 0),
('OPC00195', 'PREG0096', 'Nitrógeno', 0),
('OPC00196', 'PREG0096', 'Hidrógeno', 0),

-- PREG0097 - VF
('OPC00197', 'PREG0097', 'V', 1),
('OPC00198', 'PREG0097', 'F', 0),

-- PREG0099 - SELECCIÓN
('OPC00199', 'PREG0099', 'Agua limpia', 1),
('OPC00200', 'PREG0099', 'Humo de fábricas', 0),
('OPC00201', 'PREG0099', 'Aceite usado', 0),
('OPC00202', 'PREG0099', 'Residuos tóxicos', 0),

-- PREG0100 - VF
('OPC00203', 'PREG0100', 'V', 1),
('OPC00204', 'PREG0100', 'F', 0),

-- PREG0101 - VF
('OPC00205', 'PREG0101', 'V', 1),
('OPC00206', 'PREG0101', 'F', 0),

-- PREG0103 - SELECCIÓN
('OPC00207', 'PREG0103', 'Botella de vidrio', 1),
('OPC00208', 'PREG0103', 'Cáscara de fruta', 0),
('OPC00209', 'PREG0103', 'Restos de carne', 0),
('OPC00210', 'PREG0103', 'Papel higiénico usado', 0),

-- PREG0104 - VF
('OPC00211', 'PREG0104', 'V', 1),
('OPC00212', 'PREG0104', 'F', 0),

-- PREG0106 - SELECCIÓN
('OPC00213', 'PREG0106', 'Reutilizar bolsas de tela', 1),
('OPC00214', 'PREG0106', 'Usar productos desechables siempre', 0),
('OPC00215', 'PREG0106', 'Tirar basura en la calle', 0),
('OPC00216', 'PREG0106', 'Dejar la luz encendida sin uso', 0),

-- PREG0107 - VF
('OPC00217', 'PREG0107', 'V', 1),
('OPC00218', 'PREG0107', 'F', 0),

-- PREG0109 - SELECCIÓN
('OPC00219', 'PREG0109', 'Energía solar', 1),
('OPC00220', 'PREG0109', 'Gas natural', 0),
('OPC00221', 'PREG0109', 'Carbón', 0),
('OPC00222', 'PREG0109', 'Petróleo', 0),

-- PREG0110 - VF
('OPC00223', 'PREG0110', 'V', 1),
('OPC00224', 'PREG0110', 'F', 0),

-- PREG0111 - VF
('OPC00225', 'PREG0111', 'V', 1),
('OPC00226', 'PREG0111', 'F', 0),

-- PREG0113 - SELECCIÓN
('OPC00227', 'PREG0113', 'Incremento del nivel del mar', 1),
('OPC00228', 'PREG0113', 'Reducción del tráfico vehicular', 0),
('OPC00229', 'PREG0113', 'Mayor cobertura forestal', 0),
('OPC00230', 'PREG0113', 'Aumento de energías renovables', 0),

-- PREG0114 - VF
('OPC00231', 'PREG0114', 'V', 1),
('OPC00232', 'PREG0114', 'F', 0),

-- PREG0116 - SELECCIÓN
('OPC00233', 'PREG0116', 'Acuerdo de París', 1),
('OPC00234', 'PREG0116', 'Tratado de Kioto', 0),
('OPC00235', 'PREG0116', 'Convenio de Basilea', 0),
('OPC00236', 'PREG0116', 'Convenio de Róterdam', 0),

-- PREG0117 - VF
('OPC00237', 'PREG0117', 'V', 1),
('OPC00238', 'PREG0117', 'F', 0),

-- PREG0119 - SELECCIÓN
('OPC00239', 'PREG0119', 'Agricultura extensiva', 1),
('OPC00240', 'PREG0119', 'Energía hidroeléctrica', 0),
('OPC00241', 'PREG0119', 'Transporte aéreo', 0),
('OPC00242', 'PREG0119', 'Minería artesanal', 0),

-- PREG0120 - VF
('OPC00243', 'PREG0120', 'V', 1),
('OPC00244', 'PREG0120', 'F', 0);





INSERT INTO opcion_respuesta (id_opcion_respuesta, id_pregunta, texto_opcion, es_correcta)
VALUES
-- PREG0121 - VF
('OPC00245', 'PREG0121', 'V', 1),
('OPC00246', 'PREG0121', 'F', 0),

-- PREG0123 - SELECCIÓN
('OPC00247', 'PREG0123', 'Newton', 1),
('OPC00248', 'PREG0123', 'Pascal', 0),
('OPC00249', 'PREG0123', 'Joule', 0),
('OPC00250', 'PREG0123', 'Watt', 0),

-- PREG0124 - VF
('OPC00251', 'PREG0124', 'V', 1),
('OPC00252', 'PREG0124', 'F', 0),

-- PREG0126 - SELECCIÓN
('OPC00253', 'PREG0126', 'Balanza', 1),
('OPC00254', 'PREG0126', 'Termómetro', 0),
('OPC00255', 'PREG0126', 'Regla', 0),
('OPC00256', 'PREG0126', 'Barómetro', 0),

-- PREG0127 - VF
('OPC00257', 'PREG0127', 'V', 1),
('OPC00258', 'PREG0127', 'F', 0),

-- PREG0129 - SELECCIÓN
('OPC00259', 'PREG0129', 'Un auto en movimiento', 1),
('OPC00260', 'PREG0129', 'Una piedra en reposo', 0),
('OPC00261', 'PREG0129', 'Una batería descargada', 0),
('OPC00262', 'PREG0129', 'Un hielo en el congelador', 0),

-- PREG0130 - VF
('OPC00263', 'PREG0130', 'V', 1),
('OPC00264', 'PREG0130', 'F', 0),

-- PREG0131 - VF
('OPC00265', 'PREG0131', 'V', 1),
('OPC00266', 'PREG0131', 'F', 0),

-- PREG0133 - SELECCIÓN
('OPC00267', 'PREG0133', 'Una roca en la cima de una montaña', 1),
('OPC00268', 'PREG0133', 'Una pelota rodando', 0),
('OPC00269', 'PREG0133', 'Un foco encendido', 0),
('OPC00270', 'PREG0133', 'Un resorte comprimido en movimiento', 0),

-- PREG0134 - VF
('OPC00271', 'PREG0134', 'V', 1),
('OPC00272', 'PREG0134', 'F', 0),

-- PREG0136 - SELECCIÓN
('OPC00273', 'PREG0136', 'Cobre', 1),
('OPC00274', 'PREG0136', 'Plástico', 0),
('OPC00275', 'PREG0136', 'Madera', 0),
('OPC00276', 'PREG0136', 'Vidrio', 0),

-- PREG0138 - SELECCIÓN
('OPC00277', 'PREG0138', 'Lana', 1),
('OPC00278', 'PREG0138', 'Hierro', 0),
('OPC00279', 'PREG0138', 'Cobre', 0),
('OPC00280', 'PREG0138', 'Aluminio', 0),

-- PREG0139 - VF
('OPC00281', 'PREG0139', 'V', 1),
('OPC00282', 'PREG0139', 'F', 0),

-- PREG0141 - VF
('OPC00283', 'PREG0141', 'V', 1),
('OPC00284', 'PREG0141', 'F', 0),

-- PREG0143 - SELECCIÓN
('OPC00285', 'PREG0143', 'Electrón', 1),
('OPC00286', 'PREG0143', 'Protón', 0),
('OPC00287', 'PREG0143', 'Neutrón', 0),
('OPC00288', 'PREG0143', 'Quark', 0),

-- PREG0144 - VF
('OPC00289', 'PREG0144', 'V', 1),
('OPC00290', 'PREG0144', 'F', 0),

-- PREG0146 - SELECCIÓN
('OPC00291', 'PREG0146', 'Sonora', 1),
('OPC00292', 'PREG0146', 'Electromagnética', 0),
('OPC00293', 'PREG0146', 'Luz', 0),
('OPC00294', 'PREG0146', 'Rayos X', 0),

-- PREG0147 - VF
('OPC00295', 'PREG0147', 'V', 1),
('OPC00296', 'PREG0147', 'F', 0),

-- PREG0149 - SELECCIÓN
('OPC00297', 'PREG0149', 'Refracción', 1),
('OPC00298', 'PREG0149', 'Reflexión', 0),
('OPC00299', 'PREG0149', 'Difracción', 0),
('OPC00300', 'PREG0149', 'Interferencia', 0),

-- PREG0150 - VF
('OPC00301', 'PREG0150', 'V', 1),
('OPC00302', 'PREG0150', 'F', 0);

















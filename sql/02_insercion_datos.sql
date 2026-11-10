INSERT INTO club (nombre, ciudad, direccion, telefono) 
VALUES
    ('Club Carvallo', 'Loja', 'Calle Bolivar', '0991111111'),
    ('Club Deos', 'Loja', 'Av. Universitaria', '0992222222'),
    ('Club Colmillo de aguila', 'Quito', 'Av. Amazonas 780', '0993333333'),
    ('Club Tigres',     'Guayaquil', 'Av. 9 de Octubre', '0994444444'),
    ('Club Condores',  'Loja',      'Calle Bolivar', '0995555555');
    
INSERT INTO Competidor (cedula, nombres, apellidos, fecha_nacimiento, sexo, peso, grado_cinturon, id_club) 
VALUES
    ('1100000001', 'Carlos', 'Mora', '2008-03-15', 'M', 58.50, 'Azul', 1),
    ('1100000002', 'Luis', 'Paredes', '2008-07-21', 'M', 57.00, 'Rojo', 2),
    ('1100000003', 'Ana', 'Jaramillo', '2009-01-10', 'F', 49.00, 'Negro', 1),
    ('1100000004', 'Sofia', 'Castro', '2009-05-02', 'F', 48.50, 'Azul', 2),
    ('1100000005', 'Diego', 'Armijos', '2007-11-30', 'M', 62.00, 'Negro', 3),
    ('1100000006', 'Valeria', 'Ortiz', '2008-09-12', 'F', 52.00, 'Rojo', 4),
    ('1100000007', 'Mateo', 'Salazar', '2010-02-18', 'M', 45.00, 'Verde', 5),
    ('1100000008', 'Camila', 'Rojas', '2007-06-25', 'F', 55.00, 'Negro', 3),
    ('1100000009', 'Andres', 'Quezada', '2009-12-05', 'M', 60.50, 'Rojo', 5),
    ('1100000010', 'Daniela', 'Vega', '2010-04-14', 'F', 41.00, 'Azul', 4),
    ('1100000011', 'Jorge', 'Medina', '2008-08-08', 'M', 70.00, 'Blanco', 3);
    
INSERT INTO Competencia (nombre, fecha_inicio, fecha_fin, lugar, organizador) 
VALUES

    ('Copa Loja 2026', '2026-11-20', '2026-11-21', 'Coliseo de Loja', 'Federacion de Taekwondo de Loja'),
    ('Campeonato Nacional Juvenil', '2026-12-12', '2026-12-13', 'Coliseo de Quito', 'Federacion Ecuatoriana de Taekwondo'),
    ('Torneo Interclubes Cuenca', '2027-02-06', '2027-02-07', 'Coliseo de Cuenca', 'Asociacion de Taekwondo del Azuay');

    
INSERT INTO Modalidad (nombre, descripcion) 
VALUES
    ('Combate', 'Enfrentamiento fisico entre dos competidores'),
    ('Poomsae', 'Ejecucion individual de formas');
    
INSERT INTO Categoria (nombre, sexo, peso_minimo, peso_maximo, edad_minima, edad_maxima, id_competencia, id_modalidad) 
VALUES
    ('Juvenil Masculino -63 kg combate', 'M', 54.00, 63.00, 15, 18, 1, 1),
    ('Juvenil Femenino Poomsae',         'F', NULL,  NULL,  15, 18, 1, 2),
    ('Juvenil Femenino -55 kg combate',  'F', 48.00, 55.00, 15, 18, 1, 1),
    ('Juvenil Masculino Poomsae',        'M', NULL,  NULL,  15, 18, 2, 2),
    ('Juvenil Masculino -50 kg combate', 'M', 40.00, 50.00, 15, 18, 2, 1),
    ('Juvenil Femenino -48 kg combate',  'F', 40.00, 48.00, 15, 18, 3, 1);
    
INSERT INTO Inscripcion (id_competidor, id_categoria, fecha_inscripcion) 
VALUES
    (1, 1, '2026-10-01'),
    (2, 1, '2026-10-02'),
    (5, 1, '2026-10-03'),
    (3, 2, '2026-10-03'),
    (4, 2, '2026-10-03'),
    (8, 2, '2026-10-04'),
    (6, 2, '2026-10-04'),
    (6, 3, '2026-10-05'),
    (8, 3, '2026-10-05'),
    (7, 5, '2026-11-01'),
    (9, 4, '2026-11-02'),
    (1, 4, '2026-11-02'),
    (5, 4, '2026-11-03'),
    (10, 6, '2027-01-15');

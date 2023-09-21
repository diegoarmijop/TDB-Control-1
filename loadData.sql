-- Poblando la tabla Region
INSERT INTO Region (Nombre) VALUES ('Región Metropolitana');

-- Poblando la tabla Comuna
INSERT INTO Comuna (Nombre, ID_Region) VALUES 
('Santiago', 1),
('Providencia', 1),
('Ñuñoa', 1),
('Las Condes', 1),
('Vitacura', 1),
('La Reina', 1),
('Macul', 1),
('Peñalolén', 1),
('San Joaquín', 1),
('Maipú', 1);

-- Poblando la tabla Cliente
INSERT INTO Cliente (Nombre, Apellido) VALUES 
('Juan', 'Pérez'),
('Maria', 'Rodriguez'),
('Pedro', 'Gomez'),
('Andrea', 'Lopez'),
('Felipe', 'Sanchez'),
('Gabriela', 'Molina'),
('Francisco', 'Orellana'),
('Carolina', 'Silva'),
('Rodrigo', 'Herrera'),
('Daniela', 'Contreras');

-- Poblando la tabla Direccion
INSERT INTO Direccion (Calle, Numero, ID_Cliente, ID_Comuna) VALUES 
('Gran Avenida', 123, 1, 1),
('Providencia', 456, 2, 2),
('Grecia', 789, 3, 3),
('Apoquindo', 101, 4, 4),
('Vitacura', 112, 5, 5),
('Larraín', 131, 6, 6),
('Macul', 415, 7, 7),
('Peñalolén', 161, 8, 8),
('San Joaquín', 718, 9, 9),
('Pajaritos', 192, 10, 10);

-- Poblando la tabla Compania
INSERT INTO Compania (Nombre, ID_Comuna) VALUES 
('Entel', 2),
('Falabella', 3),
('Ripley', 4),
('LAN Chile', 5),
('Cencosud', 1),
('Parque Arauco', 4),
('Sodimac', 6),
('Mall Plaza', 7),
('Latam', 2),
('Banco de Chile', 1);

-- Poblando la tabla Producto
INSERT INTO Producto (Descripcion, Valor, ID_Compania) VALUES 
('Celular', 200000, 1),
('Ropa', 30000, 2),
('Electrodomestico', 150000, 3),
('Pasaje aéreo', 120000, 4),
('Alimento', 5000, 5),
('Muebles', 80000, 6),
('Construcción', 50000, 7),
('Accesorios', 25000, 8),
('Pasaje internacional', 350000, 9),
('Crédito', 1000000, 10);

-- Poblando la tabla Precio
INSERT INTO Precio (Valor) VALUES 
(199990),
(29990),
(149990),
(119990),
(4990),
(79990),
(49990),
(24990),
(349990),
(999990);

-- Poblando la tabla Repartidor
INSERT INTO Repartidor (Nombre) VALUES 
('Miguel'),
('Diego'),
('Pablo'),
('Claudia'),
('Paulina'),
('Carlos'),
('Eduardo'),
('Lucia'),
('Antonio'),
('Isabel');

-- Poblando la tabla Medio_Transporte
INSERT INTO Medio_Transporte (Tipo) VALUES 
('BICICLETA'),
('AUTO'),
('MOTO');

-- Poblando la tabla Pedido
INSERT INTO Pedido (Fecha, ID_Cliente, ID_Repartidor) VALUES 
('2023-09-20', 1, 1),
('2023-09-19', 2, 2),
('2023-09-18', 3, 3),
('2023-09-17', 4, 2),
('2023-09-16', 5, 1),
('2023-09-15', 6, 3),
('2023-09-14', 7, 2),
('2023-09-13', 8, 1),
('2023-09-12', 9, 3),
('2023-09-11', 10, 2);

-- Poblando la tabla Venta_Detalle
INSERT INTO Venta_Detalle (Cantidad, ID_Producto, ID_Precio, ID_Pedido) VALUES 
(1, 1, 1, 1),
(2, 2, 2, 2),
(1, 3, 3, 3),
(3, 4, 4, 4),
(1, 5, 5, 5),
(2, 6, 6, 6),
(1, 7, 7, 7),
(4, 8, 8, 8),
(1, 9, 9, 9),
(1, 10, 10, 10);
CREATE TABLE IF NOT EXISTS Region (
    ID_Region SERIAL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Comuna (
    ID_Comuna SERIAL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    ID_Region INTEGER REFERENCES Region(ID_Region)
);

CREATE TABLE IF NOT EXISTS Cliente (
    ID_Cliente SERIAL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Apellido VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Direccion (
    ID_Direccion SERIAL PRIMARY KEY,
    Calle VARCHAR(255) NOT NULL,
    Numero INTEGER NOT NULL,
    ID_Cliente INTEGER REFERENCES Cliente(ID_Cliente),
    ID_Comuna INTEGER REFERENCES Comuna(ID_Comuna)
);

CREATE TABLE IF NOT EXISTS Compania (
    ID_Compania SERIAL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    ID_Comuna INTEGER REFERENCES Comuna(ID_Comuna)
);

CREATE TABLE IF NOT EXISTS Producto (
    ID_Producto SERIAL PRIMARY KEY,
    Descripcion VARCHAR(255) NOT NULL,
    Valor FLOAT NOT NULL,
    ID_Compania INTEGER REFERENCES Compania(ID_Compania)
);

CREATE TABLE IF NOT EXISTS Precio (
    ID_Precio SERIAL PRIMARY KEY,
    Valor FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS Repartidor (
    ID_Repartidor SERIAL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Medio_Transporte (
    ID_Medio SERIAL PRIMARY KEY,
    Tipo VARCHAR(50) CHECK (Tipo IN ('BICICLETA', 'AUTO', 'MOTO'))
);

ALTER TABLE IF NOT EXISTS Repartidor 
ADD COLUMN ID_Medio_Transporte INTEGER REFERENCES Medio_Transporte(ID_Medio);

CREATE TABLE IF NOT EXISTS Pedido (
    ID_Pedido SERIAL PRIMARY KEY,
    Fecha DATE NOT NULL,
    ID_Cliente INTEGER REFERENCES Cliente(ID_Cliente),
    ID_Repartidor INTEGER REFERENCES Repartidor(ID_Repartidor)
);

CREATE TABLE IF NOT EXISTS Venta_Detalle (
    ID_Venta SERIAL PRIMARY KEY,
    Cantidad INTEGER NOT NULL,
    ID_Producto INTEGER REFERENCES Producto(ID_Producto),
    ID_Precio INTEGER REFERENCES Precio(ID_Precio),
    ID_Pedido INTEGER REFERENCES Pedido(ID_Pedido)
);
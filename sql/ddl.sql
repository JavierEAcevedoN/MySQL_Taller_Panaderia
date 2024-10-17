CREATE DATABASE IF NOT EXISTS Panaderia;

USE Panaderia;

CREATE TABLE IF NOT EXISTS TiposProducto (
    ID_TipoProducto INT PRIMARY KEY AUTO_INCREMENT,
    TipoProducto VARCHAR(128) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Estados (
    ID_Estado INT PRIMARY KEY AUTO_INCREMENT,
    Estado VARCHAR(128) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Productos (
    ID_Producto INT PRIMARY KEY AUTO_INCREMENT,
    ID_TipoProducto INT NOT NULL,
    ID_Estado INT NOT NULL,
    Nombre VARCHAR(128) NOT NULL UNIQUE,
    Descripcion TEXT NOT NULL,
    Cantidad INT NOT NULL DEFAULT 0,
    Precio DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (ID_TipoProducto) REFERENCES TiposProducto(ID_TipoProducto),
    FOREIGN KEY (ID_Estado) REFERENCES Estados(ID_Estado)
);

CREATE TABLE IF NOT EXISTS Proveedores (
    ID_Proveedor INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(256) NOT NULL,
    Telefono VARCHAR(15) NOT NULL UNIQUE,
    CorreoElectronico VARCHAR(256) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Ingredientes (
    ID_Ingrediente INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(128) NOT NULL UNIQUE,
    Descripcion TEXT NOT NULL,
    Cantidad INT NOT NULL DEFAULT 0,
    Precio DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS Ordenes (
    ID_Orden INT PRIMARY KEY AUTO_INCREMENT,
    ID_Proveedor INT NOT NULL,
    ID_Ingrediente INT NOT NULL,
    Cantidad INT NOT NULL,
    Subtotal DECIMAL(10,2) NOT NULL,
    Total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (ID_Proveedor) REFERENCES Proveedores(ID_Proveedor),
    FOREIGN KEY (ID_Ingrediente) REFERENCES Ingredientes(ID_Ingrediente)
);

CREATE TABLE IF NOT EXISTS IngredientesProductos (
    ID_IngredientesProductos INT PRIMARY KEY AUTO_INCREMENT,
    ID_Ingrediente INT NOT NULL,
    ID_Producto INT NOT NULL,
    Cantidad INT NOT NULL,
    FOREIGN KEY (ID_Ingrediente) REFERENCES Ingredientes(ID_Ingrediente),
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);

CREATE TABLE IF NOT EXISTS TiposCliente (
    ID_TipoCliente INT PRIMARY KEY AUTO_INCREMENT,
    TipoCliente VARCHAR(128) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Clientes (
    ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    ID_TipoCliente INT NOT NULL,
    Nombre VARCHAR(256) NOT NULL,
    Telefono VARCHAR(15) NOT NULL UNIQUE,
    CorreoElectronico VARCHAR(256) NOT NULL UNIQUE,
    FechaNacimiento DATE NOT NULL,
    FOREIGN KEY (ID_TipoCliente) REFERENCES TiposCliente(ID_TipoCliente)
);

CREATE TABLE IF NOT EXISTS Empleados (
    ID_Empleado INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(256) NOT NULL,
    Salario DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS Ventas (
    ID_Venta INT PRIMARY KEY AUTO_INCREMENT,
    ID_Cliente INT NOT NULL,
    ID_Empleado INT NOT NULL,
    ID_Producto INT NOT NULL,
    Fecha DATE NOT NULL,
    Cantidad INT NOT NULL,
    Subtotal DECIMAL(10,2) NOT NULL,
    Total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (ID_Empleado) REFERENCES Empleados(ID_Empleado),
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);
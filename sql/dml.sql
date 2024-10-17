-- Insert into TiposProducto
INSERT INTO TiposProducto (TipoProducto) VALUES 
('Pan'), 
('Postres'), 
('Bebidas');

-- Insert into Estados
INSERT INTO Estados (Estado) VALUES 
('Disponible'), 
('Descontinuado'),
('No Disponible');

-- Insert into Productos
INSERT INTO Productos (ID_TipoProducto, ID_Estado, Nombre, Descripcion, Cantidad, Precio) VALUES 
(1, 1, 'Pan Integral', 'Pan hecho con harina integral', 50, 2.50), 
(1, 1, 'Pan de Ajo', 'Pan con sabor a ajo', 30, 3.00), 
(2, 1, 'Tarta de Fresa', 'Tarta fresca con fresas', 15, 12.00), 
(2, 1, 'Brownie', 'Brownie de chocolate con nueces', 20, 5.00), 
(3, 1, 'Jugo de Naranja', 'Jugo natural de naranja', 100, 1.50), 
(3, 1, 'Refresco de Cola', 'Refresco carbonatado', 80, 1.00),
(1, 2, 'Pan de Centeno', 'Pan hecho con harina de centeno', 40, 2.80), 
(2, 3, 'Cheesecake', 'Tarta de queso con base de galleta', 0, 10.00), 
(3, 2, 'Agua Mineral', 'Agua con gas embotellada', 0, 0.80), 
(1, 3, 'Pan Brioche', 'Pan suave y dulce', 0, 3.20), 
(2, 1, 'Donuts', 'Donuts glaseadas', 50, 1.20);

-- Insert into Proveedores
INSERT INTO Proveedores (Nombre, Telefono, CorreoElectronico) VALUES 
('Juan Stevan', '1234567890', 'juanstevan@mail.com'), 
('Edgan Quintero', '0987654321', 'edganquintero@mail.com'),
('Lucía Fernández', '9876543210', 'luciafernandez@mail.com'), 
('Pablo García', '1122334455', 'pablogarcia@mail.com'); 

-- Insert into Ingredientes
INSERT INTO Ingredientes (Nombre, Descripcion, Cantidad, Precio) VALUES 
('Harina', 'Harina de trigo', 1000, 0.50), 
('Azúcar', 'Azúcar blanca', 500, 1.00), 
('Fresas', 'Fresas frescas', 200, 3.00), 
('Nueces', 'Nueces troceadas', 150, 4.00), 
('Naranjas', 'Naranjas frescas', 300, 2.00), 
('Chocolate', 'Chocolate para repostería', 300, 3.00),
('Levadura', 'Levadura seca instantánea', 300, 0.75), 
('Huevos', 'Huevos frescos', 200, 2.50), 
('Leche', 'Leche entera', 500, 1.50), 
('Mantequilla', 'Mantequilla sin sal', 200, 4.00);

-- Insert into Ordenes
INSERT INTO Ordenes (ID_Proveedor, ID_Ingrediente, Cantidad, Subtotal, Total) VALUES 
(1, 1, 10, 5.00, 5.00), 
(1, 3, 20, 60.00, 60.00), 
(2, 4, 15, 60.00, 60.00),
(3, 7, 50, 37.50, 37.50), 
(4, 9, 40, 60.00, 60.00), 
(2, 8, 30, 75.00, 75.00), 
(3, 10, 20, 80.00, 80.00);

-- Insert into IngredientesProductos
INSERT INTO IngredientesProductos (ID_Ingrediente, ID_Producto, Cantidad) VALUES 
(1, 1, 5), 
(1, 2, 3), 
(3, 3, 1), 
(4, 4, 2), 
(5, 5, 4), 
(6, 6, 2),
(7, 7, 3),
(8, 8, 2),
(9, 9, 1),
(10, 10, 4);

-- Insert into TiposCliente
INSERT INTO TiposCliente (TipoCliente) VALUES 
('Regular'), 
('Recurrente'),
('VIP');

-- Insert into Clientes
INSERT INTO Clientes (ID_TipoCliente, Nombre, Telefono, CorreoElectronico, FechaNacimiento) VALUES 
(1, 'Juan Pérez', '1234567890', 'juan@mail.com', '1996-10-01'), 
(2, 'María López', '0987654321', 'maria@mail.com', '2000-05-21'),
(1, 'Pedro Castillo', '1122334455', 'pedro@mail.com', '1995-12-15'), 
(2, 'Luisa Gómez', '1231231234', 'luisa@mail.com', '1988-07-30'), 
(3, 'Sofía Martínez', '3213214321', 'sofia@mail.com', '1990-03-14');

-- Insert into Empleados
INSERT INTO Empleados (Nombre, Salario) VALUES 
('Carlos Gómez', 1500.00), 
('Ana Martínez', 1800.00),
('Luis Rivera', 1600.00), 
('Carla Ramírez', 1750.00);

-- Insert into Ventas
INSERT INTO Ventas (ID_Cliente, ID_Empleado, ID_Producto, Fecha, Cantidad, Subtotal, Total) VALUES 
(1, 1, 1, '2024-10-01', 2, 5.00, 10.00), 
(2, 2, 3, '2024-10-02', 1, 15.00, 15.00), 
(1, 1, 5, '2024-10-03', 3, 9.50, 28.50),
(3, 3, 2, '2024-10-05', 4, 4.50, 18.00), 
(1, 4, 4, '2024-10-06', 2, 13.00, 26.00), 
(2, 2, 5, '2024-10-07', 5, 9.50, 47.50), 
(1, 3, 7, '2024-10-08', 3, 5.05, 15.15);
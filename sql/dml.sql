-- Insert into TiposProducto
INSERT INTO TiposProducto (TipoProducto) VALUES 
('Panes'), 
('Postres'), 
('Bebidas');

-- Insert into Estados
INSERT INTO Estados (Estdo) VALUES 
('Disponible'), 
('No Disponible');

-- Insert into Productos
INSERT INTO Productos (ID_TipoProducto, ID_Estdo, Nombre, Descripcion, Cantidad, Precio) VALUES 
(1, 1, 'Pan Integral', 'Pan hecho con harina integral', 50, 2.50), 
(1, 1, 'Pan de Ajo', 'Pan con sabor a ajo', 30, 3.00), 
(2, 1, 'Tarta de Fresa', 'Tarta fresca con fresas', 15, 12.00), 
(2, 1, 'Brownie', 'Brownie de chocolate con nueces', 20, 5.00), 
(3, 1, 'Jugo de Naranja', 'Jugo natural de naranja', 100, 1.50), 
(3, 1, 'Refresco de Cola', 'Refresco carbonatado', 80, 1.00);

-- Insert into Proveedores
INSERT INTO Proveedores (Nombre, Telefono, CorreoElectronico) VALUES 
('Proveedor A', '1234567890', 'proveedora@example.com'), 
('Proveedor B', '0987654321', 'proveedorb@example.com');

-- Insert into Ingredientes
INSERT INTO Ingredientes (Nombre, Descripcion, Cantidad, Precio) VALUES 
('Harina', 'Harina de trigo', 1000, 0.50), 
('Azúcar', 'Azúcar blanca', 500, 1.00), 
('Fresas', 'Fresas frescas', 200, 3.00), 
('Nueces', 'Nueces troceadas', 150, 4.00), 
('Naranjas', 'Naranjas frescas', 300, 2.00), 
('Chocolate', 'Chocolate para repostería', 300, 3.00);

-- Insert into Ordenes
INSERT INTO Ordenes (ID_Proveedor, ID_Ingrediente, Cantidad, Subtotal, Total) VALUES 
(1, 1, 10, 5.00, 5.00), 
(1, 3, 20, 60.00, 60.00), 
(2, 4, 15, 60.00, 60.00);

-- Insert into IngredientesProductos
INSERT INTO IngredientesProductos (ID_Ingrediente, ID_Producto, Cantidad) VALUES 
(1, 1, 500), 
(1, 2, 500), 
(3, 3, 100), 
(4, 4, 50), 
(5, 5, 200), 
(6, 6, 150);

-- Insert into TiposCliente
INSERT INTO TiposCliente (TipoCliente) VALUES 
('Regular'), 
('VIP');

-- Insert into Clientes
INSERT INTO Clientes (ID_TipoCliente, Nombre, Telefono, CorreoElectronico) VALUES 
(1, 'Juan Pérez', '1234567890', 'juan@example.com'), 
(2, 'María López', '0987654321', 'maria@example.com');

-- Insert into Empleados
INSERT INTO Empleados (Nombre, Salario) VALUES 
('Carlos Gómez', 1500.00), 
('Ana Martínez', 1800.00);

-- Insert into Ventas
INSERT INTO Ventas (ID_Cliente, ID_Empleado, ID_Producto, Fecha, Cantidad, Subtotal, Total) VALUES 
(1, 1, 1, '2024-10-01', 2, 5.00, 5.00), 
(2, 2, 3, '2024-10-02', 1, 12.00, 12.00), 
(1, 1, 5, '2024-10-03', 3, 4.50, 4.50);
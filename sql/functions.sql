USE Panaderia;

DELIMITER //

-- 1. Calcular el costo total de los ingredientes utilizados en un producto.
CREATE FUNCTION CostoTotalIngredientesProducto (ID_Producto INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE Total DECIMAL(10,2);

    SELECT SUM(ip.Cantidad * ig.Precio)
    INTO Total
    FROM IngredientesProductos ip
    INNER JOIN Ingredientes ig ON ip.ID_Ingrediente = ig.ID_Ingrediente
    WHERE ip.ID_Producto = ID_Producto;

    RETURN Total;
END//

-- 2. Devolver el precio promedio de los productos vendidos.
CREATE FUNCTION PromedioProductos ()
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE Promedio DECIMAL(10,2);

    SELECT AVG(Total)
    INTO Promedio
    FROM Ventas;

    RETURN Promedio;
END//

-- 3. Calcular el descuento aplicable a una venta según el cliente.
CREATE FUNCTION DescuentoCliente (ID_Cliente INT, Precio DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE PrecioDescuento DECIMAL(10,2);
    DECLARE TipoCliente VARCHAR(128);

    SELECT tc.TipoCliente
    INTO TipoCliente
    FROM Clientes cl
    INNER JOIN TiposCliente tc ON cl.ID_TipoCliente = tc.ID_TipoCliente
    WHERE cl.ID_Cliente = ID_Cliente;

    IF TipoCliente = "Regular" THEN
        SET PrecioDescuento = Precio - (Precio * 0.1);
    ELSEIF TipoCliente = "Recurrente" THEN
        SET PrecioDescuento = Precio - (Precio * 0.2);
    ELSEIF TipoCliente = "VIP" THEN
        SET PrecioDescuento = Precio - (Precio * 0.45);
    END IF;

    RETURN PrecioDescuento;
END//

-- 4. Calcular el costo total de una venta.
CREATE FUNCTION CostoTotalVenta ( Cantidad INT,Precio DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN Cantidad * Precio;
END//

-- 5. Devolver la cantidad de productos vendidos en un día específico.
CREATE FUNCTION TotalProductosVendidosDia (Dia DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE Total INT;

    SELECT SUM(Cantidad)
    INTO Total
    FROM Ventas
    WHERE Fecha = Dia;

    RETURN Total;
END//

-- 6. Calcular el total de ventas en un mes.
CREATE FUNCTION TotalProductosVendidosMes (Mes VARCHAR(20))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE Total INT;

    SELECT SUM(Cantidad)
    INTO Total
    FROM Ventas
    WHERE MONTHNAME(Fecha) = Mes;

    RETURN Total;
END//

-- 7. Devolver el costo de los ingredientes de un producto específico.
CREATE FUNCTION CostoEspecificoIngredientesProducto (Precio DECIMAL(10,2), Cantidad INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN Precio * Cantidad;
END//

-- 8. Calcular el número total de clientes que han realizado una compra en el último mes.
CREATE FUNCTION 'name' ('parameter' INT)
RETURNS INT
DETERMINISTIC
BEGIN
    -- CODE
END//

-- 9. Devolver el promedio de ventas por empleado.
CREATE FUNCTION 'name' ('parameter' INT)
RETURNS INT
DETERMINISTIC
BEGIN
    -- CODE
END//

-- 10. Calcular el total de ingredientes necesarios para producir un lote de productos.
CREATE FUNCTION 'name' ('parameter' INT)
RETURNS INT
DETERMINISTIC
BEGIN
    -- CODE
END//

-- 11. Devolver la cantidad de productos en inventario.
CREATE FUNCTION 'name' ('parameter' INT)
RETURNS INT
DETERMINISTIC
BEGIN
    -- CODE
END//

-- 12. Calcular la ganancia neta de una venta.
CREATE FUNCTION 'name' ('parameter' INT)
RETURNS INT
DETERMINISTIC
BEGIN
    -- CODE
END//

-- 13. Devolver la cantidad de órdenes de compra pendientes.
CREATE FUNCTION 'name' ('parameter' INT)
RETURNS INT
DETERMINISTIC
BEGIN
    -- CODE
END//

-- 14. Calcular el precio de venta promedio de un producto en un periodo determinado.
CREATE FUNCTION 'name' ('parameter' INT)
RETURNS INT
DETERMINISTIC
BEGIN
    -- CODE
END//

-- 15. Calcular el valor de los ingredientes comprados a un proveedor específico.
CREATE FUNCTION 'name' ('parameter' INT)
RETURNS INT
DETERMINISTIC
BEGIN
    -- CODE
END//

-- 16. Calcular la cantidad total de productos vendidos en una categoría específica.
CREATE FUNCTION 'name' ('parameter' INT)
RETURNS INT
DETERMINISTIC
BEGIN
    -- CODE
END//

-- 17. Calcular la cantidad de ventas superiores a un valor determinado.
CREATE FUNCTION 'name' ('parameter' INT)
RETURNS INT
DETERMINISTIC
BEGIN
    -- CODE
END//

-- 18. Devolver el nombre del empleado con más ventas en un mes.
CREATE FUNCTION 'name' ('parameter' INT)
RETURNS INT
DETERMINISTIC
BEGIN
    -- CODE
END//

-- 19. Calcular la cantidad de productos vendidos con descuento.
CREATE FUNCTION 'name' ('parameter' INT)
RETURNS INT
DETERMINISTIC
BEGIN
    -- CODE
END//

-- 20. Devolver el total de ventas realizadas a un cliente específico.
CREATE FUNCTION 'name' ('parameter' INT)
RETURNS INT
DETERMINISTIC
BEGIN
    -- CODE
END//
DELIMITER ;
USE Panaderia;

DELIMITER //

-- 1. Actualizar automáticamente el inventario después de cada venta.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 2. Registrar en una tabla de auditoría cualquier modificación en los productos.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 3. Evitar la eliminación de un cliente si tiene ventas pendientes.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 4. Verificar que los datos de un cliente estén completos antes de insertarlo.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 5. Generar una orden de compra automáticamente si un ingrediente está bajo en inventario.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 6. Actualizar la tabla de auditoría cada vez que se modifique una venta.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 7. Registrar automáticamente la fecha de la última modificación de un producto.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 8. Verificar que el inventario esté disponible antes de realizar una venta.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 9. Evitar la eliminación de un proveedor si tiene órdenes de compra activas.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 10. Actualizar la tabla de auditoría cada vez que se elimine una venta.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 11. Registrar la fecha de ingreso de un nuevo empleado automáticamente.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 12. Generar un descuento automático si un cliente cumple años.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 13. Registrar cualquier modificación en los precios de los productos.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 14. Evitar la eliminación de un ingrediente si está en uso en un producto.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 15. Registrar automáticamente la fecha de la última modificación de un cliente.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 16. Generar una alerta si se intenta vender un producto que está agotado.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 17. Actualizar automáticamente el estado de una orden de compra cuando se recibe.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 18. Registrar en la tabla de auditoría cualquier cambio en los datos de un empleado.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 19. Verificar la cantidad mínima de ingredientes antes de permitir la producción de un producto.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

-- 20. Actualizar el stock de ingredientes automáticamente después de cada compra.
CREATE TRIGGER 'name'
AFTER|BEFORE INSERT|UPDATE|DELETE ON 'Table' FOR EACH ROW
BEGIN
    -- CODE
END//

DELIMITER ;
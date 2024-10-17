USE Panaderia;

SELECT CostoTotalIngredientesProducto(1)

SELECT PromedioProductos()

SELECT AVG(Total)
    FROM Ventas;

SELECT 
        ID_Cliente,
        ID_TipoCliente,
        Nombre,
        DescuentoCliente(ID_Cliente, 20000)
FROM Clientes

SELECT
        Cantidad,
        Subtotal,
        CostoTotalVenta(Cantidad,Subtotal) AS Total
FROM Ventas

SELECT TotalProductosVendidos('2024-10-08')

SELECT TotalProductosVendidosMes('October')

SELECT pr.Nombre,
        pr.Precio,
        ig.Nombre,
        ig.Precio,
        ip.Cantidad,
        CostoEspecificoIngredientesProducto(ig.Precio,ip.Cantidad) AS PrecioTotal
FROM IngredientesProductos ip
INNER JOIN Productos pr ON ip.ID_Producto = pr.ID_Producto
INNER JOIN Ingredientes ig ON ip.ID_Ingrediente = ig.ID_Ingrediente
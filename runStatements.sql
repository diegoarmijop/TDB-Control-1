-- 1. Lista de clientes con más pedidos por compañía
SELECT c.Nombre AS Cliente, co.Nombre AS Compañia, COUNT(p.ID_Pedido) AS Numero_Pedidos
FROM Cliente c
JOIN Pedido p ON c.ID_Cliente = p.ID_Cliente
JOIN Venta_Detalle vd ON p.ID_Pedido = vd.ID_Venta
JOIN Producto pr ON vd.ID_Producto = pr.ID_Producto
JOIN Compañia co ON pr.ID_Compañia = co.ID_Compañia
GROUP BY c.Nombre, co.Nombre
ORDER BY Numero_Pedidos DESC;

-- 2. Producto menos pedido por compañía
SELECT co.Nombre AS Compañia, pr.Descripcion AS Producto, COUNT(vd.ID_Venta) AS Numero_Pedidos
FROM Producto pr
JOIN Venta_Detalle vd ON pr.ID_Producto = vd.ID_Producto
JOIN Compañia co ON pr.ID_Compañia = co.ID_Compañia
GROUP BY co.Nombre, pr.Descripcion
ORDER BY Numero_Pedidos ASC LIMIT 1;

-- 3. Medio de transporte más usados para repartir los pedidos por comuna de cliente
SELECT d.ID_Comuna AS Comuna, mt.Tipo AS Medio_Transporte, COUNT(p.ID_Pedido) AS Numero_Pedidos
FROM Pedido p
JOIN Repartidor r ON p.ID_Repartidor = r.ID_Repartidor
JOIN Medio_Transporte mt ON r.ID_Medio_Transporte = mt.ID_Medio
JOIN Cliente c ON p.ID_Cliente = c.ID_Cliente
JOIN Direccion d ON c.ID_Cliente = d.ID_Cliente
GROUP BY d.ID_Comuna, mt.Tipo
ORDER BY Numero_Pedidos DESC;

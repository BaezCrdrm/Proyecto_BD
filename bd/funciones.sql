USE sibdd;
/*
Se debe generar una función que dado el nombre de un artículo te 
regrese el proveedor al que más le has comprado ese artículo, 
el mejor precio que te ha dado ese proveedor para ese artículo, 
el precio más alto que te ha dado y el último precio. Los precios 
deben ser en formato moneda
*/

SELECT p.nombre, COUNT(p.nombre) maximo, a.nombre, SUM(dp.cantidad), MIN(dp.costo_total_por_producto / dp.cantidad) MEJOR_PRECIO, MAX(dp.costo_total_por_producto / dp.cantidad) PRECIO_MAS_ALTO, 
(SELECT  dp.costo_total_por_producto / dp.cantidad FROM Detalles_Pedidos dp INNER JOIN Articulos a ON dp.id_articulo = a.id_articulo 
WHERE dp.id_detalle_pedido = (SELECT MAX(dp.id_detalle_pedido) FROM Detalles_Pedidos dp INNER JOIN Articulos a ON dp.id_articulo = a.id_articulo 
WHERE a.nombre = 'Lapiz triangular')) ULTIMO_PRECIO 
FROM Detalles_Pedidos dp INNER JOIN Proveedores p ON dp.id_proveedor = p.id_proveedor
INNER JOIN Articulos a ON dp.id_articulo = a.id_articulo WHERE a.nombre = 'Lapiz triangular'
GROUP BY p.nombre
ORDER BY maximo DESC LIMIT 1;

/* 
Mostrar un listado de artículos con la siguiente información:
Clave del artículo y Nombre del artículo (En una misma columna, Marca, 
Precio unitario, Existencia, Proveedor con el que se compró por última vez, 
la cantidad que se compró y el total que se pagó en ese pedido
*/
SELECT a.id_articulo, a.nombre, CONCAT(m.marca, ' - ', precio_unitario, ' - ',  existencia) 'MARCA - PRECIO UNITARIO - EXISTENCIA'
FROM Articulos a INNER JOIN Marcas m ON a.id_marca = m.id_marca
ORDER BY a.id_articulo ASC;




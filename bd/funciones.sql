/*
Se debe generar una función que dado el nombre de un artículo te 
regrese el proveedor al que más le has comprado ese artículo, 
el mejor precio que te ha dado ese proveedor para ese artículo, 
el precio más alto que te ha dado y el último precio. Los precios 
deben ser en formato moneda
*/
SELECT p.nombre, MAX(SELECT id_proveedor FROM Detalles_Pedidos)  
FROM Proveedores p 
INNER JOIN Detalles_Pedidos dp ON p.id_proveedor = dp.id_proveedor 
INNER JOIN Articulos a ON a.id_articulo = dp.id_articulo
WHERE a.nombre = 'Libreta Scribe';

SELECT MAX(SELECT COUNT(id_proveedor) FROM Detalles_Pedidos) FROM

SELECT a.id_articulo AS "ID", CONCAT(a.nombre,', ',m.marca,', ',a.precio_unitario,', ',a.existencia,', ' ) AS "NOMBRE, MARCA, PRECIO UNITARIO, EXISTENCIA"
FROM Articulos a INNER JOIN Marcas m ON a.id_marca = m.id_marca INNER JOIN Detalles_Pedidos dp ON a.id_articulo = dp.id_articulo
ORDER BY a.id_articulo;


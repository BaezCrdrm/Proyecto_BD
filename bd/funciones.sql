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





/*
Generar un función que dado el nombre de un cliente, 
le modifique su porcentaje de descuento de acuerdo a 
los siguientes criterios: 
- Si ha hecho más de 15 compras 
(sin importar la cantidad de artículos o lo que ha pagado) 
un 5% del porcentaje que tiene actualmente
- Si no ha hecho compras en el último mes le reste 5% 
al porcentaje que tiene asignado (el porcentaje nunca 
puede ser negativo) 
- Si se trata del cliente con la 
compra más grande: le sume 5%
- Cabe destacar que el % de descuento nunca debe ser mayor 
al 30% y menor a 3% 
*/
/* Obtiene máximos */
DELIMITER $$
CREATE OR REPLACE PROCEDURE Funcion5(IN nombre_cliente VARCHAR(50))
BEGIN
    DECLARE uno INT unsigned DEFAULT 0;
    DECLARE dos INT unsigned DEFAULT 0;
    DECLARE tres DOUBLE unsigned DEFAULT 0.0;
    DECLARE ventagrande DOUBLE unsigned DEFAULT 0.0;
    DECLARE old DOUBLE unsigned DEFAULT 0.0;
    
    SELECT procentaje_descuento AS "Descuento"
    INTO @old
    FROM Clientes
    WHERE nombre = nombre_cliente;

    SELECT COUNT(vc.id_cliente)
    INTO @uno
    FROM Ventas_Cabecera vc
    INNER JOIN Clientes c
    ON c.id_cliente = vc.id_cliente
    WHERE c.nombre = nombre_cliente
    GROUP BY c.id_cliente;

    SELECT COUNT(vc.id_cliente)
    INTO @dos
    FROM Ventas_Cabecera vc
    INNER JOIN Clientes c
    ON c.id_cliente = vc.id_cliente
    WHERE
        c.nombre = nombre_cliente AND
        (vc.fecha BETWEEN CURRENT_DATE() AND DATE(CURRENT_DATE() - INTERVAL 1 MONTH))
    GROUP BY c.id_cliente;

    SELECT MAX(vc.precio_total)
    INTO @tres
    FROM Ventas_Cabecera vc
    INNER JOIN Clientes c
    ON c.id_cliente = vc.id_cliente
    WHERE c.nombre = nombre_cliente
    GROUP BY c.id_cliente;

    SELECT MAX(vc.precio_total)
    INTO @ventagrande
    FROM Ventas_Cabecera vc;

    IF @uno > 15 THEN
        UPDATE Clientes
        SET procentaje_descuento = 
            IF( procentaje_descuento <= 25.0,
                procentaje_descuento + 5.0,
                30.0)
        WHERE nombre = nombre_cliente;
    END IF;

    IF @dos IS NULL OR @dos = 0 THEN
        UPDATE Clientes
        SET procentaje_descuento = 
            IF( procentaje_descuento >= 8.0,
                procentaje_descuento - 5.0,
                3.0)
        WHERE nombre = nombre_cliente;
    END IF;

    IF @tres = @ventagrande THEN
        UPDATE Clientes
        SET procentaje_descuento = 
            IF( procentaje_descuento <= 25.0,
                procentaje_descuento + 5.0,
                30.0)
        WHERE nombre = nombre_cliente;
    END IF;
    
    SELECT @old "Anterior", procentaje_descuento AS "Descuento"
    FROM Clientes
    WHERE nombre = nombre_cliente;
END $$

DELIMITER ;

-- UPDATE table
-- SET A = IF(A > 0 AND A < 1, 1, IF(A > 1 AND A < 2, 2, A))
-- WHERE A IS NOT NULL;
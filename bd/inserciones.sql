-- Insertar Categorias --
INSERT INTO Categorias (categoria)
VALUES ('Libretas'); 
INSERT INTO Categorias (categoria)
VALUES ('Pliego de papel');
INSERT INTO Categorias (categoria)
VALUES ('Lapiz'); 
INSERT INTO Categorias (categoria)
VALUES ('Reglas');  
INSERT INTO Categorias (categoria)
VALUES ('Pegamento');

-- Insertar Marca --
INSERT INTO Marcas (marca)
VALUES ('Bip');
INSERT INTO Marcas (marca)
VALUES ('Scribe');
INSERT INTO Marcas (marca)
VALUES ('Papermate');
INSERT INTO Marcas (marca)
VALUES ('Mirado');
INSERT INTO Marcas (marca)
VALUES ('Bon');

-- Insertar Articulos --
INSERT INTO Articulos (nombre, descripcion, id_categoria, id_marca, precio_unitario, existencia)
VALUES ('Libreta Scribe', 'Libreta color verde de 100 hojas', 1, 2, 20.00, 50); 
INSERT INTO Articulos (nombre, descripcion, id_categoria, id_marca, precio_unitario, existencia)
VALUES ('Lapiz triangular', 'Lapiz mirado H2', 3, 4, 10.00, 45); 
INSERT INTO Articulos (nombre, descripcion, id_categoria, id_marca, precio_unitario, existencia)
VALUES ('Colores 24 pz', 'Lapices de colores de 24 piezas marca papermate', 3, 3, 70.20, 30); 
INSERT INTO Articulos (nombre, descripcion, id_categoria, id_marca, precio_unitario, existencia)
VALUES ('Regla estandar', 'Regla de 30 cm', 4, 1, 10.50, 40);

-- Insertar Clientes
INSERT INTO Clientes (nombre, email, rfc, procentaje_descuento)
VALUES ('Escuela Juarez', 'escuela.juarez@gmail.com', 'EDAR947910T32', 13);
INSERT INTO Clientes (nombre, email, rfc, procentaje_descuento)
VALUES ('Pimaria #2', 'primaria_numero_2@hotmail.com', 'PRIAHFN013945T', 20);
INSERT INTO Clientes (nombre, email, rfc, procentaje_descuento)
VALUES ('Municipio', 'gob.municipal@outlook.com', 'GOTIAUS2351', 0);
INSERT INTO Clientes (nombre, email, rfc, procentaje_descuento)
VALUES ('Purificadora xallapan', 'xallapan_xalapa@live.com', 'XALLAA4918235', 15);

-- Insertar domicilio --
INSERT INTO Domicilios (numero, calle, colonia, municipio, estado, pais)
VALUES ('152', '20 de noviembre', 'Centro', 'Xalapa', 'Veracruz - Ignacio de la llave', 'México');
INSERT INTO Domicilios (numero, calle, colonia, municipio, estado, pais)
VALUES ('13', 'san martin', 'los laureles', 'naranjal', 'Veracruz - Ignacio de la llave', 'México');
INSERT INTO Domicilios (numero, calle, colonia, municipio, estado, pais)
VALUES ('15', '21 de marzo', 'benito juarez', 'Angel R. Cabada', 'Veracruz - Ignacio de la llave', 'México');
INSERT INTO Domicilios (numero, calle, colonia, municipio, estado, pais)
VALUES ('253', 'san acuaman', 'arenque rojo', 'El pescadito', 'Estado pulpin', 'Atlantida');
INSERT INTO Domicilios (numero, calle, colonia, municipio, estado, pais)
VALUES ('742', 'Av. Siempreviva', 'Distrito 2', 'Olympia', 'Whachintong', 'EE.UU.');
INSERT INTO Domicilios (numero, calle, colonia, municipio, estado, pais)
VALUES ('124', 'La concha', 'Medusa loca', 'Fondo de bikini', 'Estado pulpin', 'Oceano pacifico');
INSERT INTO Domicilios (numero, calle, colonia, municipio, estado, pais)
VALUES ('4', 'San pedro', 'Lazaro Cardenas', 'Lerdo de Tejada', 'Veracruz', 'México');

-- Insertar Cliente-Docimilio --
INSERT INTO Clientes_Domicilios (id_cliente, id_domicilio)
VALUES (1, 2);
INSERT INTO Clientes_Domicilios (id_cliente, id_domicilio)
VALUES (1, 3);
INSERT INTO Clientes_Domicilios (id_cliente, id_domicilio)
VALUES (2, 4);
INSERT INTO Clientes_Domicilios (id_cliente, id_domicilio)
VALUES (3, 1);
INSERT INTO Clientes_Domicilios (id_cliente, id_domicilio)
VALUES (4, 7);
INSERT INTO Clientes_Domicilios (id_cliente, id_domicilio)
VALUES (4, 6);

-- Insertar Proveedores --
INSERT INTO Proveedores (nombre, fax, email, rfc, id_domicilio)
VALUES ('Scribe A.S', '934152051', 'scribe@gmail.com', 'SAKJ183948TF', 1);
INSERT INTO Proveedores (nombre, fax, email, rfc, id_domicilio)
VALUES ('Bip A.S', '1244182445', 'Bib@gmail.com', 'AKJSNFKJAF8759', 3);
INSERT INTO Proveedores (nombre, fax, email, rfc, id_domicilio)
VALUES ('Papermate', '150251439', 'papermate@gmail.com', 'PAKSFI583892', 6);

-- Insertar Telefonos --
INSERT INTO Telefonos (telefono)
VALUES ('5124871920');
INSERT INTO Telefonos (telefono)
VALUES ('7598316274');
INSERT INTO Telefonos (telefono)
VALUES ('9917834018');
INSERT INTO Telefonos (telefono)
VALUES ('9413274058');
INSERT INTO Telefonos (telefono)
VALUES ('2398740982');
INSERT INTO Telefonos (telefono)
VALUES ('0923589831');
INSERT INTO Telefonos (telefono)
VALUES ('9589823871');
INSERT INTO Telefonos (telefono)
VALUES ('2438479871');

-- Insertar Cliente-Telefonos --
INSERT INTO Clientes_Telefonos (id_cliente, id_telefono)
VALUES (1, 4);
INSERT INTO Clientes_Telefonos (id_cliente, id_telefono)
VALUES (1, 3);
INSERT INTO Clientes_Telefonos (id_cliente, id_telefono)
VALUES (2, 2);
INSERT INTO Clientes_Telefonos (id_cliente, id_telefono)
VALUES (3, 5);
INSERT INTO Clientes_Telefonos (id_cliente, id_telefono)
VALUES (3, 8);
INSERT INTO Clientes_Telefonos (id_cliente, id_telefono)
VALUES (4, 7);

-- Insertar Proveedores-Telefonos --
INSERT INTO Proveedores_Telefonos (id_proveedor, id_telefono)
VALUES (1, 4);
INSERT INTO Proveedores_Telefonos (id_proveedor, id_telefono)
VALUES (2, 1);
INSERT INTO Proveedores_Telefonos (id_proveedor, id_telefono)
VALUES (3, 2);
INSERT INTO Proveedores_Telefonos (id_proveedor, id_telefono)
VALUES (3, 3);

-- Insertar Sucursales --
INSERT INTO Sucursales (nombre)
VALUES ('Sucursal Aldama');
INSERT INTO Sucursales (nombre)
VALUES ('Santa Cruz');
INSERT INTO Sucursales (nombre)
VALUES ('20 de Noviembre');
INSERT INTO Sucursales (nombre)
VALUES ('Sucursal 2');
INSERT INTO Sucursales (nombre)
VALUES ('Sucursal 3');

-- Insertar Sucursal-Domicilio --
INSERT INTO Sucursales_Domicilios (id_sucursal, id_domicilio)
VALUES (1, 1);
INSERT INTO Sucursales_Domicilios (id_sucursal, id_domicilio)
VALUES (2, 2);
INSERT INTO Sucursales_Domicilios (id_sucursal, id_domicilio)
VALUES (3, 3);
INSERT INTO Sucursales_Domicilios (id_sucursal, id_domicilio)
VALUES (4, 4);
INSERT INTO Sucursales_Domicilios (id_sucursal, id_domicilio)
VALUES (5, 5);

-- Insertar Sucursal-Telefono --
INSERT INTO Sucursales_Telefonos (id_sucursal, id_telefono)
VALUES (1, 1);
INSERT INTO Sucursales_Telefonos (id_sucursal, id_telefono)
VALUES (2, 2);
INSERT INTO Sucursales_Telefonos (id_sucursal, id_telefono)
VALUES (2, 3);
INSERT INTO Sucursales_Telefonos (id_sucursal, id_telefono)
VALUES (3, 4);
INSERT INTO Sucursales_Telefonos (id_sucursal, id_telefono)
VALUES (4, 5);

-- Insertar Tipo-Pago --
INSERT INTO Tipo_Pagos (tipo_pago)
VALUES ('Efectivo');
INSERT INTO Tipo_Pagos (tipo_pago)
VALUES ('Credito');
INSERT INTO Tipo_Pagos (tipo_pago)
VALUES ('Debito');

-- Insertar Ventas_Cabecera --
INSERT INTO Ventas_Cabecera (id_cliente, id_sucursal, fecha, precio_total)
VALUES (1, 1, '04-03-2019', 140.20);
INSERT INTO Ventas_Cabecera (id_cliente, id_sucursal, fecha, precio_total)
VALUES (1, 3, '04-04-2019', 40.00);
INSERT INTO Ventas_Cabecera (id_cliente, id_sucursal, fecha, precio_total)
VALUES (2, 5, '05-03-2019', 500.00);

-- Insertar Ventas_Detalle --
INSERT INTO Ventas_Detalle (id_articulo, cantidad, precio_total_por_producto, id_venta_cabecera)
VALUES (2, 6, 60.00, 1);
INSERT INTO Ventas_Detalle (id_articulo, cantidad, precio_total_por_producto, id_venta_cabecera)
VALUES (1, 1, 20.00, 1);
INSERT INTO Ventas_Detalle (id_articulo, cantidad, precio_total_por_producto, id_venta_cabecera)
VALUES (3, 1, 70.20, 1);
INSERT INTO Ventas_Detalle (id_articulo, cantidad, precio_total_por_producto, id_venta_cabecera)
VALUES (2, 4, 40.00, 2);
INSERT INTO Ventas_Detalle (id_articulo, cantidad, precio_total_por_producto, id_venta_cabecera)
VALUES (1, 25, 500.00, 3);

-- Insertar Pedidos --
INSERT INTO Pedidos (fecha_pedido, fecha_entrega, id_tipo_pago, costo_total)
VALUES ('04-03-2019', '05-03-2019',1, 140.20);
INSERT INTO Pedidos (fecha_pedido, fecha_entrega, id_tipo_pago, costo_total)
VALUES ('05-04-2019', '06-04-2019',1, 3000.00);

-- Insert Detalle_Pedidos --
INSERT INTO Detalles_Pedidos (id_proveedor, id_articulo, cantidad, costo_total_por_producto, id_pedido)
VALUES (1, 2, 4, 300, 1);
INSERT INTO Detalles_Pedidos (id_proveedor, id_articulo, cantidad, costo_total_por_producto, id_pedido)
VALUES (1, 1, 4, 300, 1);
INSERT INTO Detalles_Pedidos (id_proveedor, id_articulo, cantidad, costo_total_por_producto, id_pedido)
VALUES (1, 2, 6, 300, 2);
INSERT INTO Detalles_Pedidos (id_proveedor, id_articulo, cantidad, costo_total_por_producto, id_pedido)
VALUES (2, 2, 4, 300, 1);
INSERT INTO Detalles_Pedidos (id_proveedor, id_articulo, cantidad, costo_total_por_producto, id_pedido)
VALUES (1, 2, 6, 200, 2);






























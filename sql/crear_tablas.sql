-- Crea las tablas (SQLite / DB Browser for SQLite). Luego: Archivo > Importar > Tabla desde CSV.
CREATE TABLE clientes (id_cliente INTEGER, nombre TEXT, email TEXT, ciudad TEXT, fecha_registro DATE);
CREATE TABLE productos (id_producto INTEGER PRIMARY KEY, nombre_producto TEXT, categoria TEXT, precio REAL);
CREATE TABLE pedidos (id_pedido INTEGER PRIMARY KEY, id_cliente INTEGER, fecha_pedido DATE, estado TEXT);
CREATE TABLE detalle_pedidos (id_detalle INTEGER PRIMARY KEY, id_pedido INTEGER, id_producto INTEGER, cantidad INTEGER, precio_unitario REAL);

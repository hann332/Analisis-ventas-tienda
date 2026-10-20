-- Herramienta: SQLite / DB Browser for SQLite
-- Regla de ventas: solo pedidos Entregado y Enviado
-- 1.- ¿Cuántos clientes hay en total?
SELECT COUNT(*) AS total_clientes
FROM clientes;

-- 2.- ¿Cuántos pedidos hay por cada estado?
SELECT
    estado,
    COUNT(*) AS cantidad_pedidos
FROM pedidos
GROUP BY estado
ORDER BY cantidad_pedidos DESC;


-- 3.- ¿Cuántos pedidos cuentan como venta?
SELECT COUNT(*) AS total_ventas
FROM pedidos
WHERE estado IN ('Entregado', 'Enviado');


-- 4.- ¿Cuál es el ingreso total de las ventas?
SELECT
    SUM(dp.cantidad * dp.precio_unitario) AS ingreso_total
FROM detalle_pedidos AS dp
JOIN pedidos AS p
    ON dp.id_pedido = p.id_pedido
WHERE p.estado IN ('Entregado', 'Enviado');


-- 5.- ¿Cuál es el ingreso por mes?
-- Las fechas están guardadas en formato DD/MM/AAAA.
SELECT
    substr(p.fecha_pedido, 7, 4) || '-' ||
    substr(p.fecha_pedido, 4, 2) AS mes,
    SUM(dp.cantidad * dp.precio_unitario) AS ingreso_mensual
FROM detalle_pedidos AS dp
JOIN pedidos AS p
    ON dp.id_pedido = p.id_pedido
WHERE p.estado IN ('Entregado', 'Enviado')
GROUP BY mes
ORDER BY mes;


-- 6.- Top 5 productos más vendidos por unidades
SELECT
    pr.nombre_producto,
    SUM(dp.cantidad) AS unidades_vendidas
FROM detalle_pedidos AS dp
JOIN productos AS pr
    ON dp.id_producto = pr.id_producto
JOIN pedidos AS p
    ON dp.id_pedido = p.id_pedido
WHERE p.estado IN ('Entregado', 'Enviado')
GROUP BY pr.id_producto, pr.nombre_producto
ORDER BY unidades_vendidas DESC
LIMIT 5;


-- 7.- ¿Cuál es el ingreso por categoría?
SELECT
    pr.categoria,
    SUM(dp.cantidad * dp.precio_unitario) AS ingreso_total
FROM detalle_pedidos AS dp
JOIN productos AS pr
    ON dp.id_producto = pr.id_producto
JOIN pedidos AS p
    ON dp.id_pedido = p.id_pedido
WHERE p.estado IN ('Entregado', 'Enviado')
GROUP BY pr.categoria
ORDER BY ingreso_total DESC;


-- 8.- ¿Cuál es el ticket promedio por pedido?
SELECT AVG(total_pedido) AS ticket_promedio
FROM (
    SELECT
        p.id_pedido,
        SUM(dp.cantidad * dp.precio_unitario) AS total_pedido
    FROM pedidos AS p
    JOIN detalle_pedidos AS dp
        ON p.id_pedido = dp.id_pedido
    WHERE p.estado IN ('Entregado', 'Enviado')
    GROUP BY p.id_pedido
) AS totales;


-- 9.- Clientes con más de 3 compras que cuentan como venta
SELECT
    c.id_cliente,
    c.nombre,
    COUNT(p.id_pedido) AS total_compras
FROM clientes AS c
JOIN pedidos AS p
    ON c.id_cliente = p.id_cliente
WHERE p.estado IN ('Entregado', 'Enviado')
GROUP BY c.id_cliente, c.nombre
HAVING COUNT(p.id_pedido) > 3
ORDER BY total_compras DESC;


-- 10.- Clientes que nunca compraron
-- Criterio: no tienen ningún pedido Entregado o Enviado.
SELECT
    c.id_cliente,
    c.nombre
FROM clientes AS c
LEFT JOIN pedidos AS p
    ON c.id_cliente = p.id_cliente
    AND p.estado IN ('Entregado', 'Enviado')
WHERE p.id_pedido IS NULL
ORDER BY c.id_cliente;

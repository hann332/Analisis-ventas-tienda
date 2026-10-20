# Análisis de ventas con SQL

## Objetivo
Analizar las ventas de una tienda online ficticia utilizando SQL y SQLite para obtener información sobre clientes, pedidos, productos e ingresos

## Herramientas
- DB Browser for SQLite
- SQLite
- SQL

## Tablas
La base de datos contiene cuatro tablas:

- `clientes`: información de los clientes
- `productos`: catálogo de productos y precios
- `pedidos`: fechas y estados de los pedidos
- `detalle_pedidos`: productos, cantidades y precios unitarios de cada pedido

## Consultas realizadas
El análisis incluye las siguientes consultas:

1. Total de clientes
2. Cantidad de pedidos por estado
3. Pedidos que cuentan como venta
4. Ingreso total de las ventas
5. Ingreso por mes
6. Top 5 de productos más vendidos por unidades
7. Ingreso por categoría
8. Ticket promedio por pedido
9. Clientes con más de tres compras
10. Clientes que nunca compraron
    
## Regla de ventas
Para este proyecto, se consideran ventas los pedidos con estado `Entregado` o `Enviado`. Los pedidos cancelados, pendientes y sin estado quedan excluidos de los cálculos de ingresos

## Archivos
- `crear_tablas.sql`: instrucciones para crear las tablas
- `consultas.sql`: consultas utilizadas en el análisis

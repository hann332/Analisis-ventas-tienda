# 📊 Análisis de ventas de una tienda online

**Proyecto de análisis de datos **

##  Descripción

Proyecto de análisis de datos de una tienda online ficticia para identificar patrones de ventas, productos más vendidos, categorías con mayores ingresos y comportamiento de compra de los clientes

El proyecto sigue un flujo de trabajo que incluye limpieza de datos en Excel, análisis con SQL y, posteriormente, visualización mediante un dashboard interactivo

##  Preguntas de negocio

- ¿Cuántos pedidos cuentan como venta?
- ¿Cuál es el ingreso total y cómo evoluciona por mes?
- ¿Cuáles son los cinco productos más vendidos por unidades?
- ¿Qué categoría genera más ingresos?
- ¿Cuál es el ticket promedio por pedido?
- ¿Qué clientes realizan compras con mayor frecuencia?
- ¿Qué clientes no tienen pedidos que cuenten como venta?

##  Herramientas utilizadas
| Herramienta | Uso |
|---|---|
| Microsoft Excel 365 | Limpieza y preparación de datos |
| SQLite | Consultas y análisis de datos |
| DB Browser for SQLite | Ejecución de consultas SQL |
| GitHub | Control de versiones y documentación |
| Power BI o Looker Studio | Dashboard pendiente de desarrollo |

## Estructura del repositorio

```text
analisis-ventas-tienda/
├── datos/
│   ├── README.md
│   ├── clientes_limpio.csv
│   ├── pedidos_Limpio.csv
│   ├── productos.csv
│   └── detalle_pedidos.csv
├── excel/
│   ├── README.md
│   ├── clientes_limpio.xlsx
│   └── pedidos_Limpio.xlsx
├── sql/
│   ├── README.md
│   ├── crear_tablas.sql
│   └── consultas.sql
├── dashboard/
│   └── README.md
└── README.md
```

## Metodología

1. **Limpieza de datos en Excel:** revisión de duplicados, estandarización de ciudades e identificación de valores faltantes
2. **Preparación de la base de datos:** creación de las tablas e importación de los archivos CSV en SQLite
3. **Análisis con SQL:** consultas con `WHERE`, `GROUP BY`, `HAVING`, `JOIN`, funciones de agregación y subconsultas
4. **Visualización:** desarrollo futuro de un dashboard con indicadores y gráficos
5. **Conclusiones:** identificación de patrones y elaboración de recomendaciones basadas en los resultados

## Limpieza de datos

- Se identificaron y eliminaron tres registros duplicados en la tabla de clientes durante la limpieza en Excel
- Se estandarizaron los nombres de las ciudades
- Se identificaron valores faltantes en los campos de correo electrónico y ciudad de los clientes
- Se identificaron tres pedidos sin estado y se documentó su tratamiento para el análisis

##  Regla utilizada para el análisis de ventas

Para este proyecto, se consideran ventas los pedidos con estado `Entregado` o `Enviado`

Los pedidos `Cancelado`, `Pendiente` y `Sin estado` se excluyen de los cálculos de ingresos. Esta regla se aplica de manera consistente en las consultas SQL

##  Resultados del análisis

| Indicador | Resultado |
|---|---:|
| Pedidos registrados | 220 |
| Pedidos que cuentan como venta | 191 |
| Ingreso total de las ventas | 252,574.00 |
| Ticket promedio por pedido | 1,322.38 |

Los resultados corresponden a las consultas realizadas con los datos actuales del proyecto

## Dashboard

**Estado:** pendiente de desarrollo

En esta sección se incorporarán capturas y el enlace al dashboard cuando esté terminado

## ⚠️ Nota

Los datos utilizados pertenecen a un ejercicio de práctica con información ficticia y se emplean únicamente con fines educativos y de desarrollo de habilidades de análisis de datos

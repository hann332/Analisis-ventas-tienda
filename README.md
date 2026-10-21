# 📊 Análisis de ventas de una tienda online

**Proyecto de análisis de datos | Portafolio profesional**

## Descripción

Proyecto de análisis de datos de una tienda online ficticia para identificar patrones de ventas, productos más vendidos, categorías con mayores ingresos y comportamiento de compra de los clientes.

El proyecto sigue un flujo de trabajo que incluye limpieza de datos en Excel, análisis con SQL y visualización mediante un dashboard interactivo desarrollado en Looker Studio.

## Preguntas de negocio

- ¿Cuántos pedidos cuentan como venta?
- ¿Cuál es el ingreso total y cómo evoluciona por mes?
- ¿Cuáles son los cinco productos más vendidos por unidades?
- ¿Qué categoría genera más ingresos?
- ¿Cuál es el ticket promedio por pedido?
- ¿Qué clientes realizan compras con mayor frecuencia?
- ¿Qué clientes no tienen pedidos que cuenten como venta?

## Herramientas utilizadas

| Herramienta | Uso |
|---|---|
| Microsoft Excel 365 | Limpieza y preparación de datos |
| SQLite | Consultas y análisis de datos |
| DB Browser for SQLite | Ejecución de consultas SQL |
| GitHub | Control de versiones y documentación |
| Looker Studio | Creación del dashboard interactivo |

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
2. **Preparación de la base de datos:** creación de tablas e importación de los archivos CSV en SQLite
3. **Análisis con SQL:** consultas con `WHERE`, `GROUP BY`, `HAVING`, `JOIN`, funciones de agregación y subconsultas
4. **Visualización:** desarrollo de un dashboard en Looker Studio con indicadores clave y gráficos para explorar los resultados
5. **Interpretación de resultados:** análisis de patrones de ventas y oportunidades de mejora a partir de los datos

## Limpieza de datos

- Se identificaron y eliminaron tres registros duplicados en la tabla de clientes durante la limpieza en Excel
- Se estandarizaron los nombres de las ciudades
- Se identificaron valores faltantes en los campos de correo electrónico y ciudad de los clientes
- Se identificaron tres pedidos sin estado y se documentó su tratamiento para el análisis
- Se prepararon los datos para facilitar el análisis de ventas y su visualización

## Regla utilizada para el análisis de ventas

Para este proyecto, se consideran ventas los pedidos con estado `Entregado` o `Enviado`

Los pedidos `Cancelado`, `Pendiente` y `Sin estado` se excluyen de los cálculos de ingresos. Esta regla se aplica de manera consistente en los indicadores de ventas

## Resultados del análisis

| Indicador | Resultado |
|---|---:|
| Pedidos registrados | 220 |
| Pedidos que cuentan como venta | 191 |
| Ingreso total de las ventas | $252,574.00 |
| Ticket promedio por pedido | $1,322.38 |
| Unidades vendidas | 556 |

Los resultados corresponden a los datos utilizados en el análisis. Los indicadores se calculan considerando los pedidos que cumplen la regla de ventas definida para el proyecto
## Dashboard

El dashboard fue desarrollado en Looker Studio para presentar los principales indicadores y facilitar la exploración visual de los datos

Incluye las siguientes visualizaciones:

- Distribución de ingresos por categoría
- Top 5 de productos más vendidos por unidades
- Ingresos por ciudad
- Evolución mensual de ingresos

**https://datastudio.google.com/s/h3NefPOQCLs**

Para más información sobre las visualizaciones, consulta el archivo [`dashboard/README.md`](dashboard/README.md).

## Conclusión

Este proyecto integra limpieza y preparación de datos, consultas SQL y visualización en un dashboard interactivo. Permite analizar el desempeño comercial desde distintas perspectivas y demuestra la aplicación práctica de herramientas de análisis de datos para responder preguntas de negocio

## ⚠️ Nota

Los datos utilizados pertenecen a un ejercicio de práctica con información ficticia y se emplean únicamente con fines educativos y de desarrollo de habilidades de análisis de datos

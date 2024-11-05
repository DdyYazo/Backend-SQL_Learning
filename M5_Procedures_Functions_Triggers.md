<div align="center">

# **Procedimientos, Funciones y Triggers en SQL**

<p align="center">
  <img src="https://i.postimg.cc/FR1DmpyT/image-1.png" alt="Aquí va el texto del enlace" width="500">
</p>

</div>



# **Tabla de contenido**
- [**Procedimientos, Funciones y Triggers en SQL**](#procedimientos-funciones-y-triggers-en-sql)
- [**Tabla de contenido**](#tabla-de-contenido)
- [1. **Procedimientos en SQL**](#1-procedimientos-en-sql)
  - [1.1. ***¿Por qué las consultas son tan importantes?***](#11-por-qué-las-consultas-son-tan-importantes)
- [2. **Estructura basica de una consulta SQL (`SELECT`, `FROM`, `WHERE`, `GROUP BY`, `ORDER BY`, `HAVING`)**](#2-estructura-basica-de-una-consulta-sql-select-from-where-group-by-order-by-having)
  

# 1. **Procedimientos en SQL**

Los **procedimientos** son un conjunto de instrucciones que se ejecutan de manera secuencial y que se pueden reutilizar en cualquier parte de la aplicación. **Estos procedimientos se pueden almacenar en la base de datos y se pueden llamar desde cualquier parte de la aplicación.**

- **Los procedimientos se pueden dividir en 2 tipos:**

1. **Procedimientos almacenados**: Son procedimientos que se almacenan en la base de datos y se pueden llamar desde cualquier parte de la aplicación.

2. **Procedimientos anónimos**: Son procedimientos que se ejecutan una sola vez y no se almacenan en la base de datos.

- **Ventajas de los procedimientos almacenados:**
- **Reutilización de código**: Se puede llamar a un procedimiento almacenado desde cualquier parte de la aplicación.
- **Seguridad**: Se puede controlar el acceso a los datos.
- **Rendimiento**: Se pueden ejecutar más rápido que las consultas normales.
- **Mantenimiento**: Se puede modificar el procedimiento almacenado sin tener que modificar la aplicación.
- **Facilidad de uso**: Se puede llamar a un procedimiento almacenado desde cualquier parte de la aplicación.
- **Escalabilidad**: Se puede llamar a un procedimiento almacenado desde cualquier parte de la aplicación.

- **Desventajas de los procedimientos almacenados:**
- **Complejidad**: Los procedimientos almacenados pueden ser difíciles de entender.
- **Rendimiento**: Los procedimientos almacenados pueden ser más lentos que las consultas normales.
- **Mantenimiento**: Los procedimientos almacenados pueden ser difíciles de mantener.
- **Escalabilidad**: Los procedimientos almacenados pueden ser difíciles de escalar.
- **Seguridad**: Los procedimientos almacenados pueden ser difíciles de asegurar.


- **Ejemplo de un procedimiento almacenado:**

```sql
CREATE PROCEDURE spGetCustomers AS
BEGIN
    SELECT * FROM Customers
END
```


Las consultas o queries a una base de datos son una parte fundamental ya que esto podría salvar un negocio o empresa. Alrededor de las consultas a las bases de datos se han creado varias especialidades como ETL o transformación de datos, business intelligence e incluso machine learning.

<div align="center">

| **Especialidad** | **Descripción** |
| --- | --- |
| **ETL** | Correspondería al acrónimo de Extract **(Extraer)**, Transform **(Transformar)** y Load **(Cargar)**. **`ETL` hace parte del proceso de integración de datos**, mas aun es un componente muy importante que completa el resultado final en la relación de aplicaciones y sistemas. |
| **Business Intelligence** | Extracción y utilización de información de los negocios para tomar decisiones correctas. |
| **Machine Learning** | Es un tipo de inteligencia artificial que permite a las computadoras aprender sin ser programadas explícitamente. En este caso las bases de datos son fundamentales para **procesar datos**, **para encontrar patrones o soluciones nuevas** para acelerar el avance de un negocio.|

</div>

## 1.1. ***¿Por qué las consultas son tan importantes?***

1. Las empresas tienen gran necesidad de informacion correcta y oportuna.

2. Son una parte fundamental al tratar con bases de datos.

3. Se puede aprender a hacer consultas, mejorando nuestra habilidad en ello a lo largo del tiempo.

</div>

# 2. **Estructura basica de una consulta SQL (`SELECT`, `FROM`, `WHERE`, `GROUP BY`, `ORDER BY`, `HAVING`)**

Los queries **son la forma en la que estructuramos las preguntas que se harán a la base de datos. `Transforma preguntas en sintaxis.`** 

**Los query tiene** básicamente **2 partes**:

1. **SELECT**: Es la parte que se encarga de seleccionar los campos que se quieren mostrar en la consulta.

2. **FROM**: Es la parte que se encarga de seleccionar la tabla de la que se quieren mostrar los campos.

y tambien puede aparecer una tercera parte como **WHERE** que se encarga de filtrar los datos que se quieren mostrar.

> [!NOTE]
>
> Cuando se realiza un query con el **signo `*` se seleccionan todos los campos de la tabla sin filtrar campos.**

<div align="center">

| Sentencia | Descripción |
| --- | --- |
| **`SELECT`** | Selecciona los campos/columnas que se quieren mostrar en la consulta. |
| **`FROM`** | Selecciona la tabla de la que se quieren mostrar los campos. |
| **`WHERE`** | Condicion que deben cumplir/filtro que deben pasar los datos a obtener. **Es opcional, pero se suele utilizar**, ya que sino, se obtienen todos los datos sin filtrar ninguno. |
| **`GROUP BY`** | Agrupa los datos por un campo. |
| **`ORDER BY`** | Ordena los datos por un campo. |
| **`HAVING`** | Filtra los datos agrupados. |

</div>

<p align="center">
  <img src="https://i.postimg.cc/nLQvX2JZ/imagen-2024-06-26-184127880.png" alt="Aquí va el texto del enlace" width="450">
</p>
<p align="center">
  <strong>Ejemplo de estructura de una consulta SQL</strong>
</p>



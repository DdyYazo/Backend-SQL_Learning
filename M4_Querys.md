<div align="center">

# **Consultas SQL a una base de datos**

</div>

# **Tabla de contenido**
- [**Consultas SQL a una base de datos**](#consultas-sql-a-una-base-de-datos)
- [**Tabla de contenido**](#tabla-de-contenido)
- [1. **Importancia de las consultas SQL**](#1-importancia-de-las-consultas-sql)
  - [1.1. ***¿Por qué las consultas son tan importantes?***](#11-por-qué-las-consultas-son-tan-importantes)
- [2. **Funciones de agregación en una consulta SQL (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)**](#2-funciones-de-agregación-en-una-consulta-sql-count-sum-avg-min-max)
- [3. **Estructura basica de una consulta SQL (`SELECT`, `FROM`, `WHERE`, `GROUP BY`, `ORDER BY`, `HAVING`)**](#3-estructura-basica-de-una-consulta-sql-select-from-where-group-by-order-by-having)
      - [**\_Las consultas, se realizaran en la base de datos de *platziblog***](#_las-consultas-se-realizaran-en-la-base-de-datos-de-platziblog)
  - [3.1. ***Primera parte: `SELECT`***](#31-primera-parte-select)
    - [3.1.1. **Características de `SELECT`\_**](#311-características-de-select_)
    - [3.1.2. **Ejemplos de `SELECT`**](#312-ejemplos-de-select)
  - [3.2. ***Segunda parte: `FROM`***](#32-segunda-parte-from)
  - [3.3. ***\_Sentencias `JOIN`***](#33-_sentencias-join)
    - [3.3.1. **La forma correcta de entender la estructura de una sentencia `JOIN`**](#331-la-forma-correcta-de-entender-la-estructura-de-una-sentencia-join)
    - [3.3.2. **Ejm: `LEFT JOIN` con intersección y sin intersección**](#332-ejm-left-join-con-intersección-y-sin-intersección)
    - [3.3.3. **Ejm: `RIGHT JOIN` con intersección y sin intersección**](#333-ejm-right-join-con-intersección-y-sin-intersección)
    - [3.3.4. **Ejm: `INNER JOIN`**](#334-ejm-inner-join)
    - [3.3.5. **Ejm: `UNION` o `FULL OUTER JOIN`con intersección y sin intersección**](#335-ejm-union-o-full-outer-joincon-intersección-y-sin-intersección)
    - [3.3.6. **Ejm: `JOINS` con alias `AS`**](#336-ejm-joins-con-alias-as)
  - [3.4. ***Tercera parte: `WHERE`***](#34-tercera-parte-where)
    - [3.4.1. **Operadores de comparación (`=`, `>`, `<`, `>=`, `<=`, `!=`, `<>`) para filtrar a partir de cierto `numero` o `string`**](#341-operadores-de-comparación--------para-filtrar-a-partir-de-cierto-numero-o-string)
    - [3.4.2. **Operador `LIKE` para filtrar a partir de cierto texto**](#342-operador-like-para-filtrar-a-partir-de-cierto-texto)
    - [3.4.3. **Operador `BETWEEN` usando `AND` o `OR` para filtrar a partir de un rango de valores**](#343-operador-between-usando-and-o-or-para-filtrar-a-partir-de-un-rango-de-valores)
    - [3.4.4. **Negación de los operadores `LIKE` y `BETWEEN`**](#344-negación-de-los-operadores-like-y-between)
  - [3.5. ***\_Sentencia `WHERE` con valores nulos `IS NULL` y `IS NOT NULL` y operadores logicos `AND`, `OR` y `NOT`***](#35-_sentencia-where-con-valores-nulos-is-null-y-is-not-null-y-operadores-logicos-and-or-y-not)
    - [3.5.1. **`El valor `NULL\`**](#351-el-valor-null)
    - [3.5.2. **Operadores logicos `AND`,  `OR` y `NOT`**](#352-operadores-logicos-and--or-y-not)
    - [3.5.3. **Ejemplos de `WHERE` con valores nulos `IS NULL` y `IS NOT NULL` y operadores logicos `AND`, `OR` y `NOT`**](#353-ejemplos-de-where-con-valores-nulos-is-null-y-is-not-null-y-operadores-logicos-and-or-y-not)
    - [3.5.4. **Alterando la jerarquía de los operadores lógicos**](#354-alterando-la-jerarquía-de-los-operadores-lógicos)
  - [3.6. ***Cuarta parte: `GROUP BY`***](#36-cuarta-parte-group-by)
    - [3.6.1. **Ejemplos de `GROUP BY`**](#361-ejemplos-de-group-by)
  - [3.7.***Quinta parte: `ORDER BY` y `HAVING`***](#37quinta-parte-order-by-y-having)
    - [3.7.1. **Secuencias auxiliares en la sentencia `ORDER BY`**](#371-secuencias-auxiliares-en-la-sentencia-order-by)
    - [3.7.2. **Ejemplos de `ORDER BY`**](#372-ejemplos-de-order-by)
  - [3.7. ***Secuencia auxiliar \_`HAVING`***](#37-secuencia-auxiliar-_having)
    - [3.7.1. **Caso de ejemplo en el que se usa `HAVING`**](#371-caso-de-ejemplo-en-el-que-se-usa-having)
- [**\_Ejercicio de ejemplo de query utilizando toda la estructura de una consulta SQL**](#_ejercicio-de-ejemplo-de-query-utilizando-toda-la-estructura-de-una-consulta-sql)

# 1. **Importancia de las consultas SQL**

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

# 2. **Funciones de agregación en una consulta SQL (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)**

Las funciones de agregación son funciones que permiten hacer operaciones matemáticas en una columna de una tabla.

<div align="center">

| **Función** | **Descripción** |
| --- | --- |
| **`COUNT`** | Cuenta la cantidad de registros de una tabla. |
| **`SUM`** | Suma los valores de una columna. |
| **`AVG`** | Calcula el promedio de los valores de una columna. |
| **`MIN`** | Muestra el valor mínimo de una columna. |
| **`MAX`** | Muestra el valor máximo de una columna. |

</div>

# 3. **Estructura basica de una consulta SQL (`SELECT`, `FROM`, `WHERE`, `GROUP BY`, `ORDER BY`, `HAVING`)**

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



#### **_Las consultas, se realizaran en la base de datos de *[platziblog](./sql/platziblogQuerys.sql)***


## 3.1. ***Primera parte: `SELECT`***

La primera parte de una consulta es `SELECT`, que se encarga de seleccionar los campos que se quieren mostrar en la consulta.


### 3.1.1. **Características de `SELECT`_**
> [!NOTE]
>
> 1. **Un `SELECT` debe tener como mínimo un `FROM` para poder funcionar**. Cuando queremos traer todos los atributos de una tabla, **podemos usar el `(*)` para omitir colocar todos atributos al lado del `SELECT` uno por uno.**

2. **El nombre de las columnas o campos que estamos consultando puede ser cambiado utilizando `AS`** después del nombre del campo y poniendo el nuevo que queremos tener.

3. **Existe una función de `SELECT` para poder contar la cantidad de registros**. Esa información (un número) será el resultado del query.

### 3.1.2. **Ejemplos de `SELECT`**

```sql
--- Consulta para traer todos los campos de la tabla `posts`
SELECT * FROM posts;

--- Traer solo los campos titulo, fecha_publicacion y estatus
SELECT titulo, fecha_publicacion, estatus FROM posts;

--- Cambiar el nombre de los campos que se traen en la consulta

SELECT titulo AS encabezado, fecha_publicacion AS publicado, status AS estado FROM posts;

--- Contar la cantidad de registros de la tabla `posts`
SELECT COUNT(*) FROM posts;


--- Ponerle un alias a este nuevo dato COUNT(*)
SELECT COUNT(*) AS cantidad_registros FROM posts;

```

## 3.2. ***Segunda parte: `FROM`***

La segunda parte de una consulta es `FROM`, que se encarga de seleccionar la tabla de la que se quieren mostrar los campos.

- Un `FROM` **ayuda tambien a hacer sentencias y filtros complejos cuando se quieren unir tablas** a traves de un **proceso llamado `JOIN`**.

> [!NOTE]
>
> *Los diagramas de Venn* **son círculos que se cruzan en algún punto** para ver dónde está la intersección de conjuntos. **Ayudan mucho para poder formular la sentencia `JOIN` de la manera adecuada dependiendo del `query` que se quiere hacer.**

## 3.3. ***_Sentencias `JOIN`***

<p align="center">
  <img src="https://i.postimg.cc/HkcrgbcM/image-3.png" alt="Aquí va el texto del enlace" width="450">
</p>
<p align="center">
  <strong>Diagramas de Venn para `JOIN`</strong>
</p>

<div align="center">

| **Tipo de JOIN** | **Descripción** | **Tipo** |
| --- | --- | --- |
| **`LEFT JOIN`** | **(Con la intersección) <br> Trae todos los datos de la tabla A, que estén o no estén de la tabla B.** | **Diferencia** |
| **`LEFT JOIN`** | **(Sin la intersección) <br> Trae todos los datos de la tabla A, que no estén de la tabla B.** | **Diferencia** |
| **`RIGHT JOIN`** | **(Con la intersección) <br> Trae todos los datos de la tabla B, que estén o no estén de la tabla A.** | **Diferencia** |
| **`RIGHT JOIN`** | **(Sin la intersección) <br> Trae todos los datos de la tabla B, que no estén de la tabla A.** | **Diferencia** |
| **`INNER JOIN`** | **Solo arrastra valores que estén tanto en la Tabla A como en la Tabla B.** | **Intersección** |
| **`UNION`** | **Trae todos los datos de la tabla A y de la tabla B.** | **Unión Simétrica** |
| **`FULL JOIN`** | **Trae todos los datos de la tabla A y de la tabla B, pero solo información que no guarde relación una tabla con la otra.** | **Diferencia Simétrica** |

</div>

### 3.3.1. **La forma correcta de entender la estructura de una sentencia `JOIN`**

```sql
SELECT *
FROM tabla1
JOIN tabla2 ON tabla1.id = tabla2.id_table1;
```

> [!IMPORTANT]
>
> En la estructura de la consulta de los JOIN luego de la sentencia `ON` se coloca el campo que relaciona las tablas. **En este caso `tabla1.id = tabla2.id`**. Teniendo en cuenta que la tabla `tabla1` tiene un campo `id` y la tabla `tabla2` tiene un campo `id_table1` que es el que relaciona las tablas.

### 3.3.2. **Ejm: `LEFT JOIN` con intersección y sin intersección**

**`LEFT JOIN` con intersección**

- Consultar todos los usuarios tengan o no un post relacionado
  
```sql
SELECT * 
FROM usuarios
LEFT JOIN posts ON usuarios.id = posts.user_id;
```

**`LEFT JOIN` sin intersección**

- Consultar todos los usuarios que no tengan un post relacionado

```sql
SELECT *
FROM usuarios
LEFT JOIN posts ON usuarios.id = posts.user_id
WHERE posts.user_id IS NULL;
```

### 3.3.3. **Ejm: `RIGHT JOIN` con intersección y sin intersección**

**`RIGHT JOIN` con intersección**

- Consultar todos los post esten o no asociados con un usuario 

```sql
SELECT *
FROM usuarios
RIGHT JOIN posts ON usuarios.id = posts.user_id;
```

**`RIGHT JOIN` sin intersección**

- Consultar todos los post que no esten asociados con un usuario

```sql
SELECT *
FROM usuarios
RIGHT JOIN posts ON usuarios.id = posts.user_id
WHERE usuarios.id IS NULL;
```

### 3.3.4. **Ejm: `INNER JOIN`**

- Consultar todos los post que sí hayan hecho posts, con su respectivo post

```sql
SELECT *
FROM usuarios
INNER JOIN posts ON usuarios.id = posts.user_id;
```

### 3.3.5. **Ejm: `UNION` o `FULL OUTER JOIN`con intersección y sin intersección**

**`UNION` con intersección**

- Consultar todos los usuarios que hayan hecho posts y los que no

  - Esto se logra combinando el `LEFT JOIN` y el `RIGHT JOIN` con la sentencia `UNION`

```sql
SELECT *
FROM usuarios
LEFT JOIN posts ON usuarios.id = posts.user_id
UNION 
SELECT *
FROM usuarios
RIGHT JOIN posts ON usuarios.id = posts.user_id;
```

> [!NOTE]
>
> Algunos RDBMS permiten llevar a cabo la sentencia `UNION` con la sentencia `FULL OUTER JOIN` que es una combinación de `LEFT JOIN` y `RIGHT JOIN` en una sola sentencia.

**`FULL OUTER JOIN` con intersección**

```sql
SELECT *
FROM usuarios
FULL OUTER JOIN posts ON usuarios.id = posts.user_id;
```

**`FULL OUTER JOIN` sin intersección**

```sql
SELECT *
FROM usuarios
FULL OUTER JOIN posts ON usuarios.id = posts.user_id
WHERE usuarios.id IS NULL OR posts.user_id IS NULL;
```
### 3.3.6. **Ejm: `JOINS` con alias `AS`**

- En este ejemplo se consulta los cursos con su respectivo profesor trayendo los campos (`courses.id`, `courses.name`, `courses.teacher_id`, `teachers.name`) de las tablas `courses` y `teachers` respectivamente.

```sql
SELECT
  courses.id AS id,
  courses.name AS name,
  courses.teacher_id AS teacher_id,
  teachers.name AS teacher_name
FROM courses
LEFT JOIN teachers ON courses.teacher_id = teachers.id
WHERE courses.teacher_id IS NOT NULL;
```

## 3.4. ***Tercera parte: `WHERE`***

La tercera parte de una consulta es `WHERE`, que se encarga de filtrar los registros (filas de la tabla). 

### 3.4.1. **Operadores de comparación (`=`, `>`, `<`, `>=`, `<=`, `!=`, `<>`) para filtrar a partir de cierto `numero` o `string`**

Los **`operadores de comparación` permiten filtrar los datos de una tabla a partir de cierto número o cadena de texto que se quiera obtener.**

**Ejemplos de filtrado**

1. **Filtrar los post donde `id` sea `menor` a 50**

```sql
SELECT *
FROM posts
WHERE id < 50;
```

2. **Filtrar una cadena `string` en este caso donde el status sea `activo`**

```sql
SELECT *
FROM posts
WHERE status = 'activo';
```

3. **Filtrar los post donde el `status` sea diferente a `inactivo`**

```sql
SELECT *
FROM posts
WHERE status != 'inactivo';

-- O tambien usando el operator <>
SELECT *
FROM posts
WHERE status <> 'inactivo';
```



### 3.4.2. **Operador `LIKE` para filtrar a partir de cierto texto**

El operador **`LIKE` permite filtrar los datos de una tabla de los cuales conocemos sólo una parte de la información. Esta cadena de texto debe ir entre comillas simples y signos de porcentaje `%`** buscando una cadena de texto en cualquier parte de la columna.

Por ejemplo: **Filtrar los post donde el `titulo` contenga la palabra `escandalo`**

```sql
SELECT *
FROM posts
WHERE titulo LIKE '%escandalo%';
```

> [!NOTE]
>
> Los signos porcentuales `%` indican que hay algo más, **si se quita, por ejemplo, el del final (quedando `‘%escandalo’`), se estaria buscando aquellos `titulos` que terminen con la palabra `‘escandalo’`,** ya que se esta indicando que despues de esta palabra **no hay nada mas**.

### 3.4.3. **Operador `BETWEEN` usando `AND` o `OR` para filtrar a partir de un rango de valores**

El operador **`BETWEEN` permite filtrar los datos de una tabla a partir de un rango de valores usando tambien el operador `AND` o `OR`**.

Por ejemplo: 
1. **Filtrar los post donde la `fecha_publicacion` esté entre `2019-01-01` y `2019-01-10`**

```sql
SELECT *
FROM posts
WHERE fecha_publicacion BETWEEN 2019 AND 2020;
```

2. **Filtrar los post donde la `fecha_publicacion` esté entre el año `2019` y `2020`**

```sql
SELECT *
FROM posts
WHERE YEAR(fecha_publicacion) BETWEEN '2019' AND '2020';
```

3. **Filtrar los post donde el mes de `fecha_publicacion` sea `enero`**

```sql
SELECT *
FROM posts
WHERE MONTH(fecha_publicacion) = '01';
```
### 3.4.4. **Negación de los operadores `LIKE` y `BETWEEN`**

> [!IMPORTANT]
>
> **los operadores `LIKE` y `BETWEEN` tambien pueden ser negados con `NOT LIKE` y `NOT BETWEEN` respectivamente.**

Por ejemplo:

1. **Filtrar los post donde el `titulo` no contenga la palabra `escandalo`**

```sql
SELECT *
FROM posts
WHERE titulo NOT LIKE '%escandalo%';
```

2. **Filtrar los post donde la `fecha_publicacion` no esté entre `2019-01-01` y `2019-01-10`**

```sql
SELECT *
FROM posts
WHERE fecha_publicacion NOT BETWEEN '2019-01-01' AND '2019-01-10';
```

## 3.5. ***_Sentencia `WHERE` con valores nulos `IS NULL` y `IS NOT NULL` y operadores logicos `AND`, `OR` y `NOT`***

### 3.5.1. **`El valor `NULL`** 

Generalmente en una tabla `NULL` es su valor por defecto cuando no se le asigna algún valor a un campo. 

- La sintaxis para hacer **busquedas de datos `NULL` es `IS NULL` y `IS NOT NULL` si son valores nulos o no nulos respectivamente.**


### 3.5.2. **Operadores logicos `AND`,  `OR` y `NOT`**
 
Para hacer una consulta `WHERE` mas robusta se pueden usar los operadores `AND` y `OR` para hacer consultas mas complejas. 

- **`AND` se usa para que se cumplan todas las condiciones que se están poniendo en la consulta.**
  
- **`OR` se usa para que se cumpla al menos una de las condiciones que se están poniendo en la consulta.**

- **`NOT` se usa para negar una condición.**

### 3.5.3. **Ejemplos de `WHERE` con valores nulos `IS NULL` y `IS NOT NULL` y operadores logicos `AND`, `OR` y `NOT`**

1. **Filtrar los posts donde el `id` del `usuario` sea `NOT NULL`**

```sql
SELECT *
FROM posts
WHERE user_id IS NOT NULL;
```

2. **Filtrar los posts donde el `id` del `usuario` sea `NULL`**

```sql
SELECT * 
FROM posts
WHERE user_id IS NULL;
```

> [!NOTE]
> 
> En el siguiente ejemplo se aplican `AND` y `OR`. **Estos se pueden concatenar cuantas veces se necesite para obtener un resultado más específico.**

3. **Filtrar los *`posts`* donde el `id` del *`usuario`* sea `NULL` y el `id` del `post` sea `menor` a `50` y el `categoria_id` sea `igual` a `2` y el `status` sea `activo`**

```sql
SELECT *
FROM posts
WHERE user_id IS NULL
AND id < 50
AND categoria_id = 2
AND status <> 'inactivo';
```

4. **Filtrar los *`posts` donde el `status` no sea `activo` y el `id` del `post` no sea `mayor` a `60` y el `año` de la `fecha_publicacion` no sea `2025`**


```sql
SELECT * 
FROM posts 
WHERE NOT estatus = 'activo'
AND NOT id > 60
AND NOT YEAR(fecha_publicacion) <> 2025;
```

### 3.5.4. **Alterando la jerarquía de los operadores lógicos**

> [!IMPORTANT]
>
> Cuando se emplean los operadores logicos en una misma consulta, **Se ejecutan primero los `AND` y luego los `OR`, segun la jerarquía de operadores.** Sin embargo se pueden usar paréntesis para cambiar el orden de ejecución.

Por ejemplo:

```sql
SELECT *
FROM posts 
WHERE titulo like "%se%" 
AND (id < 60 OR estatus = 'inactivo')
```

Es diferente a:

```sql
SELECT *
FROM posts 
WHERE titulo like "%se%" 
AND id < 60 
OR estatus = 'inactivo'
```

El primer query a diferencia del segundo, **se ejecutará primero el `OR` y luego el `AND`, ya que el parentesis indica que se ejecute primero el `OR` y luego el `AND`.**


## 3.6. ***Cuarta parte: `GROUP BY`***

La cuarta parte de una consulta es `GROUP BY`, tiene que ver con agrupaciones de datos. Indica a la base de datos que agrupe los datos que cumplan con una condición.

### 3.6.1. **Ejemplos de `GROUP BY`**

1. **Agrupar la cantidad de posts por `status`**

```sql
SELECT status, COUNT(*) AS cantidad_posts
FROM posts
GROUP BY status;
```

2. **Agrupar la cantidad de posts por el año de `fecha_publicacion`**

```sql
SELECT YEAR(fecha_publicacion) AS año, COUNT(*) AS cantidad_posts
FROM posts
GROUP BY año;
```

3. **Agrupar la cantidad de posts por el nombre del mes de `fecha_publicacion`**

```sql
SELECT MONTHNAME(fecha_publicacion) AS mes, COUNT(*) AS cantidad_posts
FROM posts
GROUP BY mes;
```

4. **Agrupar la cantidad de posts por el `status` y el nombre del mes de `fecha_publicacion`**

```sql
SELECT status, MONTHNAME(fecha_publicacion) AS mes, COUNT(*) AS cantidad_posts
FROM posts
GROUP BY status, mes;
```

## 3.7.***Quinta parte: `ORDER BY` y `HAVING`***

La quinta parte de una consulta es `ORDER BY`, que se encarga de ordenar los datos de una tabla por un campo específico mediante una **`secuencia auxiliar`**.

### 3.7.1. **Secuencias auxiliares en la sentencia `ORDER BY`**

<div align="center">

| **Secuencia Auxiliar** | **Descripción** |
| --- | --- |
| **`ASC`** | **Ordena los datos de manera ascendente.** |
| **`DESC`** | **Ordena los datos de manera descendente.** |
| **`LIMIT`** | **Limita la cantidad de registros que se quieren mostrar.** |

</div>

> [!NOTE]
>
> **En `SQL SERVER` no funciona el `LIMIT`, en su lugar se usa el `TOP`**
> - Por otro lado, **las consultas por defecto se muestran en orden ascendente, por lo que no es necesario colocar `ASC` al final de la sentencia `ORDER BY`.**

### 3.7.2. **Ejemplos de `ORDER BY`**

1. **Ordenar los posts por la `fecha_publicacion` de manera `ascendente`**

```sql
SELECT *
FROM posts
ORDER BY fecha_publicacion ASC;
```

2. **Ordenar los posts por la `fecha_publicacion` de manera `descendente`**

```sql
SELECT *
FROM posts
ORDER BY fecha_publicacion DESC;
```

**LO MISMO SE PUEDE HACER CON CADENAS DE TEXTO**

3. **Ordenar los posts por el `titulo` de manera `ascendente`**

```sql
SELECT *
FROM posts
ORDER BY titulo ASC;
```

4. **Ordenar los posts por el `titulo` de manera `descendente`**

```sql
SELECT *
FROM posts
ORDER BY titulo DESC;
```

**TAMBIEN LUEGO DE ORDENAR LOS DATOS SE PUEDE ESTABLECER UN LIMITE DE REGISTROS A MOSTRAR**

5. **Ordenar los posts por el `usuario_id` de manera `ascendente` y mostrar solo los primeros `10` registros**

```sql
SELECT *
FROM posts
ORDER BY user_id ASC
LIMIT 10;
```

**AHORA AGRUPAR VARIOS CAMPOS Y ORDENARLOS EN UNA SOLA CONSULTA**

1. **Agrupar los posts por el mes de `fecha_publicacion` y el `status`, mostrando tambien la cantidad de posts por mes y status, ordenados por el mes.

```sql
SELECT MONTHNAME(fecha_publicacion) AS mes, status, COUNT(*) AS cantidad_posts
FROM posts
GROUP BY mes, status
ORDER BY mes;
```

## 3.7. ***Secuencia auxiliar _`HAVING`***

La secuencia auxiliar `HAVING` se utiliza para filtrar los datos agrupados. **Es similar a `WHERE`, pero se usa después de `GROUP BY` y antes de `ORDER BY`.**

> [!IMPORTANT]
> No es tan común usar `HAVING` en las consultas, pero es útil cuando se quiere filtrar datos agrupados.

### 3.7.1. **Caso de ejemplo en el que se usa `HAVING`**

Si por ejemplo, siguiendo el ejemplo anterior donde se agrupan los posts por el mes de `fecha_publicacion` y el `status`, **se quiere filtrar la cantidad de posts que sean `mayor` a `10` lo mas común seria usar un `WHERE`**

```sql
SELECT MONTHNAME(fecha_publicacion) AS mes, status, COUNT(*) AS cantidad_posts
FROM posts
WHERE cantidad_posts > 10
GROUP BY mes, status
ORDER BY mes;
```

Pero esto generaría un error, ya q**ue `WHERE` no puede filtrar datos agrupados por ende no reconocería la columna `cantidad_posts` ya que este se genera posterior al `GROUP BY`** y el `WHERE` no funciona fuera del `GROUP BY`. Para esto se usa `HAVING`.

```sql
SELECT MONTHNAME(fecha_publicacion) AS mes, status, COUNT(*) AS cantidad_posts
FROM posts
GROUP BY mes, status
HAVING cantidad_posts > 10
ORDER BY mes;
```

> [!NOTE]
>
> **`HAVING` se usa para filtrar datos agrupados, mientras que `WHERE` se usa para filtrar datos no agrupados.**

Por otro lado, se puede evitar el uso de `HAVING`  **usando una subconsulta**.

```sql
SELECT * FROM (
  SELECT MONTHNAME(fecha_publicacion) AS mes, status, COUNT(*) AS cantidad_posts
  FROM posts
  GROUP BY mes, status
  ORDER BY mes) AS subconsulta
WHERE subconsulta.cantidad_posts > 10;
```

# **_Ejercicio de ejemplo de query utilizando toda la estructura de una consulta SQL**

1. Hay dos tablas:

   - **`courses`:** `id`, `name`, `teacher_id`, `n_reviews`.

   - **`teachers`:** `id`, `name`.

- (De lo anterior se sabe que **`courses.teacher_id`** y **`teachers.id`** son lo mismo, por lo que se puede hacer un **`INNER JOIN`** haciendo coincidir estos dos valores) 
```sql
FROM teachers 
INNER JOIN courses ON teachers.id = courses.teacher_id 
```

2. **`SELECCIONAR`** la **`SUMA`** total de `n_reviews` en todos los cursos por cada profesor y tambien renombrar esta columna como **`total_reviews`**.
   - Ademas, de renombrar la columna **`teachers.name`** como **`teacher`**. 
```sql	
SELECT teachers.name AS teacher, SUM (courses.n_reviews) AS total_reviews
```

3. **`AGRUPAR`** por profesores para luego **`ORDENAR`**: 

```sql
GROUP BY courses.teacher_id
```

4. **`ORDENAR`** de forma **`DESCENDENTE`** el total de reviews (`total_reviews`) que encontramos anteriormente: 

```sql
ORDER BY total_reviews DESC
```

5. Por ultimo, las reviews deben ser mayores a 0. Lo hacemos con **`HAVING`** ya que es una coluimna que se genera despues: 

```sql
HAVING total_reviews > 0
```
Con todo esto, la consulta completa sería:

```sql
SELECT teachers.name AS teacher, SUM(courses.n_reviews) AS total_reviews
FROM teachers 
INNER JOIN courses ON teachers.id = courses.teacher_id -- Combinar las dos tablas para obtener el name del profesor
GROUP BY courses.teacher_id -- Ordenar la agrupación de profesores
HAVING total_reviews > 0 -- Ningun profesor debe tener 0 reviews debe tener al menos 1
ORDER BY total_reviews DESC;
```
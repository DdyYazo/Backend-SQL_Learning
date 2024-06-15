<div align="center">

# Introducción a las bases de datos relacionales

</div>

# Tabla de contenido
- [Introducción a las bases de datos relacionales](#introducción-a-las-bases-de-datos-relacionales)
- [Tabla de contenido](#tabla-de-contenido)
- [1. `¿Qué son entidades y atributos?`](#1-qué-son-entidades-y-atributos)
  - [1.1. *`Entidades`*](#11-entidades)
    - [- Ejemplo de entidad en bases de datos](#--ejemplo-de-entidad-en-bases-de-datos)
  - [1.2. *`Tipos de entidades`*](#12-tipos-de-entidades)
  - [1.3. *`Atributos`*](#13-atributos)
  - [1.4. *`Cómo representar entidades en una base de datos`*](#14-cómo-representar-entidades-en-una-base-de-datos)
- [2. `Relaciones entre entidades`](#2-relaciones-entre-entidades)
  - [2.1. *`Tipos de cardinalidades`*](#21-tipos-de-cardinalidades)
    - [- Imagenes de las cardinalidades](#--imagenes-de-las-cardinalidades)
  - [2.2. *`Resumen de las cardinalidades`*](#22-resumen-de-las-cardinalidades)
  - [](#)
- [3. `Diagrama entidad relación (DER)`](#3-diagrama-entidad-relación-der)
    - [\_Diagrama entidad relación de platziblog](#_diagrama-entidad-relación-de-platziblog)
- [4. `Tipos de datos y constraints`](#4-tipos-de-datos-y-constraints)
  - [4.1. `Tipos de datos`](#41-tipos-de-datos)
    - [1. **Datos de tipo `Texto`**](#1-datos-de-tipo-texto)
    - [2. **Datos de tipo `Números`**](#2-datos-de-tipo-números)
    - [3. **Datos de tipo `Fecha/hora`**](#3-datos-de-tipo-fechahora)
    - [4. **Datos de tipoLógicos**](#4-datos-de-tipológicos)
  - [4.2. `Constraints (Restricciones)`](#42-constraints-restricciones)
- [5. `Normalización de bases de datos`](#5-normalización-de-bases-de-datos)
    - [5.1. `Dependencias en la normalización`](#51-dependencias-en-la-normalización)
  - [5.2. `Formas de normalización`](#52-formas-de-normalización)
    - [- Ejemplo aplicando las Formas de normalización\`](#--ejemplo-aplicando-las-formas-de-normalización)
    - [- Video de guia para entender un poco mas a detalle la Normalización de bases de datos](#--video-de-guia-para-entender-un-poco-mas-a-detalle-la-normalización-de-bases-de-datos)

# 1. `¿Qué son entidades y atributos?`

En bases de datos, una entidad es la representación de un objeto o concepto del mundo real que se describe en una base de datos. Las entidades se describen en la estructura de la base de datos empleando un modelo de datos.

## 1.1. *`Entidades`*

Una entidad es algo similar a un objeto (programación orientada a objetos) y representa algo en el mundo real, incluso algo abstracto. Tienen atributos que son las cosas que los hacen ser una entidad y por convención se ponen en plural.

### - Ejemplo de entidad en bases de datos

En la imagen puedes observar como ejemplo que la enidad Laptops posee diferentes atributos como color, pantalla, año, modelo, etc.

<p align="center">
  <img src="https://i.postimg.cc/SRs5kFX8/imagen-2024-06-02-172551749.png" alt="Aquí va el texto del enlace" width="400">
</p>
<p align="center">
  <span align="center"><strong>Ejemplo de modelo entidad relación</strong></span>
</p>

## 1.2. *`Tipos de entidades`*

| Tipo de entidad | Descripción |
| --- | --- |
| **Entidades fuertes** | Son aquellas que existen por sí mismas y no dependen de otra entidad para existir. Por ejemplo, una persona. |
| **Entidades débiles** | Son aquellas que dependen de otra entidad para existir. Por ejemplo, un detalle de una factura. |
| **Identidades debiles por identidad** | Son aquellas que no tienen una llave primaria propia y dependen de otra entidad para existir. |
| **Identidades debiles por existencia** | Son aquellas que tienen una llave primaria propia pero dependen de otra entidad para existir. |


## 1.3. *`Atributos`*

**Son las características o propiedades que describen a la entidad** (se encierra en un óvalo). Los atributos se componen de:

| Atributo | Descripción |
| --- | --- |
| **Atributos compuestos** | Son aquellos que se dividen en subpartes más pequeñas. Por ejemplo, la dirección de una persona se puede dividir en calle, número, colonia, ciudad, estado y país. |
| **Atributos de llave** | Son aquellos que identifican de manera única a una entidad. Por ejemplo, el número de empleado de una persona. |

## 1.4. *`Cómo representar entidades en una base de datos`*

Existen varios tipos de notaciones para los modelos entidad relacionamiento. Chen es uno de los más utilizados para diagramar lógicamente la base de datos. 

<p align="center">
  <img src="https://i.postimg.cc/KjHWYqLW/imagen-2024-06-02-172604895.png" alt="Aquí va el texto del enlace" width="450">
</p>
<p align="center">
  <span><strong>Modelo entidad relación de Chen</strong></span>
</p>


# 2. `Relaciones entre entidades`

Las **relaciones** nos permiten ligar o unir nuestras diferentes entidades y se representan con rombos. Por convención se definen a través de verbos.

## 2.1. *`Tipos de cardinalidades`*
Las relaciones tienen una propiedad llamada **`cardinalidad`** y tiene que ver con números. Cuántos de un lado pertenecen a cuántos del otro lado:


| Cardinalidad | Descripción |
| --- | --- |
| **Uno a uno `(1:1)`** | Un registro de una tabla se relaciona con un solo registro de otra tabla. |
| **Uno a uno `(0:1)` u `opcional`** | Un registro de una tabla se relaciona con un solo registro de otra tabla, pero no todos los registros de la tabla 1 tienen una relación con la tabla 2. |
| **Uno a muchos `(1:N)`** | Un registro de una tabla se relaciona con varios registros de otra tabla. |
| **Uno a mucho `(0:N)` u `opcional`** | Un registro de una tabla se relaciona con varios registros de otra tabla, pero no todos los registros de la tabla 1 tienen una relación con la tabla 2. |
| **Muchos a muchos `(N:M)`** | Varios registros de una tabla se relacionan con varios registros de otra tabla. |

### - Imagenes de las cardinalidades
|  |  |
| --- | --- |
| <img aling="center" src="https://i.postimg.cc/BvdNwQtq/imagen-2024-06-14-183325235.png" width="250px"> | <img aling="center" src="https://i.postimg.cc/L4VBjVk4/imagen-2024-06-14-184213240.png" width="250px"> |
| <img aling="center" src="https://i.postimg.cc/28cQK8XP/imagen-2024-06-14-184402470.png" width="250px">  | <img aling="center" src="https://i.postimg.cc/Lsfj5k6p/imagen-2024-06-14-184422309.png" width="250px">  |
| <img aling="center" src="https://i.postimg.cc/BvdNwQtq/imagen-2024-06-14-183325235.png" width="250px">  |  |

> [!NOTE]
>	
> La cardinalidad `N:M` es la más compleja de todas, ya que **requiere de una tabla intermedia** para poder relacionar las dos tablas

<p align="center">
  <img src="https://i.postimg.cc/BvdNwQtq/imagen-2024-06-14-183325235.png" alt="Aquí va el texto del enlace" width="400">
</p>
<p align="center">
  <span align="center"><strong>Cardinalidad N:M</strong></span>
</p>


## 2.2. *`Resumen de las cardinalidades`*
 
<p align="center">
  <img src="https://i.postimg.cc/vmCLDJSf/imagen-2024-06-02-175728922.png" alt="Aquí va el texto del enlace" width="450">
</p>
<p align="center">
  <span align="center"><strong>Resumen de las notaciones cardinales</strong></span>
</p>
--- 


# 3. `Diagrama entidad relación (DER)`

**El diagrama entidad relación es una herramienta que nos permite representar las entidades, atributos y relaciones de una base de datos**. Es una representación gráfica de la estructura de una base de datos y esta relacionado estrechamente con lo que se mencionó anteriormente.

### _[Diagrama entidad relación](./platziBlog_Models.drawio) de platziblog

--- 

# 4. `Tipos de datos y constraints`

El diagrama físico es una representación de la estructura de la base de datos en un motor de base de datos específico. **En este diagrama se definen los tipos de datos y constraints que se utilizarán en la base de datos.**

## 4.1. `Tipos de datos`

Los tipos de datos son las características que definen el tipo de información que se almacenará en una columna de una tabla. Algunos de los tipos de datos más comunes son:

### 1. **Datos de tipo `Texto`** 

| Tipo de dato | Descripción |
| --- | --- |
| **`CHAR(n)`** | Utilizado para almacenar cadenas de texto de longitud fija. |
| **`VARCHAR(n)`** | Utilizado para almacenar cadenas de texto de longitud variable (la mejor práctica es no exceder los 255 caracteres). |
| **`TEXT`** | Utilizado para almacenar cadenas de texto de longitud variable de gran tamaño. |

### 2. **Datos de tipo `Números`**

| Tipo de dato | Descripción |
| --- | --- |
| **`INTEGER`** | Utilizado para almacenar números enteros. |
| **`BEGINT`** | Utilizado para almacenar números enteros de 8 bits. |
| **`SMALLINT`** | Utilizado para almacenar números enteros de 16 bits. |
| **`DECIMAL(n,s)`** | Utilizado para almacenar números decimales (primero se agrega el n para la cantidad de dígitos y luego la s para la cantidad de decimales). |
| **`NUMERIC(n,s)`** | Utilizado para almacenar números decimales. |

### 3. **Datos de tipo `Fecha/hora`**

| Tipo de dato | Descripción |
| --- | --- |
| **`DATE`** | Utilizado para almacenar fechas. |
| **`TIME`** | Utilizado para almacenar horas. |
| **`DATETIME`** | Utilizado para almacenar fechas y horas. |
| **`TIMESTAMP`** | Utilizado para almacenar fechas y horas con precisión de segundos. |
   
### 4. **Datos de tipoLógicos** 
   
| Tipo de dato | Descripción |
| --- | --- |
| **`BOOLEAN`** | Utilizado para almacenar valores lógicos (verdadero o falso). | 

## 4.2. `Constraints (Restricciones)`

> [!IMPORTANT]
> 
> Los constraints **son reglas que se aplican a las columnas de una tabla para garantizar la integridad de los datos.** Algunos de los constraints más comunes son:

| Constraint | Descripción |
| --- | --- |
| **`NOT NULL`** | Indica que la columna no puede tener valores nulos (Por ejemplo, un nombre). |
| **`UNIQUE`** | Indica que los valores de la columna deben ser únicos y no se repitan (Por ejemplo, un número de empleado). |
| **`PRIMARY KEY`** | Indica que la columna es la llave primaria de la tabla (Por ejemplo, un ID). |
| **`FOREIGN KEY`** | Indica que la columna es una llave foránea que hace referencia a otra tabla (Por ejemplo, un ID de otra tabla). |
| **`CHECK`** | Indica que los valores de la columna deben cumplir una condición o regla (Por ejemplo, un rango de edad). |
| **`DEFAULT`** | Indica el valor por defecto de la columna (Por ejemplo, una fecha de registro). |
| **`INDEX`** | Indica que la columna es un índice (Por ejemplo, un índice de búsqueda), sin embargo la desventaja es que puede ralentizar la inserción de datos. |

--- 


# 5. `Normalización de bases de datos`

La normalización de bases de datos es un proceso que se utiliza para organizar una base de datos relacional en una estructura lógica y eficiente. 

> [!IMPORTANT]
> 
> **Al normalizar evitanmos:**
> - **`La redundancia de los datos`:** repetición de datos en un sistema.
> 
> - **`Anomalías de actualización`:** Inconsistencias de los datos como resultado de datos redundantes y actualizaciones parciales.
> 
> - **`Anomalías de borrado`:** Pérdidas no intencionadas de datos debido a que se han borrado otros datos.
> 
> - **`Anomalías de inserción`:** Imposibilidad de adicionar datos en la base de datos debido a la ausencia de otros datos.



Es importante tener en cuenta dos conceptos clave en la normalización de bases de datos:
### 5.1. `Dependencias en la normalización`

| Dependencia Funcional | Dependencia Transitiva |
| --- | --- |
| Se da cuando **un atributo determina el valor de otro atributo.** | Se da cuando **un atributo determina el valor de otro atributo a través de un tercero.**  |
| <img aling="center" src="https://i.postimg.cc/KzPRLFWq/imagen-2024-06-14-223841209.png" width="140px"> | <img aling="center" src="https://i.postimg.cc/Y080nRMQ/imagen-2024-06-14-223929774.png" width="155px"> |

## 5.2. `Formas de normalización`

| Formas normales | Descripción |
| --- | --- |
| **Primera forma normal (1FN)** | **Atributos atómicos (Sin campos repetidos)** <br> Para un atributo sólo debe existir una columna, si surge la necesidad, no se debe crear otra columna (Esto porque si crees que con n columnas es suficiente, tarde o temprano necesitarás n+1) Sencillamente se añade un identificador y posteriormente se divide por filas. |
| **Segunda forma normal (2FN)** | **Cumple 1FN y cada campo de la tabla debe depender de una clave única.** <br> **Todos los atributos que no forman parte de la clave principal o llave primaria tienen `dependencia funcional` completa de ella**. Esto nos ayuda a tener datos más organizados, y distinguir entre si un atributo hace parte de una entidad, o si son dos entidades separadas relacionadas estrechamente. |
| **Tercera forma normal (3FN)** | **Cumple 1FN, 2FN y los campos que no son clave no deben tener dependencias (eliminar los atributos multivaluados).** <br> Sí un dato de un atributo esta directamente relacionado con otro, para que al editar un dato, no deba editar otro campo y haya espacio a errores (porque alguno “se me olvidó”), se separa en una tabla diferente de esta manera la actualización de los datos es más limpia. |
| **Cuarta forma normal (4FN)** | **Cumple 1FN, 2FN, 3FN y los campos multivaluados se identifican por una clave única.** <br> Esta es usualmente útil cuándo se tiene una cardinalidad N:M, de muchos a muchos, y simplemente se crea una tabla especial para relacionar las claves únicas de las entidades.|

### - Ejemplo aplicando las Formas de normalización` 

En la siguiente tabla, se puede ver un campo repetido que en este caso corresponde a **materia**, al ser el campo `materia_1` y `materia_2` repetidos, cumplen la misma naturaleza.

<p align="center">
  <img src="https://i.postimg.cc/QtLvP71B/imagen-2024-06-10-183720628.png" alt="Aquí va el texto del enlace" width="450" >
</p>
<p align="center">
  <span align="center"><strong>Tabla sin normalizar</strong></span>
</p>

1. Al aplicar la primera forma normal, se agrupan los campos de `materia_1` y `materia_2` en un solo campo llamado `materia` **para evitar la redundancia de datos**.

<p align="center">
  <img src="https://i.postimg.cc/vZcjZhvg/imagen-2024-06-10-183958600.png" alt="Aquí va el texto del enlace" width="450" >
</p>
<p align="center">
  <span align="center"><strong>Tabla normalizada en 1FN</strong></span>
</p>

2. Al momento de normalizar la tabla anterior aplicando la **primera forma normal (1FN)**, se puede observar que al designar un `id` a los alumnos a partir de las materias que esta viendo, el `id` se duplica, por lo que esto **puede generar redundancia de datos al ser una relación de muchos a muchos (`N:M`)**, para ello se aplica la segunda forma normal, creando una tabla reservada para las **materias** donde se asigna un `id` a cada materia y se relaciona con el `id` del alumno.

<p align="center">
  <img src="https://i.postimg.cc/xC03cTSx/imagen-2024-06-10-185052390.png" alt="Aquí va el texto del enlace" width="400" >
</p>
<p align="center">
  <span align="center"><strong>Tabla normalizada en 2FN</strong></span>
</p>

3. Dada la Segunda Forma, tanto `nivel_curso`, como `nombre_curso`, no generan un conflicto inicial, como si Io hacia **materias**, ya que **eran dos por cada estudiante y ademås se repetian los campos.**
En este caso es diferente, a cada **alumno** le corresponde un único `nivel` y `nombre de curso`, aun asi, los cursos no son intrinsecos de los estudiantes (es decir **no son propios por naturaleza, es algo externo**), por ejemplo: **La maestria puede ser de cualquier alumno**, no solo de Juanito.

<p align="center">
  <img src="https://i.postimg.cc/63MTzz9n/imagen-2024-06-14-230640576.png" alt="Aquí va el texto del enlace" width="400" >
</p>
<p align="center">
  <span align="center"><strong>Tabla normalizada en 3FN</strong></span>
</p>

4. En la cuarta forma normal, todo se deja de forma unica, y se relaciona a través de una tabla intermedia, en este caso, se relaciona a través de la tabla `materias por alumno` que relaciona a los alumnos con las materias y a los cursos con las materias.

<p align="center">
  <img src="https://i.postimg.cc/rpFD4vTM/imagen-2024-06-14-231347631.png" alt="Aquí va el texto del enlace" width="400" >
</p>
<p align="center">
  <span align="center"><strong>Tabla normalizada en 4FN</strong></span>
</p>

### - Video de guia para entender un poco mas a detalle la [Normalización de bases de datos](https://youtu.be/m7kpSO6kqY8)

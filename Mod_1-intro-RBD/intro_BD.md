<div align="center">

# Introducción a las bases de datos relacionales

</div>

# Tabla de contenido
- [Introducción a las bases de datos relacionales](#introducción-a-las-bases-de-datos-relacionales)
- [Tabla de contenido](#tabla-de-contenido)
- [1. `¿Qué son entidades y atributos?`](#1-qué-son-entidades-y-atributos)
  - [1.1. `Entidades`](#11-entidades)
    - [Ejemplo de entidad en bases de datos](#ejemplo-de-entidad-en-bases-de-datos)
  - [1.2. `Atributos`](#12-atributos)
  - [1.3. `Tipos de entidades`](#13-tipos-de-entidades)
  - [1.4. `Cómo representar entidades en una base de datos`](#14-cómo-representar-entidades-en-una-base-de-datos)
  - [](#)
- [2. `Relaciones entre entidades`](#2-relaciones-entre-entidades)
  - [2.1. Uno a uno `(1:1)`](#21-uno-a-uno-11)
  - [2.2. uno a uno `(0:1)` u `opcional`](#22-uno-a-uno-01-u-opcional)
  - [2.3. Uno a muchos `(1:N)`](#23-uno-a-muchos-1n)
  - [2.4. Uno a mucho `(0:N)` u `opcional`](#24-uno-a-mucho-0n-u-opcional)
  - [2.5. Muchos a muchos `(N:M)`](#25-muchos-a-muchos-nm)
  - [Resumen de las cardinalidades](#resumen-de-las-cardinalidades)
  - [](#-1)
- [3. `Diagrama entidad relación (DER)`](#3-diagrama-entidad-relación-der)
  - [El diagrama entidad relación es una herramienta que nos permite representar las entidades, atributos y relaciones de una base de datos. Es una representación gráfica de la estructura de una base de datos y esta relacionado estrechamente con lo que se mencionó anteriormente.](#el-diagrama-entidad-relación-es-una-herramienta-que-nos-permite-representar-las-entidades-atributos-y-relaciones-de-una-base-de-datos-es-una-representación-gráfica-de-la-estructura-de-una-base-de-datos-y-esta-relacionado-estrechamente-con-lo-que-se-mencionó-anteriormente)
- [4. `Diagrama Fisico: Tipos de datos y constraints`](#4-diagrama-fisico-tipos-de-datos-y-constraints)
  - [4.1. `Tipos de datos`](#41-tipos-de-datos)
  - [4.2. `Constraints (Restricciones)`](#42-constraints-restricciones)

# 1. `¿Qué son entidades y atributos?`

En bases de datos, una entidad es la representación de un objeto o concepto del mundo real que se describe en una base de datos. Las entidades se describen en la estructura de la base de datos empleando un modelo de datos.

## 1.1. `Entidades`

Una entidad es algo similar a un objeto (programación orientada a objetos) y representa algo en el mundo real, incluso algo abstracto. Tienen atributos que son las cosas que los hacen ser una entidad y por convención se ponen en plural.

### Ejemplo de entidad en bases de datos

En la imagen puedes observar como ejemplo que la enidad Laptops posee diferentes atributos como color, pantalla, año, modelo, etc.

<p align="center">
  <img src="https://i.postimg.cc/SRs5kFX8/imagen-2024-06-02-172551749.png" alt="Aquí va el texto del enlace">
</p>

## 1.2. `Atributos`

Son las características o propiedades que describen a la entidad (se encierra en un óvalo). Los atributos se componen de:

1. **Atributos compuestos**: Son aquellos que se dividen en subpartes más pequeñas. Por ejemplo, la dirección de una persona se puede dividir en calle, número, colonia, ciudad, estado y país.

2. **Atributos de llave**: Son aquellos que identifican de manera única a una entidad. Por ejemplo, el número de empleado de una persona.

## 1.3. `Tipos de entidades`

1. **Entidades fuertes**: Son aquellas que existen por sí mismas y no dependen de otra entidad para existir. Por ejemplo, una persona.

2. **Entidades débiles**: Son aquellas que dependen de otra entidad para existir. Por ejemplo, un detalle de una factura.

    - **Identidades debiles por identidad**: Son aquellas que no tienen una llave primaria propia y dependen de otra entidad para existir.
 
    - **Identidades debiles por existencia**: Son aquellas que tienen una llave primaria propia pero dependen de otra entidad para existir. 
## 1.4. `Cómo representar entidades en una base de datos`

Existen varios tipos de notaciones para los modelos entidad relacionamiento. Chen es uno de los más utilizados para diagramar lógicamente la base de datos. 

<p align="center">
  <img src="https://i.postimg.cc/KjHWYqLW/imagen-2024-06-02-172604895.png" alt="Aquí va el texto del enlace">
</p>
--- 


# 2. `Relaciones entre entidades`

Las **relaciones** nos permiten ligar o unir nuestras diferentes entidades y se representan con rombos. Por convención se definen a través de verbos.

Las relaciones tienen una propiedad llamada **`cardinalidad`** y tiene que ver con números. Cuántos de un lado pertenecen a cuántos del otro lado:

## 2.1. Uno a uno `(1:1)` 

- Un registro de una tabla se relaciona con un solo registro de otra tabla.

<p align="center">
  <img src="https://i.postimg.cc/nrpmDpKj/imagen-2024-06-02-180635396.png" alt="Aquí va el texto del enlace">

## 2.2. uno a uno `(0:1)` u `opcional` 

- Un registro de una tabla se relaciona con un solo registro de otra tabla, pero no todos los registros de la tabla 1 tienen una relación con la tabla 2. 

<p align="center">
  <img src="https://i.postimg.cc/ryNxLRcS/imagen-2024-06-02-180747668.png" alt="Aquí va el texto del enlace">

## 2.3. Uno a muchos `(1:N)`

- Un registro de una tabla se relaciona con varios registros de otra tabla.

<p align="center">
  <img src="https://i.postimg.cc/tg6nvY2n/imagen-2024-06-02-180918482.png" alt="Aquí va el texto del enlace">

## 2.4. Uno a mucho `(0:N)` u `opcional`

- Un registro de una tabla se relaciona con varios registros de otra tabla, pero no todos los registros de la tabla 1 tienen una relación con la tabla 2.

<p align="center">
  <img src="https://i.postimg.cc/NMgG8MVc/imagen-2024-06-02-181138893.png" alt="Aquí va el texto del enlace">

## 2.5. Muchos a muchos `(N:M)`

- Varios registros de una tabla se relacionan con varios registros de otra tabla.

<p align="center">
  <img src="https://i.postimg.cc/RV3SL2PN/imagen-2024-06-02-181513030.png" alt="Aquí va el texto del enlace">

## Resumen de las cardinalidades
 
<p align="center">
  <img src="https://i.postimg.cc/vmCLDJSf/imagen-2024-06-02-175728922.png" alt="Aquí va el texto del enlace">
--- 


# 3. `Diagrama entidad relación (DER)`

El diagrama entidad relación es una herramienta que nos permite representar las entidades, atributos y relaciones de una base de datos. Es una representación gráfica de la estructura de una base de datos y esta relacionado estrechamente con lo que se mencionó anteriormente.
--- 


# 4. `Diagrama Fisico: Tipos de datos y constraints`

El diagrama físico es una representación de la estructura de la base de datos en un motor de base de datos específico. En este diagrama se definen los tipos de datos y constraints que se utilizarán en la base de datos.

## 4.1. `Tipos de datos`

Los tipos de datos son las características que definen el tipo de información que se almacenará en una columna de una tabla. Algunos de los tipos de datos más comunes son:

1. **Texto** 
   - **`CHAR(n)`:** Utilizado para almacenar cadenas de texto de longitud fija. 
   
   - **`VARCHAR(n)`:** Utilizado para almacenar cadenas de texto de longitud variable (la mejor practica es no exceder los 255 caracteres).
   
   - **`TEXT`:** Utilizado para almacenar cadenas de texto de longitud variable de gran tamaño.

2. **Números**
   -  **`INTEGER`:** Utilizado para almacenar números enteros.
   
   -  **`BEGINT`:** Utilizado para almacenar números enteros de 8 bits.
   
   -  **`SMALLINT`:** Utilizado para almacenar números enteros de 16 bits.
   
   -  **`DECIMAL(n,s)`:** Utilizado para almacenar números decimales (primero se agrega el n para la cantidad de dígitos y luego la s para la cantidad de decimales).
   
   -  **`NUMERIC(n,s)`:** Utilizado para almacenar números decimales.

3. **Fecha/hora** 
   - **`DATE`:** Utilizado para almacenar fechas.
   
   - **`TIME`:** Utilizado para almacenar horas.
   
   - **`DATETIME`:** Utilizado para almacenar fechas y horas.
   
   - **`TIMESTAMP`:** Utilizado para almacenar fechas y horas con precisión de segundos.
   
4. **Lógicos** 
   - **`BOOLEAN`:** Utilizado para almacenar valores lógicos (verdadero o falso).

## 4.2. `Constraints (Restricciones)`

> [!IMPORTANT]
> 
> Los constraints **son reglas que se aplican a las columnas de una tabla para garantizar la integridad de los datos.** Algunos de los constraints más comunes son:
- **`NOT NULL`:** Indica que la columna no puede tener valores nulos (Por ejemplo, un nombre).

- **`UNIQUE`:** Indica que los valores de la columna deben ser únicos y no se repitan(Por ejemplo, un número de empleado).

- **`PRIMARY KEY`:** Indica que la columna es la llave primaria de la tabla (Por ejemplo, un ID).

- **`FOREIGN KEY`:** Indica que la columna es una llave foránea que hace referencia a otra tabla (Por ejemplo, un ID de otra tabla).

- **`CHECK`:** Indica que los valores de la columna deben cumplir una condición o regla (Por ejemplo, un rango de edad).

- **`DEFAULT`:** Indica el valor por defecto de la columna (Por ejemplo, una fecha de registro).

- **`INDEX`:** Indica que la columna es un índice (Por ejemplo, un índice de búsqueda).
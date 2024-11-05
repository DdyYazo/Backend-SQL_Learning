<div align="center">

# **Introducción a las bases de datos No relacionales**

<p align="center">
  <img src="https://i.postimg.cc/FR1DmpyT/image-1.png" alt="Aquí va el texto del enlace" width="500">
</p>

</div>



# **Tabla de contenido**
- [**Introducción a las bases de datos No relacionales**](#introducción-a-las-bases-de-datos-no-relacionales)
- [**Tabla de contenido**](#tabla-de-contenido)
- [1. **¿Qué son las bases de datos No relacionales?**](#1-qué-son-las-bases-de-datos-no-relacionales)
- [1.1. ***¿Cuales son los tipos de bases de datos NoSQL?***](#11-cuales-son-los-tipos-de-bases-de-datos-nosql)
- [2. **Servicios administrados y jerarquía de bases de datos NoSQL**](#2-servicios-administrados-y-jerarquía-de-bases-de-datos-nosql)
  - [2.1. ***Jerarquía de bases de datos NoSQL mediante el uso de servicios administrados de Google (`Firebase`)***](#21-jerarquía-de-bases-de-datos-nosql-mediante-el-uso-de-servicios-administrados-de-google-firebase)
- [3. **Manejo de modelos de datos en bases de datos NoSQL**](#3-manejo-de-modelos-de-datos-en-bases-de-datos-nosql)
  - [3.1. ***Top level collections con Firebase***](#31-top-level-collections-con-firebase)
    - [3.1.1. **Paso a paso para crear una base de datos en Firestore**](#311-paso-a-paso-para-crear-una-base-de-datos-en-firestore)
  - [3.2. **Creando y borrando documentos en Firestore**](#32-creando-y-borrando-documentos-en-firestore)
  - [3.3. ***`Colecciones` vs `Subcolecciones` en Firestore***](#33-colecciones-vs-subcolecciones-en-firestore)
    - [3.3.1. **Casos de uso de las `colecciones` y `subcolecciones`**](#331-casos-de-uso-de-las-colecciones-y-subcolecciones)
    - [3.3.2. **Ejemplo de uso de `colecciones` y `subcolecciones`**](#332-ejemplo-de-uso-de-colecciones-y-subcolecciones)
  - [3.4. **Casos de uso de las BD NoSQL**](#34-casos-de-uso-de-las-bd-nosql)
  - [](#)

# 1. **¿Qué son las bases de datos No relacionales?**

Las bases de datos NoSQL **a veces llamado “no solo SQL”**, están diseñadas específicamente para modelos de datos específicos y tienen esquemas flexibles para crear aplicaciones modernas. 

- Es una amplia clase de sistemas de gestión de bases de datos que difieren del modelo clásico de **`SGBDR`*** ***(Sistema de Gestión de Bases de Datos Relacionales***) en aspectos importantes, siendo el más destacado que **no usan SQL como lenguaje principal de consultas.**

# 1.1. ***¿Cuales son los tipos de bases de datos NoSQL?***

<div align="center">

| **Tipo de base de datos** | **Descripción** |
|---------------------------|-----------------|
| **`Clave - Valor`** | Son ideales para almacenar y extraer datos con una clave única. Manejan los diccionarios de manera excepcional. <br> *» Las mas comunes*: <br> - **DynamoDB**, <br> - **Cassandra**.|
| **`Basados en documentos`** | Son **una implementación de clave valor que varía en la forma semiestructurada** en que se trata la información. Ideal para almacenar datos como **`JSON` (*JavaScript Object Notation*)** o **`XML`** Probablemente **son las mas utilizadas luego de las SQL.** <br> *» Las mas comunes*: <br> - **MongoDB**, <br> - **Firestore**. |
| **`Basadas en grafos`** | Sirven para entidades que se encuentran interconectadas por múltiples relaciones. ideales para almacenar datos que tienen relaciones complejas. **Usadas para redes neuronales de inteligencia artificial** <br> *» Las mas comunes*: <br> - **Neo4j**, <br> - **TITAN**. |
| **`En memoria`** | Son bases de datos que **almacenan la información en la memoria RAM**. Son muy rápidas y se utilizan para almacenar datos que se necesitan acceder rápidamente. <br> *» Las mas comunes*: <br> - **Redis**, <br> - **Memcached**. |
| **`Optimizadas para búsquedas`** | Son bases de datos que **se utilizan para realizar búsquedas en grandes volúmenes de datos de manera sencilla**. <br> *» Las mas comunes*: <br> - **Elasticsearch**, <br> - **BigQuery**. |


</div>

> [!NOTE]
>
> Aunque surgieron en respuesta a un problema concreto, **se les engloba bajo la misma etiqueta de NoSQL**. Sin embargo, **cada una de ellas tiene sus propias características y ventajas**.


# 2. **Servicios administrados y jerarquía de bases de datos NoSQL**

Las bases de datos NoSQL **tienen una jerarquía de servicios administrados** que permiten a los desarrolladores **elegir el nivel de control que desean tener sobre la base de datos**.

## 2.1. ***Jerarquía de bases de datos NoSQL mediante el uso de servicios administrados de Google (`Firebase`)***

En este caso se utilizan los servicios de **`Firebase` (*Firestore*)** de Google, donde se pueden tercerizar muchos elementos de la base de datos, como la **escalabilidad, la seguridad y la administración de la base de datos**.

- **`Firebase`** es una servicio que ofrece multiples opciones y es muy utilizada para el desarrollo de aplicaciones web y aplicaciones móviles.

- Ofrece dos servicios:
  
  - **`Realtime Database`**: Es una base de datos en tiempo real que permite almacenar y sincronizar datos entre los usuarios en tiempo real.
  
  - **`Cloud Firestore`**: Es una base de datos NoSQL en la nube que permite almacenar y sincronizar datos entre los usuarios en tiempo real.

La jerarquía de datos consta de: 

<p align="center">
  <img src="https://i.postimg.cc/3JcxtP99/image-1.png" alt="Aquí va el texto del enlace" width="450">
</p>
<p align="center">
  <strong>Jerarquía de bases de datos en Firestore</strong>
</p>

1. Primeramente de la **base de datos** como tal
2. Seguido ya no de tablas, sino de **colecciones** 3. Los **documentos** como tal y que correspondería a una **tupla** en una base de datos basada en SQL.

<div align="center">

| **Jerarquía de datos** | **Descripción** |
| ----------------------- | --------------- |
| **`Base de datos`** | Es el contenedor de todos los datos. |
| **`Colección`** | Es igual a las tablas en las bases de datos relacionales. <br> **Son objetos que agrupan (*Documentos*)** la información que se desea guardar. |
| **`Documento`** | **Información que se quiere guardar. Se guarda en un formato muy parecido al formato `JSON`** (**es un lenguaje que se utiliza para comunicarse con diferentes lenguajes o aplicaciones**). Los documentos dentro de ellos contienen datos. |

</div>

# 3. **Manejo de modelos de datos en bases de datos NoSQL**

## 3.1. ***Top level collections con Firebase***

En **`Firebase`** se manejan las colecciones como **`top level collections`**, es decir, **no se pueden anidar colecciones**. El modelo de bases de datos no relacionales es un poco más cercano al mundo real en su comportamiento.

- Las **`top level collections`** son las colecciones que se tienen de inmediato o entrada en el proyecto.

### 3.1.1. **Paso a paso para crear una base de datos en Firestore**

1. Se entra a el sitio oficial de [Firebase](https://firebase.google.com/) con una cuenta de Google.

2. Luego se realiza el proceso para crear un proyecto luego de dar click en **Comenzar**
   - Se da click en, **“Crear un proyecto”**.
   - Se le da un **nombre al proyecto**.
   - Finalmente, dar en continuar. (**Aceptando los términos y condiciones.**)

3. Seguido a esto se elije la zona donde se van a almacenar los datos, preferiblemente que sea una zona cercana (**Por default es USA**), por lo que se vera reflejado en una menor latencia.

4. Finalmente aparecerá la interfaz gráfica de firebase. En primer lugar para crear una base de datos se debe: 
   -  Seleccionar en la barra lateral izquierda la opción de **"Todos los productos"** y luego ubicar la opción de **"Cloud Firestore"**.
   -  Luego de que se cree la DB, estando en la vista de **"Firestore Database"** se pueden crear mas colecciones.

<p align="center">
  <img src="https://i.postimg.cc/WzmHfDBg/image-2.png" alt="Aquí va el texto del enlace" width="450">
</p>
<p align="center">
  <strong>Creando colecciones en Firestore</strong>
</p>

> [!IMPORTANT] 
> 
> - **Una colección no puede existir hasta que se cree un documento.**


## 3.2. **Creando y borrando documentos en Firestore**

> [!NOTE]
>
> Un ID o **`UID` (User ID)** en un documento, **funciona como un N° de serie. Es mejor dejarlo por default y que Google asigne un ID único.**


<div align="center">

| **Tipos de datos en Firestore** | **Descripción** |
|---------------------------------|-----------------|
| **`String`**  | Cualquier tipo de valor alfanumérico (**cadenas de texto**). |
| **`Number`**  | Soporta **enteros (`integers`)** y **floatentes (`floats`)** |
| **`Boolean`** | Los clásicos valores **`True`** y **`False`** |
| **`Map`**     | Permite agregar un documento dentro de otro documento similar a un objeto en `JSON`. |
| **`Array`**   | Permite agregar un conjunto de datos (**soporte `multi type`**) sin nombre e identificador. |
| **`Null`**      | Indica que **no se ha definido un valor**. |
| **`Timestamp`** | Permite almacenar fechas (**guarda el `año`, `mes`, `día `y `hora`**). |
| **`Geopoint`**  | Guarda una localización geográfica (**coordenadas `latitud`-`longitud`**). |
| **`Reference`** | Permite referencia un documento (**relaciona dos documentos, no importa su colección**). |

</div>
<br>
<br>

<p align="center">
  <img src="https://i.postimg.cc/1XbJtR7R/image-2.png" alt="Aquí va el texto del enlace" width="400">
</p>
<p align="center">
  <strong>Representación de campos de tipo `Map` y `Array` en Firestore</strong>
</p>


## 3.3. ***`Colecciones` vs `Subcolecciones` en Firestore***

- La particularidad de las **`top level collections`** o **colecciones** es que **existen en el primer nivel de manera intrínseca**. 

- Por otro lado, las **subcolecciones** ya no vivirán al inicio de la base de datos. 

### 3.3.1. **Casos de uso de las `colecciones` y `subcolecciones`**

Si **se tiene una entidad separada que vas a referenciar desde muchos lugares es recomendado usar un "`top level collection`"**. Por el otro lado **si se necesita hacer algo intrínseco al documento es aconsejable usar "`subcolecciones`"**. 

> [!IMPORTANT]
> 
> - Un **`top level collection` se utilizaria para relaciones de tipo “«agregacion»”**. 
> - Mientras que una **`sub collection` se utilizaria para relaciones tipo “«composicion»”**.

### 3.3.2. **Ejemplo de uso de `colecciones` y `subcolecciones`**
1. Tenemos una base de datos con las colecciones de:

  - **Estudiantes**
  - **Cursos**

Los **Estudiantes** tiene **Cursos** y los **Cursos** tiene **Estudiantes**. Si se elimina un **Curso** los **Estudiantes** no deben ser eliminados. Lo mismo si se elimina un **Estudiante** los **Cursos** no deben ser elimiandos. Esto **es una relacion de «agregacion»**. Aqui **se usaria `top level collection` para **Estudiantes** y **Cursos****.

2. y subcolecciones: 

  - **Notas**. 

 Por otro lado, Los **Estudiantes** tienen **Notas** y las **Notas** pertenecen a un **Estudiante**. Si se elimina un **Estudiante**, tiene sentido eliminar las **Notas**. Esto **es una relacion de «composicion»**. Aqui se usarian las `subcollections`. **El **Estudiante** tendría una `subcollection` de **Notas**.**
<br>
<br>

<p align="center">
  <img src="https://i.postimg.cc/KzhRN6Kq/image-3.png" alt="Aquí va el texto del enlace" width="450">
</p>
<p align="center">
  <strong>Ejemplo de colecciones y subcolecciones en Firestore</strong>
</p>

## 3.4. **Casos de uso de las BD NoSQL**

> Ambos tipos de bases (**`SQL`** y **`NoSQL`**) **cumplen el mismo objetivo, guardar datos**.

> Las bases de datos relacionales **`SQL` están pensadas en hacer "queries"**, mientras que las **`NoSQL` o puntualmente las que estan `basadas en documentos`, están pensadas en mantener el estado de tu app**, es decir, **tenga una optima fluidez y no genere sobrecarga de datos**.


> [!NOTE]
> 
> - **No todas las bases de datos NRDB no están optimizadas para hacer “queries”**, hay algunas que sí, como “`Big Query`" tambien "`Elaticsearch`"" que **permite hacer queries super complejas con respuesta casi en tiempo real** (no es simple, es el `hell brackets`), y no solo para hacer busquedas, tambien en reportería (***Inteligencia de Negocios***) funcionan bastante bien, entre otros usos que se le pueden dar, junto a `Kibana` y `Logstash` u otros. 
> 
> - En `SQL` para reportería se tiene que tener SP y las consultas son lentas, pero cumplen la misma función.

## 
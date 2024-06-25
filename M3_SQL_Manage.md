<div align="center">

# **Primeras consultas SQL y manejo de bases de datos**

</div>

# **Tabla de contenido**
- [**Primeras consultas SQL y manejo de bases de datos**](#primeras-consultas-sql-y-manejo-de-bases-de-datos)
- [**Tabla de contenido**](#tabla-de-contenido)
- [1. **Sublenguajes de SQL**](#1-sublenguajes-de-sql)
- [2. **DDL (Data Definition Language)**](#2-ddl-data-definition-language)
  - [2.1. **`Objetos de DDL`**](#21-objetos-de-ddl)
  - [2.2. **`DDL "CREATE"`**](#22-ddl-create)
  - [2.3. **`DDL OBJECT -> CREATE VIEW`**](#23-ddl-object---create-view)
  - [2.4. **`DDL "ALTER"`**](#24-ddl-alter)
    - [2.4.1. *` ALTER TABLE .."ADD"`*](#241--alter-table-add)
    - [2.4.2. *` ALTER TABLE .."MODIFY"`*](#242--alter-table-modify)
    - [2.4.3. *` ALTER TABLE .."CHANGE"`*](#243--alter-table-change)
    - [2.4.4. *` ALTER TABLE .."DROP"`*](#244--alter-table-drop)
  - [2.5. **`DDL "DROP"`**](#25-ddl-drop)
- [2. **DML (Data Manipulation Language)**](#2-dml-data-manipulation-language)
  - [2.1. **`DML "SELECT"`**](#21-dml-select)
  - [2.2. **`DML "INSERT"`**](#22-dml-insert)
  - [2.3. **`DML "UPDATE"`**](#23-dml-update)
    - [2.3.1. *`UPDATES INSEGUROS`*](#231-updates-inseguros)
  - [2.4. **`DML "DELETE"`**](#24-dml-delete)
    - [2.4.1. *`DELETES INSEGUROS`*](#241-deletes-inseguros)
- [3. **DCL (Data Control Language) y TCL (Transaction Control Language)**](#3-dcl-data-control-language-y-tcl-transaction-control-language)
  - [3.1. **`DCL`**](#31-dcl)
  - [3.2. **`TCL`**](#32-tcl)
- [4. **¿Qué tan Standard es SQL?**](#4-qué-tan-standard-es-sql)
  - [4.1. **`_Ejemplo`**](#41-_ejemplo)
- [5. **Creando Tablas**](#5-creando-tablas)
  - [5.1. **`TABLAS INDEPENDIENTES (SIN FOREIGN KEYS)`**](#51-tablas-independientes-sin-foreign-keys)
  - [5.2. **`TABLAS DEPENDIENTES (CON FOREIGN KEYS)`**](#52-tablas-dependientes-con-foreign-keys)
    - [5.2.1. *`FOREIGN KEY OPTIONS`*](#521-foreign-key-options)
  - [5.3. **`TABLAS TRANSITIVAS (MUCHOS A MUCHOS)`**](#53-tablas-transitivas-muchos-a-muchos)
  - [**\_Revisar las consultas en el script *platziblog.sql* para ver las consultas de creación de las tablas**](#_revisar-las-consultas-en-el-script-platziblogsql-para-ver-las-consultas-de-creación-de-las-tablas)

# 1. **Sublenguajes de SQL**

Es improtante comprender que dentro del SQL como lenguaje de domio específico podemos hallar grandes sublenguajes:

<p align="center">
  <img src="https://i.postimg.cc/zBMS37WJ/imagen-2024-06-18-203017980.png" alt="Aquí va el texto del enlace" width="450">
</p>
<p align="center">
  <strong>Sublenguajes de SQL</strong>
</p>

# 2. **DDL (Data Definition Language)**

Permite crear y modificar la estructura de una base de datos. Posee los siguientes comandos:

<div align="center">


| Comando | Descripción |
| ------- | ----------- |
| **`CREATE`** | Permite crear una tabla |
| **`ALTER`** | Permite modificar una tabla |
| **`DROP`** | Permite eliminar una tabla |
| **`TRUNCATE`** | Permite eliminar todos los registros de una tabla |
| **`COMMENT`** | Permite agregar comentarios a una tabla |
| **`RENAME`** | Permite renombrar una tabla |

</div>

## 2.1. **`Objetos de DDL`**

Cuando se crea una tabla en la base de datos con la consulta
```sql
CREATE SCHEMA 'nameTable';
```
Los **objetos que se manipulan con el lengueje DDL** son:

- **`Database`:** Es el contenedor de todos los objetos de la base de datos.

- **`Table`:** Es un objeto que almacena los datos en filas y columnas.

- **`View`:** Es una tabla virtual que se crea a partir de una consulta SQL.

## 2.2. **`DDL "CREATE"`**

Permite crear una tabla en la base de datos. La estructura de la tabla se define con los campos que la componen.

```sql
CREATE TABLE 'nameTable' (
  'column1' 'datatype' 'constraint',
  'column2' 'datatype' 'constraint',
  ...
  'columnN' 'datatype' 'constraint'
);
```

- **EJEMPLO:**

```sql
CREATE TABLE database.people (
    person_id INT AUTO_INCREMENT NOT NULL,
    last_name VARCHAR(255) NULL,
    first_name VARCHAR(255) NULL,
    address VARCHAR(255) NULL,
    city VARCHAR(255) NULL,
    PRIMARY KEY (`person_id`) 
);
```

## 2.3. **`DDL OBJECT -> CREATE VIEW`**

Una vista en SQL es una tabla virtual que se crea a partir de una consulta SQL. No almacena datos en sí misma, sino que se crea a partir de una consulta a una o más tablas.

```sql
CREATE VIEW 'nameView' AS
SELECT 'column1', 'column2', ..., 'columnN'
FROM 'nameTable'
WHERE 'condition';
```
- **Ejemplo:**
  
```sql
CREATE VIEW database.people AS
SELECT name, age
FROM people 
WHERE age > 18;
```

## 2.4. **`DDL "ALTER"`**

Permite modificar la estructura de una tabla en la base de datos, teniendo en cuenta las siguientes opciones:

### 2.4.1. *` ALTER TABLE .."ADD"`*

- Permite agregar una columna a una tabla existente.

```sql
ALTER TABLE 'nameData'.'nameTable'
ADD COLUMN 'column' 'datatype' 'constraint';
```

- **EJEMPLO:**

```sql
ALTER TABLE database.people
ADD COLUMN email VARCHAR(255) NULL;
```

### 2.4.2. *` ALTER TABLE .."MODIFY"`*

- Permite modificar el tipo de dato de una columna en una tabla existente.

```sql
ALTER TABLE 'nameData'.'nameTable'
MODIFY COLUMN 'column' 'datatype' 'constraint';
```

- **EJEMPLO:**

```sql
ALTER TABLE database.people
MODIFY COLUMN email VARCHAR(255) NOT NULL;
```

### 2.4.3. *` ALTER TABLE .."CHANGE"`*

- Permite cambiar tanto el nombre como el tipo de dato de una columna en una tabla existente.

```sql
ALTER TABLE 'nameData'.'nameTable'
CHANGE COLUMN 'oldColumn' 'newColumn' 'datatype' 'constraint';
```

- **EJEMPLO:**

```sql
ALTER TABLE database.people
CHANGE COLUMN email email_address VARCHAR(255) NOT NULL;
```

### 2.4.4. *` ALTER TABLE .."DROP"`*

- Permite eliminar una columna de una tabla existente.

```sql
ALTER TABLE 'nameData'.'nameTable'
DROP COLUMN 'column';
```

- **EJEMPLO:**

```sql
ALTER TABLE database.people
DROP COLUMN email_address;
```

## 2.5. **`DDL "DROP"`**

Permite eliminar una tabla de la base de datos.

```sql
DROP TABLE 'nameTable';
DROP DATABASE 'nameDatabase';
```

- **EJEMPLO:**

```sql
DROP TABLE database.people;
DROP DATABASE database;
```

> [!CAUTION]
>
> **`Nota:`** Al eliminar una tabla o incluso una base de datos, se eliminan todos los datos y la estructura de la información almacenada en ella.**Es un comando que se debe utilizar con precaución.**
---


# 2. **DML (Data Manipulation Language)**

A diferencia de **`DDL`** que **esta orientado a la estrucutra de la BD**, el **`DML`** **esta orientado al contenido de la BD**. 

Permite: 
- **Recuperar**
- **Almacenar**
- **Modificar**
- **Elimina**r
- **Insertar** y **Actualizar** datos de una base de datos. Posee los siguientes comandos:

<div align="center">


| Comando | Descripción |
| ------- | ----------- |
| **`SELECT`** | Permite consultar datos de una tabla que satisfagan un criterio determinado. |
| **`INSERT`** | Permite insertar datos en una unica operación dentro de una tabla |
| **`UPDATE`** | Permite modificar los valores de los campos específicos de una tabla |
| **`DELETE`** | Permite eliminar datos de una tabla |

</div>

## 2.1. **`DML "SELECT"`**

Permite consultar datos de una tabla que satisfagan un criterio determinado.

```sql
SELECT 'column1', 'column2', ..., 'columnN'
FROM 'nameTable'
WHERE 'condition';
```

- **EJEMPLO:**

```sql
SELECT first_name, last_name
FROM database.people
WHERE age > 18;
```

## 2.2. **`DML "INSERT"`**

Permite insertar datos en una tabla en una única operación.

```sql
INSERT INTO 'nameTable' ('column1', 'column2', ..., 'columnN')
VALUES ('value1', 'value2', ..., 'valueN');
```

- **EJEMPLO:**

```sql
INSERT INTO database.people (first_name, last_name, age)
VALUES ('John', 'Doe', 25),
        ('Jane', 'Doe', 22),
        ('Alice', 'Smith', 30);
```

> [!NOTE]
>
> Si sucede el caso que insertamos datos sin especificar todos los campos de la tabla seleccionada y **alguno de los campos que no este entre los seleccionados este declarado como **`NOT NULL`** por defecto, se generará un error.**


## 2.3. **`DML "UPDATE"`**

Permite modificar los valores de los campos específicos de una tabla.

```sql
UPDATE 'nameTable'
SET 'column1' = 'value1', 'column2' = 'value2', ..., 'columnN' = 'valueN'
WHERE 'condition';
```

- **EJEMPLO:**

```sql
UPDATE database.people
SET age = 26, city = 'New York'
WHERE person_id = 1;
```

### 2.3.1. *`UPDATES INSEGUROS`*

- **`UPDATE`** sin **`WHERE`**:
  
```sql
UPDATE database.people
SET age = 26;
```

- **`UPDATE`** con un **`WHERE`** masivo:

```sql
UPDATE people 
 SET first_name = 'Juan' 
 WHERE city = 'Merida';
```

## 2.4. **`DML "DELETE"`**

Permite eliminar datos de una tabla.

```sql
DELETE FROM 'nameTable'
WHERE 'condition';
```

- **EJEMPLO:**

```sql
DELETE FROM database.people
WHERE person_id = 1;
```

### 2.4.1. *`DELETES INSEGUROS`*

- **`DELETE`** sin **`WHERE`**:

```sql
DELETE FROM database.people;
```

# 3. **DCL (Data Control Language) y TCL (Transaction Control Language)**

## 3.1. **`DCL`**

Permite crear roles, permisos e integridad referencial, así como el control al acceso a la base de datos.


<div align="center">

| Comando | Descripción |
| ------- | ----------- |
| **`GRANT`** | Permite otorgar permisos a los usuarios |
| **`REVOKE`** | Permite revocar permisos a los usuarios |

</div>

## 3.2. **`TCL`**

Permite administrar diferentes transacciones que ocurren dentro de una base de datos.

<div align="center">


| Comando | Descripción |
| ------- | ----------- |
| **`COMMIT`** | Permite confirmar una transacción |
| **`ROLLBACK`** | Permite deshacer una transacción |
| **`SAVEPOINT`** | Permite establecer un punto de guardado en una transacción |

</div>

# 4. **¿Qué tan Standard es SQL?**

La utilidad más grande de **SQL** fue unificar la forma en la que pensamos y hacemos preguntas a un repositorio de datos. Ahora que nacen nuevas bases de datos igualmente siguen tomando elementos de SQL. Podemos afirmar que: 

- **SQL** unificó la manera en que sea hacen preguntas a un repositorio de datos. 

- **Se convirtió en un standard util a la hora de usar bases de datos.**

- Existen otros manejadores de datos como **Oracle** o **PostgreSQL**. Sin embargo, si escribimos en lenguaje SQL todos los manejadores funcionaran de manera similar.

## 4.1. **`_Ejemplo`** 

**`DDL`** y **`DML`** son exactamente las mismas para distintos manejadores de base de datos que tengan el standard **SQL**, existes algunos cambios sutiles que mas son funcionamiento interno del manejador de DB, por este motivo se puede ejecutar estos scripts por ejemplo en **PostgresSQL** y en **MySQL**

# 5. **Creando Tablas**

## 5.1. **`TABLAS INDEPENDIENTES (SIN FOREIGN KEYS)`**

Se empieza a plasmar la **BD de Platziblog** segun el **Diagrama Físico**. 

> [!TIP]
> 
> **Una buena práctica es comenzar creando las entidades que no tienen una `llave foránea`**. A estas tablas se les denomina, ***tablas independientes***. Generalmente **en los nombres de bases de datos se evita usar eñes o acentos para evitar problemas en los manejadores de las bases de datos.**

## 5.2. **`TABLAS DEPENDIENTES (CON FOREIGN KEYS)`**

A diferencia de las **tablas independientes**, las **tablas dependientes** son aquellas que tienen una `llave foránea` que las relaciona con otra tabla.

- **Ejemplo**

```sql
  CREATE TABLE posts (
    id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    fecha_publicacion TIMESTAMP ,
    contenido TEXT NOT NULL,
    status CHAR(8) DEFAULT 'activo',
    user_id INT NOT NULL,
    categoria_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES usuarios(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id) ON DELETE NO ACTION ON UPDATE NO ACTION
);
```
### 5.2.1. *`FOREIGN KEY OPTIONS`*

<img align="right" width="200px" src="https://i.postimg.cc/kXbBKrdz/imagen-2024-06-25-131531287.png" style="margin-left: 20px" >

- **`ON UPDATE`:** Significa que si se actualiza un usuario, se actualiza el post asociado a ese usuario.

- **`ON DELETE`:** Significa que si se elimina un usuario, se elimina el post asociado a ese usuario.
romperá la relación.
<br>
<br>

<div align="center">

| Valores | Descripción |
| ------- | ----------- |
| **`CASCADE`** | Si se actualiza/elimina un registro de la tabla padre (usuarios), se actualizan/eliminan los registros de la tabla hija (todos los post relacionados). |
| **`RESTRICT`** | No se permite actualizar/eliminar un registro de la tabla padre (usuarios) si hay registros relacionados en la tabla hija (post relacionados)
| **`SET NULL`** | Si se actualiza/elimina un registro de la tabla padre (usuarios), se establece el valor de la columna de la tabla hija (posts relacionados) en `NULL`. |
| **`NO ACTION`** | No hara nada si se actualiza/elimina un registro de la tabla padre (usuarios). |

</div>

## 5.3. **`TABLAS TRANSITIVAS (MUCHOS A MUCHOS)`**

Las tablas transitivas sirven como puente para unir dos tablas. No tienen contenido semántico. 

- **Ejemplo**

```sql
CREATE TABLE post_etiqueta (
    id_post_etiqueta INT NOT NULL AUTO_INCREMENT,s
    post_id INT NOT NULL,
    etiqueta_id INT NOT NULL,
    PRIMARY KEY (id_post_etiqueta),
    FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    FOREIGN KEY (etiqueta_id) REFERENCES etiquetas(id) ON DELETE NO ACTION ON UPDATE NO ACTION
);
```

> [!IMPORTANT]
> 
> Dentro de los clientes graficos como **Workbench** existe una opición llamada **Reverse Engineer** en la pestaña de **`Database`** la cual, nos reproduce **el esquema** del cual nos basamos para crear nuestras tablas. **Es útil cuando llegas a un nuevo trabajo y quieres entender cuál fue la mentalidad que tuvieron al momento de crear las bases de datos**.

<p align="center">
  <img src="https://i.postimg.cc/6QCYb6GZ/imagen-2024-06-25-145112176.png" alt="Aquí va el texto del enlace" width="400">
</p>
<p align="center">
  <strong>Esquema grafico de Reverse Enginner de la base de datos Platziblog</strong>
</p>

## **_Revisar las consultas en el script *[platziblog.sql](./sql/platziblog.sql)* para ver las consultas de creación de las tablas**
<div align="center">

# **Bases de datos en la vida real**

<p align="center">
  <img src="https://i.postimg.cc/FR1DmpyT/image-1.png" alt="Aquí va el texto del enlace" width="500">
</p>

</div>



# **Tabla de contenido**
- [**Bases de datos en la vida real**](#bases-de-datos-en-la-vida-real)
- [**Tabla de contenido**](#tabla-de-contenido)
- [1. **Las bases de datos en la vida real**](#1-las-bases-de-datos-en-la-vida-real)
- [2. **BigData**](#2-bigdata)
- [3. **Data warehouse**](#3-data-warehouse)
  - [3.1 **Usos escenciales del Data Warehouse**](#31-usos-escenciales-del-data-warehouse)
  - [3.2. **Diferencia entre Big Data y Data Warehouse**](#32-diferencia-entre-big-data-y-data-warehouse)
  - [3.3. **Imagenes representativas del Data Warehouse**](#33-imagenes-representativas-del-data-warehouse)
- [4. **Data Mining**](#4-data-mining)
- [5. **ETL**](#5-etl)
  - [5.1. **Casos de uso de ETL**](#51-casos-de-uso-de-etl)
- [5.2. **ETL y su relacion con el Data Pipelines**](#52-etl-y-su-relacion-con-el-data-pipelines)
- [6. **Bussiness Intelligence**](#6-bussiness-intelligence)
- [7. **Machine Learning**](#7-machine-learning)
- [8. **Data Science**](#8-data-science)

# 1. **Las bases de datos en la vida real**

Hoy en dia, se utilizan diversos tipos de bases de datos segun el problema que se quiera resolver:

* **Las bases de datos relacionales**, durante mucho tiempo, fueron utilizadas para resolver todo tipo de situaciones, pero al aumentar enormemente el numero de datos a manejar, se volveron ineficientes en muchos casos.
  
  * Es en este punto que para datos historicos, se requerian queries complejas utilizando **bigquery** optimizado para **datawherehouse**.

* **Firestore o MongoDB** nos permiten obtener los datos actuales de la aplicacion de manera simple. Sin embargo, no nos permite hacer, por ejemplo, queries muy complejos.
  
* En una misma disciplina, es probable que haya que utilizar mas de un tipo de bases de datos.
  
  * Por ejemplo, puedes usar **dos bases de datos en un mismo proyecto:**
    * **Guardar datos de mongo**
    * **Convertirlos pasarlos a bigquery**
    *  Hacer **analisis sobre ellos**.

# 2. **BigData**

**Big Data** es un concepto que **nace de la necesidad de manejar grandes cantidades de datos**. La tendencia comenzó con compañías como *YouTube* al tener la necesidad de guardar y consultar mucha información de manera rápida. Es un gran movimiento que consiste en el uso de diferentes tipos de bases de datos.

* Un ejemplo es **cassandra** pero tiene ciertos tipos de desventaja, 
  
  * Las llaves estan predefinidas y no hay manera de cruzar los datos utilizando **JOINS**
  
  * No es tan facil sacar todos los datos con una sola clave
  
* **su ventaja manejar datos masivos a gran velocidad**
<br>
<br>

<p align="center">
  <img src="https://i.postimg.cc/qR6cqhZL/imagen-2025-01-19-170147386.png" alt="Aquí va el texto del enlace" width="450">
</p>
<p align="center">
  <strong>Representación actual del BigData</strong>
</p>

# 3. **Data warehouse**

**Data Warehouse** (que se puede interpretar como *Bodegas*) trata de **guardar cantidades masivas de datos para la posteridad**.

> Data Warehouse **es un archivo historico**, **archivo muerto**, en otra base de datos. 

- Allí se guarda todo lo que no está viviendo en la aplicación pero es necesario tenerlo.
- Debe servir para guardar datos por un largo periodo de tiempo y estos datos se deben poder usar para poder encontrar cuestiones interesantes para el negocio. 

**Ejemplo**

- Google usa **BigTable**, usa una sola tabla, pero no sirve tanto para hacer consultas. 

## 3.1 **Usos escenciales del Data Warehouse**

Sirve para dos actividades principales:
  
  - Guardar una gran cantidad de datos de forma **"eterna"**
  
  - Poder extraer los datos para hacer analitica (estudiar los datos para alguna necesidad que surja para el negocio).

## 3.2. **Diferencia entre Big Data y Data Warehouse**
> [!IMPORTANT] 
>
> 1. **Data Warehouse**: Supongamos que está la biblioteca central, donde se guardan todos los documentos históricos existentes para consultarlos de vez en cuando, ese seria el Data Warehouse. 
>
> 2. **Big Data**: Ahora imagínate esa misma biblioteca pero está tiene una cantidad masiva de libros que no son históricos, sino actuales, que te sirven y los puedes consultar más a menudo en comparación con el caso de los libros históricos de años muy pasados, ese seria el Big Data.
<br>
<br>

<div align="center">

## 3.3. **Imagenes representativas del Data Warehouse**

|  |  |
| --- | --- |
| <img aling="center" src="https://i.postimg.cc/jd3jggjD/imagen-2025-01-19-171453019.png" width="250px"> | <img aling="center" src="https://i.postimg.cc/PxHfp0SR/imagen-2025-01-19-171751625.png" width="250px"> |

</div>

# 4. **Data Mining**

El **Data Mining** se dedica a:

- **Minar datos**, a extraerlos de donde sea que estén (archivos muertos, base de datos actual, etc…) y hacer sentido de ellos para darles un uso (volver a guardarlos de una manera que sea útil para el negocio).

  - Pueden ser datos que no tengan la mejor estructura, no esten normalizados, no tienen relación, pero que se pueden convertir en algo útil.

La capacidad predictiva del data mining ha cambiado el diseño de las estrategias empresariales. **Ahora se puede entender el presente para anticiparse al futuro**. Estos son algunos ejemplos de data mining en la industria actual:

> [!NOTE]
> 
> Surge al mismo tiempo que el **Data Warehouse**, **ETL** y **Business Intelligence** y su relacion se debe a que estos problemas no se veian atacados históricamente.

<div align="center">

| **Areas** | **Descripción** |
| --- | --- |
| **Marketing** | La minería de datos se utiliza para **explorar bases de datos cada vez mayores y mejorar la segmentación del mercado**. Analizando las relaciones entre parámetros como edad de los clientes, género, gustos, etc., es posible adivinar su comportamiento para dirigir campañas personalizadas de fidelización o captación. El data mining en marketing predice también qué usuarios pueden darse de baja de un servicio, qué les interesa según sus búsquedas o qué debe incluir una lista de correo para lograr una tasa de respuesta mayor. |
| **Comercio minorista** | Los supermercados, por ejemplo, emplean los patrones de compra conjunta para identificar asociaciones de productos y decidir cómo situarlos en los diferentes pasillos y estanterías de los lineales. El data mining detecta además qué ofertas son las más valoradas por los clientes o incrementa la venta en la cola de caja. |
| **Banca y finanzas** | Los bancos recurren a la minería de datos para entender mejor los riesgos del mercado. Es habitual que se aplique a la calificación crediticia (rating) y a sistemas inteligentes antifraude para analizar transacciones, movimientos de tarjetas, patrones de compra y datos financieros de los clientes. El data mining también permite a la banca conocer más sobre nuestras preferencias o hábitos en internet para optimizar el retorno de sus campañas de marketing, estudiar el rendimiento de los canales de venta o gestionar las obligaciones de cumplimiento de las regulaciones. |
| **Telecomunicaciones** | Las compañías de telecomunicaciones utilizan el data mining para **predecir la rotación de clientes** y **mejorar la calidad del servicio**. Analizan los registros de llamadas, los datos de facturación y los registros de uso de la red para identificar patrones de comportamiento y predecir cuándo un cliente está a punto de darse de baja. |
| **Medicina** | La minería de datos favorece diagnósticos más precisos. Al contar con toda la información del paciente —historial, examen físico y patrones de terapias anteriores— se pueden prescribir tratamientos más efectivos. También posibilita una gestión más eficaz, eficiente y económica de los recursos sanitarios al identificar riesgos, predecir enfermedades en ciertos segmentos de la población o pronosticar la duración del ingreso hospitalario. Detectar fraudes e irregularidades y estrechar vínculos con los pacientes al ahondar en el conocimiento de sus necesidades son también ventajas de emplear el data mining en medicina. |
| **Televisión y radio** | Las cadenas de televisión y radio utilizan el data mining para **analizar las preferencias de los espectadores y oyentes**. Conocer qué programas son los más vistos o escuchados, qué franjas horarias son las más populares o qué contenidos generan más interacción en redes sociales permite a las emisoras ajustar su programación y publicidad para aumentar la audiencia y la rentabilidad. |

</div>

> [!NOTE]
>
> **Data mining**, consiste en **torturar los datos hasta que confiesen**

# 5. **ETL**

**ETL** son las siglas de 

- **Extract**
- **Transform**
- **Load**

(extraer, transformar y cargar). 

- Se trata de tomar datos de archivos muertos y convertirlos en algo que sea de utilidad para el negocio. 

- También ayuda a **tomar los datos vivos de la aplicación**, **transformarlos** y **guardarlos en un data warehouse** periódicamente.

## 5.1. **Casos de uso de ETL**

Sirve de 2 formas particulares para obtener valor de los datos en bruto.

1. Para extraer data muerta de un Data Warehouse y realizar diferentes procesos con ella (transformarla, calcularla, limpiarla, e.t.c) para obtener valor de ella. 

2. Para pasar información viva de la aplicación con sus estados actuales, y luego de un tiempo definido, realizar esta tecnica de ETL para transformar la información y luego almacenarla en un Data Warehouse

<br>
<br>

<p align="center">
  <img src="https://i.postimg.cc/cL1bHh7B/imagen-2025-01-19-174452398.png" alt="Aquí va el texto del enlace" width="450">
</p>
<p align="center">
  <strong>Proceso de ETL</strong>
</p>

# 5.2. **ETL y su relacion con el Data Pipelines**

Data Pipeline es un concepto que se relaciona con ETL, pero es un poco más amplio.

- **ETL** es un proceso que se encarga de extraer, transformar y cargar datos de un lugar a otro
- **Data Pipeline** es un concepto más amplio que incluye el ETL, pero también incluye la idea de que los datos se mueven de un lugar a otro de manera automática.

- **Ejemplo del DATA PIPELINE**:

  - **Extraer datos de una base de datos**
  - **Transformarlos**
  - **Cargarlos en otra base de datos**
  - **Ejecutar un modelo de machine learning**
  - **Enviar un correo electrónico con los resultados**

<br>
<br>

<p align="center">
  <img src="https://i.postimg.cc/X742HLP6/imagen-2025-01-19-175002560.png" alt="Aquí va el texto del enlace" width="450">
</p>
<p align="center">
  <strong>Representación de un Data Pipeline</strong>
</p>

# 6. **Bussiness Intelligence**

Business Intelligence es una parte muy importante de las carreras de datos ya que es el punto final del manejo de estos. 

- Su razón de ser es **tener la información lista, clara y que tenga todos los elementos para tomar decisiones en una empresa**. Es necesario tener una buena sensibilidad por entender el negocio, sus necesidades y la información que puede llevar a tomar decisiones en el momento adecuado al momento de realizar business intelligence.

- Se vale de todas las tecnicas anteriormente mencionadas (Data Warehouse, Data Mining, ETL, Big Data) para poder tener la información lista para tomar decisiones.

# 7. **Machine Learning**

Machine Learning tiene significados que varían. Es una serie de técnicas que involucran la inteligencia artificial y la detección de patrones. Machine learning para datos tiene un gran campo de acción y es un paso más allá del business intelligence. Nos ayuda a hacer modelos que encuentran patrones fortuitos encontrando correlaciones inesperadas. Tiene dos casos de uso particulares: Clasificación y Predicción.

| **Conceptos** | **Descripción** |
| --- | --- |
| **IA** | 	Abarca a machine learning y deep learning y busca eliminar al humano en la creación de algoritmos y que todo ese proceso lo haga una computadora. |
| **Machine Learning** | 	Crea modelo y al señarle te encontrada modelos fortuitos, cuando le des una mar de datos él te va encontrar patrones que no sabías que existían. |
| **Deep Learning** | 	Le busca sentido a los datos, es un paso más allá del machine learning. |

# 8. **Data Science**

Data Science es aplicar todas las técnicas de procesamiento de datos. En su manera más pura tiene que ver con gente con un background de estadísticas y ciencias duras.

Es aplicar todo lo que hemos visto, tecnicas de **ETL, Data Mining, Business Intelligence**. Aunque esta **mas dirigida a personas con background de estadisticas**, hoy en dia tambien participan personas con el perfil de Data Engineering. 

- Al hacer Data Science estamos aplicando todo lo visto en los temas anteriores, no solo a nivel tecnico sino que desarrollamos la experiencia y conocimientos sobre las distintas tecnologias, en que parte del desarrollo de nuestro proyecto tenemos que utilizarlas, etc. Con lo cual el Data Science juega el papel de manager dentro de un equipo de profesionales de datos.

<br>
<br>

<p align="center">
  <img src="https://i.postimg.cc/wvzJqfL6/imagen-2025-01-19-180322395.png" alt="Aquí va el texto del enlace" width="450">
</p>
<p align="center">
  <strong>Diferencia entre Data Analyst y Data Scientist</strong>
</p>


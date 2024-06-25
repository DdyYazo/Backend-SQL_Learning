<div align="center">

# **API's REST**

</div>

# **Tabla de contenido**
- [**API's REST**](#apis-rest)
- [**Tabla de contenido**](#tabla-de-contenido)
- [1. **Qué son las API's**](#1-qué-son-las-apis)
  - [1.1. **`Tipos de API's`**](#11-tipos-de-apis)
  - [1.2. **`Funciones clave de una API`**](#12-funciones-clave-de-una-api)
- [2. **Qué son las API's REST**](#2-qué-son-las-apis-rest)

# 1. **Qué son las API's**

Las API's (Application Programming Interface) son un conjunto de reglas y definiciones que permiten que diferentes aplicaciones se comuniquen entre sí. Las API's permiten que una aplicación acceda a los datos y funcionalidades de otra aplicación de forma segura y controlada.

- Utiliza una lista de rutas conocidas como **endpoints** para acceder a los recursos de la aplicación. 

- La solicitud se realiza a través de una **URL** y se envía a través de un método **HTTP** (**`GET`**, **`POST`**, **`PUT`**, **`DELETE`**), para luego ser empaquetada y retornada en un formato de intercambio de datos **(`JSON`**, **`XML`**).

## 1.1. **`Tipos de API's`**

- **API's REST**: Utilizan el protocolo **HTTP** para realizar las solicitudes y respuestas. Son fáciles de usar y permiten una comunicación rápida y eficiente entre aplicaciones.

- **API's SOAP**: Utilizan el protocolo **SOAP** (Simple Object Access Protocol) para realizar las solicitudes y respuestas. Son más complejas de usar y requieren una mayor configuración, pero son más seguras y confiables que las API's REST.

- **API's GraphQL**: Utilizan el lenguaje de consulta **GraphQL** para realizar las solicitudes y respuestas. Son más flexibles y permiten a los clientes solicitar solo la información que necesitan, lo que las hace más eficientes que las API's REST y SOAP.

## 1.2. **`Funciones clave de una API`**

1. **`Recepción de solicitudes`**: La API recibe las solicitudes de los clientes y las procesa para devolver la información solicitada. Pueden contener información, parámetros y métodos específicos para realizar la solicitud.

2. **`Procesamiento de solicitudes`**: La API procesa las solicitudes de recibidas, verifica la autenticidad y autorización del cliente y luego, pasan la solicitud al componente backend correspondiente.

3. **`Envío de respuestas`**: La API envía las respuestas al cliente en un formato de intercambio de datos, como **`JSON`** o **`XML`**. Las respuestas pueden contener información, mensajes de error o confirmación de la solicitud.

4. **`Gestión de errores`**: La API maneja los errores que puedan ocurrir durante el proceso de solicitud y respuesta. Pueden devolver mensajes de error, códigos de estado y sugerencias para solucionar el problema.

<p align="center">
  <img src="https://i.postimg.cc/TY21dHkZ/image-8.png" alt="Aquí va el texto del enlace" width="400">
</p>
<p align="center">
    <strong>Significado de una API y API REST</strong>
</p>

# 2. **Qué son las API's REST**

Las API's REST (Representational State Transfer) son un tipo de API que utiliza el protocolo **HTTP** para realizar las solicitudes y respuestas. Son fáciles de usar y permiten una comunicación rápida y eficiente entre aplicaciones.
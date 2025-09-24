# Pruebas Automatizadas de Signup y Login - Demoblaze

Este proyecto implementa pruebas automatizadas para los endpoints de registro (signup) y login de la API de Demoblaze utilizando Karate DSL y Java. Permite validar el correcto funcionamiento de los servicios REST de autenticación de la plataforma.

## Tecnologías y versiones utilizadas
- **Java:** 17
- **Maven:** 3.8+
- **Karate DSL:** 1.5.2.RC5
- **JUnit 5**

## Estructura del proyecto
```
APIs_Karate/
├── pom.xml
├── src/
│   ├── main/
│   └── test/
│       ├── java/
│       │   └── features/
│       │       └── SignupLoginRunner.java
│       └── resources/
│           └── features/
│               └── signup_login.feature
├── readme.txt
├── conclusiones.txt
└── target/
    └── karate-reports/
        └── karate-summary.html
```

## Instalación y ejecución
1. **Requisitos previos:**
   - Java 17
   - Maven 3.8+
   - Git (opcional)

2. **Clona el repositorio o descarga el proyecto.**
   
git clone https://github.com/Nathyyyyyyy/Ejercicio-de-APIS---Nathaly-Moncayo.git

3. **Ejecuta las pruebas:**
   ```
   mvn test
   ```
   Los reportes se generarán en `target/karate-reports/karate-summary.html`.

## Descripción de las pruebas
Se automatizan los siguientes escenarios sobre la API de Demoblaze:
- Registro de un usuario nuevo
- Intento de registro de usuario ya existente
- Login con usuario y contraseña correctos
- Login con usuario y/o contraseña incorrectos

Las pruebas utilizan usuarios aleatorios para evitar conflictos y son totalmente reproducibles.

## Ejemplo de ejecución
Al ejecutar las pruebas, verás en consola y en el reporte HTML los resultados de cada escenario, incluyendo las respuestas reales de la API.

## Reportes
El reporte principal se encuentra en:
```
target/karate-reports/karate-summary.html
```
Ábrelo en tu navegador para ver el detalle de cada escenario.

## Créditos
- Autor: Nathaly Moncayo
- Contacto: nathalymoncayo9@gmail.com

---

> Proyecto para evaluación técnica - Automatización de pruebas REST con Karate DSL.


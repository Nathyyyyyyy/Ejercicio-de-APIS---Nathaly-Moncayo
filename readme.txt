INSTRUCCIONES DE EJECUCIÓN

1. Requisitos previos:
   - Java 17
   - Maven 3.8 o superior
   - Git (opcional, para clonar el repositorio)

2. Instalación:
   - Clona este repositorio o descarga el proyecto.
   - Verifica que Java y Maven estén correctamente configurados en tu sistema.

3. Ejecución de pruebas:
   - Abre una terminal en la raíz del proyecto.
   - Ejecuta el comando: mvn test
   - Los reportes se generarán automáticamente en: target/karate-reports/karate-summary.html

4. Estructura del proyecto:
   - src/test/resources/features/signup_login.feature: Escenarios de prueba Karate.
   - src/test/java/features/SignupLoginRunner.java: Runner JUnit5 para Karate.
   - pom.xml: Dependencias y configuración de Maven.

5. Notas importantes:
   - Las pruebas generan usuarios aleatorios para evitar conflictos de duplicidad.
   - Los endpoints probados son: https://api.demoblaze.com/signup y /login
   - El reporte HTML contiene el detalle de cada escenario y las respuestas de la API.

VERSIONES UTILIZADAS:
- Java 17
- Maven 3.8+
- Karate DSL 1.5.2.RC5

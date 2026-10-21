# Automatización de API CoffeeShop - Tosca Cloud

## Descripción del Proyecto
Este proyecto contiene la automatización de pruebas para la API REST de Tricentis Tosca Cloud CoffeeShop. El framework está diseñado bajo un patrón de Screenplay adaptado, separando las interacciones HTTP base (Tasks) de los flujos de negocio (Features). La estructura permite inyección dinámica de datos, validación de esquemas JSON y aserciones de estado HTTP para asegurar la calidad de los endpoints.

## Flujos Implementados
Las pruebas de negocio se encuentran ubicadas en la ruta `src/test/java/api/features/`. Se han implementado los siguientes flujos:
* **`create-coffee-test.feature`**: Valida la creación de un nuevo recurso mediante el método POST y comprueba su estructura de respuesta.
* **`update-coffee-test.feature`**: Valida la actualización de campos específicos de un registro existente mediante el método PUT.
* **`delete-coffee-test.feature`**: Elimina un registro previamente creado (DELETE) y comprueba que el recurso ya no sea accesible (status 204).
* **`coffee-crud-test.feature`**: Escenario End-to-End (E2E) que orquesta de forma secuencial la creación, consulta, actualización, eliminación y validación final de inexistencia del recurso.

## Tecnologías Utilizadas
* **Karate Framework (v1.4.1)**: Motor principal de automatización de API que combina pruebas, aserciones y reportes.
* **Gherkin**: Lenguaje de dominio (DSL) estructurado con Given/When/Then para la legibilidad de los casos de prueba.
* **JavaScript**: Utilizado para configuraciones globales en `karate-config.js` y evaluación dinámica de variables en línea.
* **Java (v21)**: Lenguaje base sobre el cual se ejecuta el motor de Karate.
* **Maven (v3.x)**: Herramienta de gestión de dependencias y orquestación de la ejecución de pruebas.

## Cómo Ejecutar el Proyecto

### Ejecución Local
Para ejecutar este proyecto en tu máquina local, sigue estos pasos:

1. Clona el repositorio en tu máquina:
   ```bash
   git clone <URL_DEL_REPOSITORIO> 
   ```
2. Navega hasta la carpeta raíz del proyecto:
   ```bash
   cd reto-api-karate 
   ```
3. Ejecuta las pruebas utilizando Maven. Puedes correr todo el proyecto o filtrar por etiquetas (tags):
   ```bash
   mvn -q clean test -Dkarate.options="--tags @crud" 
   ```
4. Al finalizar, el reporte detallado se generará automáticamente. Ábrelo en tu navegador desde la siguiente ruta: target/karate-reports/karate-summary.html

### Ejecución en GitHub Actions (CI/CD)
Este proyecto cuenta con un pipeline configurado para levantar un entorno aislado con Podman, ejecutar las pruebas bajo demanda y publicar los resultados automáticamente. Para ejecutar las pruebas en la nube, sigue estos pasos:

1. Ingresa a la página principal de este repositorio en GitHub y haz clic en la pestaña **Actions**.
2. En el panel lateral izquierdo, selecciona el flujo de trabajo llamado **API Tests - Podman & GitHub Pages**.
3. En la parte derecha de la pantalla, haz clic en el botón **Run workflow**.
4. Se desplegará un menú interactivo. En el campo **Flujo de prueba a ejecutar**, selecciona la etiqueta de la prueba que deseas correr (por ejemplo: `@crud`, `@create`, `@get`, `@update` o `@delete`).
5. Haz clic en el botón verde **Run workflow** para iniciar el contenedor.
6. Una vez que finalice la ejecución (marcada con un check verde), haz clic sobre su nombre en la lista de flujos recientes para entrar a los detalles.
7. En la nueva pantalla, asegúrate de estar ubicado en la sección **Summary** del menú lateral izquierdo.
8. En el panel central, debajo del nombre del pipeline, ubica la caja del trabajo llamado **test-and-deploy**.
9. Haz clic en el enlace azul generado en esa caja (ej. `https://...github.io/...`) para visualizar directamente el reporte HTML interactivo.


## 👨‍💻 Autor

**Camilo Chaparro** | *SDET & Agile Tester*

Diseñando y orquestando ecosistemas de automatización de pruebas escalables.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/camilo-chaparro-738228141)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/lcamiloch)
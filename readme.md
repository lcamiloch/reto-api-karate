# Automatización de API CoffeeShop - Tosca Cloud

Este proyecto contiene la automatización de pruebas para la API REST de Tricentis Tosca Cloud CoffeeShop. El framework está diseñado bajo un patrón de Screenplay adaptado, separando las interacciones HTTP base (Tasks) de los flujos de negocio (Features). La estructura permite inyección dinámica de datos, validación de esquemas JSON y aserciones de estado HTTP para asegurar la calidad de los endpoints.

## 🧩 Flujos Implementados

Las pruebas de negocio se encuentran ubicadas en la ruta `src/test/java/api/features/`. Se han implementado los siguientes flujos:
- **`create-coffee-test.feature`**: Valida la creación de un nuevo recurso mediante el método POST y comprueba su estructura de respuesta.
- **`get-coffee-test.feature`**: Valida la obtención de un recurso previamente creado mediante el método GET y verifica la integridad de los datos obtenidos.
- **`update-coffee-test.feature`**: Valida la actualización de campos específicos de un registro existente mediante el método PUT.
- **`delete-coffee-test.feature`**: Elimina un registro previamente creado (DELETE) y comprueba que el recurso ya no sea accesible (status 204).
- **`coffee-crud-test.feature`**: Escenario End-to-End (E2E) que orquesta de forma secuencial la creación, consulta, actualización, eliminación y validación final de inexistencia del recurso.

## 🛠️ Stack Tecnológico

-   **Lenguaje:** Java (JDK 21)
-   **Gestor de Dependencias:** Maven
-   **Framework Core:** Karate Framework (v1.4.1)
-   **Motor BDD:** Gherkin
-   **Configuraciones dinámicas:** JavaScript

## 📂 Estructura del Proyecto

```text
reto-api-karate
├── .github/workflows     # Pipelines de CI/CD para GitHub Actions
├── src/test/java/api
│   ├── data              # Archivos de datos o variables externas
│   ├── features          # Escenarios de prueba escritos en Gherkin (.feature)
│   ├── payloads          # Cuerpos de petición (JSON) para solicitudes HTTP
│   ├── schemas           # Esquemas JSON para validación de estructuras de respuesta
│   ├── tasks             # Funciones reutilizables e interacciones HTTP base
│   ├── TestRunner.java   # Clase principal para la ejecución de pruebas
│   ├── karate-config.js  # Configuración global y variables de entorno de Karate
│   └── logback-test.xml  # Configuración de los niveles de logs en consola
├── .gitignore            # Archivos y directorios ignorados por Git
├── Containerfile         # Archivo de configuración para construir la imagen de Podman
└── pom.xml               # Configuración de dependencias y plugins de Maven
```

## 🚀 Pre-requisitos

Para ejecutar este proyecto localmente, necesitas tener instalado:
-   [Java Development Kit (JDK) 21](https://adoptium.net/) o superior.
-   [Apache Maven](https://maven.apache.org/) (Configurado en el PATH del sistema).
-   [Git](https://git-scm.com/) (Para clonar el repositorio).

## ⚙️ Cómo Ejecutar el Proyecto

### Ejecución Local

Sigue estos pasos para obtener el código, ejecutar las pruebas en tu máquina y visualizar los resultados:

1. Clona el repositorio en tu máquina:
   ```bash
   git clone https://github.com/lcamiloch/reto-api-karate.git 
   ```
2. Navega hasta la carpeta raíz del proyecto:
   ```bash
   cd reto-api-karate 
   ```
3. Ejecuta las pruebas utilizando Maven. Puedes correr todo el proyecto o filtrar por etiquetas (tags):
   ```bash
   mvn clean test 
   mvn clean test -Dkarate.options="--tags @create"
   mvn clean test -Dkarate.options="--tags @get"
   mvn clean test -Dkarate.options="--tags @update"
   mvn clean test -Dkarate.options="--tags @delete"
   mvn clean test -Dkarate.options="--tags @crud"
   ```
4. Al finalizar, el reporte detallado se generará automáticamente. Ábrelo en tu navegador desde la siguiente ruta: `target/karate-reports/karate-summary.html`

### Ejecución en GitHub Actions (CI/CD)

1. Ingresa a la página principal de este repositorio en GitHub y haz clic en la pestaña Actions.
2. En el panel lateral izquierdo, selecciona el flujo de trabajo llamado:
   ```text
   API Tests - Karate
   ```
3. En la parte derecha de la pantalla, haz clic en el botón Run workflow.
4. Se desplegará un menú interactivo. En el campo Flujo de prueba a ejecutar, selecciona la etiqueta de la prueba que deseas correr. Las opciones disponibles son:
   ```text
   @crud, @create, @get, @update, @delete
   ```
5. Haz clic en el botón verde Run workflow para iniciar el contenedor con Podman.
6. Una vez que finalice la ejecución (marcada con un check verde), haz clic sobre su nombre en la lista de flujos recientes para entrar a los detalles.
7. En la nueva pantalla, asegúrate de estar ubicado en la sección Summary del menú lateral izquierdo.
8. En el panel central, debajo del nombre del pipeline, ubica la caja del trabajo llamado:
   ```text
   test-and-deploy
   ```
9. Haz clic en el enlace azul generado en esa caja para visualizar directamente el reporte HTML interactivo de Karate:
   ```text
   https://<tu-usuario>.github.io/reto-api-karate/
   ```

---

## 👨‍💻 Autor

**Camilo Chaparro** | *SDET & Agile Tester*

Diseñando y orquestando ecosistemas de automatización de pruebas escalables.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/camilo-chaparro-738228141)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/lcamiloch)